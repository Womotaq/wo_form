import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusCubit extends HydratedCubit<WoFormStatus> {
  WoFormStatusCubit._(String hydratationId, super.initialState)
      : id = '$hydratationId-WoFormStatusCubit';

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  WoFormStatus? fromJson(Map<String, dynamic> json) =>
      id.isEmpty ? null : WoFormStatus.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WoFormStatus state) =>
      id.isEmpty ? null : state.toJson();

  void setInProgress() => emit(const InProgressStatus());
  void setInvalidValues() => emit(const InvalidValuesStatus());
  void _setSubmitting() => emit(const SubmittingStatus());
  void _setSubmitError({Object? error, StackTrace? stackTrace}) =>
      emit(SubmitErrorStatus(error: error, stackTrace: stackTrace));
  void _setSubmitSuccess() => emit(const SubmitSuccessStatus());
}

/// This cubit references the paths of all the locked inputs.
class WoFormLockCubit extends HydratedCubit<Set<String>> {
  WoFormLockCubit._(String hydratationId)
      : id = '$hydratationId-WoFormLockCubit',
        super({});

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  Set<String>? fromJson(Map<String, dynamic> json) {
    if (id.isEmpty) return null;
    final data = json['locks'];
    return data is Iterable<String> ? data.toSet() : null;
  }

  @override
  Map<String, dynamic>? toJson(Set<String> state) =>
      id.isEmpty ? null : {'locks': state.toList()};

  bool inputIsLocked({required String path}) => state.contains(path);

  void lockInput({required String path}) =>
      emit(Set<String>.from(state)..add(path));

  void unlockInput({required String path}) =>
      emit(Set<String>.from(state)..remove(path));
}

typedef WoFormValues = Map<String, dynamic>;

class WoFormValuesCubit extends HydratedCubit<WoFormValues> {
  WoFormValuesCubit._(
    String hydratationId,
    this._root,
    this._statusCubit,
    this._lockCubit,
    this._canSubmit, {
    required this.onSubmitting,
  })  : id = '$hydratationId-WoFormValuesCubit',
        _tempSubmitDatas = [],
        super(_root.getInitialValues());

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  WoFormValues? fromJson(Map<String, dynamic> json) => id.isEmpty ? null : json;

  @override
  Map<String, dynamic>? toJson(WoFormValues state) => id.isEmpty ? null : state;

  final RootNode _root;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final Future<bool> Function(BuildContext context) _canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  final List<(Future<void> Function() onSubmitting, String path)>
      _tempSubmitDatas;

  String get currentPath => _tempSubmitDatas.lastOrNull?.$2 ?? '';

  WoFormNodeMixin get currentNode {
    final tempSubmitData = _tempSubmitDatas.lastOrNull;
    if (tempSubmitData == null) return _root;

    try {
      return _root.getChild(
        path: tempSubmitData.$2,
        values: state,
      )!;
    } catch (e) {
      throw Exception('No node found at path ${tempSubmitData.$2}');
    }
  }

  // --

  void clearValues() => emit(_root.getInitialValues());

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
  }) {
    // Can't edit a form while submitting it
    if (_statusCubit.state is SubmittingStatus) return;

    if (_lockCubit.inputIsLocked(path: path)) return;

    final newMap = Map<String, dynamic>.from(state);
    newMap[path] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) {
      _statusCubit.setInProgress();
    }

    emit(newMap);
  }

  void clearTemporarySubmitData() => _tempSubmitDatas.clear();

  void removeLastTemporarySubmitData() =>
      _tempSubmitDatas.isEmpty ? null : _tempSubmitDatas.removeLast();

  void setTemporarySubmitData({
    required Future<void> Function() onSubmitting,
    required String path,
  }) =>
      _tempSubmitDatas.add((onSubmitting, path));

  Future<void> submit(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final node = currentNode;

    final errors =
        node.getErrors(values: state, parentPath: currentPath.parentPath);
    if (errors.isNotEmpty) {
      return _statusCubit.setInvalidValues();
    }

    _statusCubit._setSubmitting();

    final oldLocks = _lockCubit.state;

    for (final path in currentNode.getAllInputPaths(
      values: state,
      parentPath: currentPath.parentPath,
    )) {
      _lockCubit.lockInput(path: path);
    }

    try {
      final tempSubmitData = _tempSubmitDatas.lastOrNull;
      if (tempSubmitData != null) {
        await tempSubmitData.$1();
        _statusCubit.setInProgress();
      } else {
        if (await _canSubmit(context)) {
          await onSubmitting?.call(_root, state);
          _statusCubit._setSubmitSuccess();
        } else {
          _statusCubit.setInProgress();
        }
      }
    } catch (e, s) {
      _statusCubit._setSubmitError(error: e, stackTrace: s);
    }

    if (_root.uiSettings.canModifySubmittedValues ?? true) {
      for (final path in _lockCubit.state) {
        if (!oldLocks.contains(path)) {
          _lockCubit.unlockInput(path: path);
        }
      }
    }
  }
}

typedef OnSubmitErrorDef = void Function(
  BuildContext context,
  SubmitErrorStatus errorStatus,
);

class WoForm extends StatelessWidget {
  WoForm({
    required List<WoFormNodeMixin> children,
    ExportSettings? exportSettings,
    WoFormUiSettings? uiSettings,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.initialStatus = const InitialStatus(),
    this.pageBuilder,
    this.hydratationId = '',
    super.key,
  }) : root = RootNode(
          exportSettings: exportSettings ?? const ExportSettings(),
          uiSettings: uiSettings ?? const WoFormUiSettings(),
          children: children,
        );

  const WoForm.root({
    required this.root,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.initialStatus = const InitialStatus(),
    this.pageBuilder,
    this.hydratationId = '',
    super.key,
  });

  final RootNode root;
  final Future<bool> Function(BuildContext context)? canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  final OnSubmitErrorDef? onSubmitError;
  final void Function(BuildContext context)? onSubmitSuccess;
  final WoFormStatus initialStatus;
  final WidgetBuilderDef? pageBuilder;

  /// If not empty, this form will be locally persistent, using HydratedCubit.
  final String hydratationId;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: root),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                WoFormStatusCubit._(hydratationId, initialStatus),
          ),
          BlocProvider(
            create: (context) => WoFormLockCubit._(hydratationId),
          ),
          BlocProvider(
            create: (context) => WoFormValuesCubit._(
              hydratationId,
              context.read(),
              context.read(),
              context.read(),
              canSubmit ?? (_) async => true,
              onSubmitting: onSubmitting,
            ),
          ),
        ],
        child: BlocListener<WoFormStatusCubit, WoFormStatus>(
          listener: (context, status) {
            switch (status) {
              case SubmitSuccessStatus():
                onSubmitSuccess?.call(context);
              case SubmitErrorStatus():
                (onSubmitError ?? WoFormTheme.of(context)?.onSubmitError)
                    ?.call(context, status);
              default:
            }
          },
          child: pageBuilder?.call(context) ?? root.toWidget(),
        ),
      ),
    );
  }
}
