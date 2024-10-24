import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit._(super.initialState);

  void setInProgress({List<WoFormInputError> errors = const []}) {
    if (!isClosed) emit(InProgressStatus(errors: errors));
  }

  void _setSubmitting() {
    if (!isClosed) emit(const SubmittingStatus());
  }

  void _setSubmitError({Object? error, StackTrace? stackTrace}) {
    if (!isClosed) {
      emit(SubmitErrorStatus(error: error, stackTrace: stackTrace));
    }
  }

  void _setSubmitSuccess() {
    if (!isClosed) emit(const SubmitSuccessStatus());
  }
}

class HydratedWoFormStatusCubit extends WoFormStatusCubit
    with HydratedMixin<WoFormStatus> {
  HydratedWoFormStatusCubit._(String hydratationId, super.initialState)
      : assert(
          hydratationId.isNotEmpty,
          'hydratationId must not be an empty string',
        ),
        id = '$hydratationId-WoFormStatusCubit',
        super._() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  WoFormStatus? fromJson(Map<String, dynamic> json) =>
      WoFormStatus.fromJson(json);

  @override
  Map<String, dynamic>? toJson(WoFormStatus state) => state.toJson();
}

/// This cubit references the paths of all the locked inputs.
class WoFormLockCubit extends Cubit<Set<String>> {
  WoFormLockCubit._() : super({});

  bool inputIsLocked({required String path}) => state.contains(path);

  void lockInput({required String path}) {
    if (!isClosed) emit(Set<String>.from(state)..add(path));
  }

  void unlockInput({required String path}) {
    if (!isClosed) emit(Set<String>.from(state)..remove(path));
  }
}

class HydratedWoFormLockCubit extends WoFormLockCubit
    with HydratedMixin<Set<String>> {
  HydratedWoFormLockCubit._(String hydratationId)
      : assert(
          hydratationId.isNotEmpty,
          'hydratationId must not be an empty string',
        ),
        id = '$hydratationId-WoFormLockCubit',
        super._() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  Set<String>? fromJson(Map<String, dynamic> json) {
    final data = json['locks'];
    return data is Iterable<String> ? data.toSet() : null;
  }

  @override
  Map<String, dynamic>? toJson(Set<String> state) => {'locks': state.toList()};
}

typedef WoFormValues = Map<String, dynamic>;

class WoFormValuesCubit extends Cubit<WoFormValues> {
  WoFormValuesCubit._(
    this._root,
    this._statusCubit,
    this._lockCubit,
    this._canSubmit, {
    required this.onSubmitting,
  })  : _tempSubmitDatas = [],
        super(_root.getInitialValues());

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

  void addTemporarySubmitData({
    required Future<void> Function() onSubmitting,
    required String path,
  }) =>
      _tempSubmitDatas.add((onSubmitting, path));

  void clearValues() => emit(_root.getInitialValues());

  void clearTemporarySubmitData() => _tempSubmitDatas.clear();

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) {
    // Can't edit a form while submitting it
    if (_statusCubit.state is SubmittingStatus) return;

    if (_lockCubit.inputIsLocked(path: path)) return;

    final newMap = Map<String, dynamic>.from(state);
    newMap[path] = value;

    emit(newMap);

    if (switch (updateStatus) {
      UpdateStatus.no => false,
      UpdateStatus.ifPathAlreadyVisited => _visitedPaths.contains(path),
      UpdateStatus.yes => true,
    }) {
      if (updateStatus != UpdateStatus.ifPathAlreadyVisited) {
        markPathAsVisited(path: path);
      }

      _updateErrors();
    }
  }

  void _updateErrors() => _statusCubit.setInProgress(
        errors: _visitedPaths
            .map(
              (path) => _root
                  .getChild(
                    path: path,
                    values: state,
                  )
                  ?.getErrors(
                    values: state,
                    parentPath: path.parentPath,
                    recursive: false,
                  ),
            )
            .whereNotNull()
            .expand((list) => list)
            .toList(),
      );

  Iterable<String> get _visitedPaths =>
      state['__wo_reserved_visited_paths'] as Iterable<String>? ?? {};

  /// Marks the node at this path as visited by the user.
  /// Before submission, only visited nodes show errors.
  void markPathAsVisited({required String path}) {
    final newMap = Map<String, dynamic>.from(state);
    final visitedPaths = Set<String>.from(
      newMap['__wo_reserved_visited_paths'] as Iterable<String>? ?? {},
    );
    if (visitedPaths.add(path)) {
      newMap['__wo_reserved_visited_paths'] = visitedPaths;
      emit(newMap);
      _updateErrors();
    }
  }

  /// Marks the nodes at these paths as visited by the user.
  /// Before submission, only visited nodes show errors.
  void markPathsAsVisited({required Iterable<String> paths}) {
    final newMap = Map<String, dynamic>.from(state);
    final visitedPaths = Set<String>.from(
      newMap['__wo_reserved_visited_paths'] as Iterable<String>? ?? {},
    )..addAll(paths);
    // Do not store a set in values, or the hydratation won't work
    newMap['__wo_reserved_visited_paths'] = visitedPaths.toList();
    emit(newMap);
  }

  void removeTemporarySubmitData({required String path}) =>
      _tempSubmitDatas.removeWhere((data) => data.$2 == path);

  Future<void> submit(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final node = currentNode;

    markPathsAsVisited(
      paths: node
          .getAllInputPaths(
            values: state,
            parentPath: currentPath.parentPath,
          )
          // Remove root path
          .whereNot((path) => path.isEmpty),
    );

    final errors =
        node.getErrors(values: state, parentPath: currentPath.parentPath);
    if (errors.isNotEmpty) {
      return _statusCubit.setInProgress(errors: errors.toList());
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

class HydratedWoFormValuesCubit extends WoFormValuesCubit
    with HydratedMixin<WoFormValues> {
  HydratedWoFormValuesCubit._(
    String hydratationId,
    super._root,
    super._statusCubit,
    super._lockCubit,
    super._canSubmit, {
    required super.onSubmitting,
  })  : assert(
          hydratationId.isNotEmpty,
          'hydratationId must not be an empty string',
        ),
        id = '$hydratationId-WoFormValuesCubit',
        super._() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  WoFormValues? fromJson(Map<String, dynamic> json) {
    final jsonT = Map<String, dynamic>.from(json);

    for (final entry in json.entries) {
      if (entry.value is! List) continue; // SelectInput's value is a list
      final values = entry.value as List;
      if (values.firstOrNull is String) {
        continue; // id of selected value or SelectStringInput
      }

      final path = entry.key;
      final node = _root.getChild(path: path, values: state);
      if (node is! SelectInput) continue;
      final fromJsonT = node.fromJsonT;
      if (fromJsonT == null) continue;

      jsonT[path] = values.map(fromJsonT).toList();
    }

    return jsonT;
  }

  @override
  Map<String, dynamic>? toJson(WoFormValues state) {
    final json = Map<String, dynamic>.from(state);

    for (final entry in state.entries) {
      if (entry.value is! List) continue; // SelectInput's value is a list
      final values = entry.value as List;
      if (values.firstOrNull is String) {
        continue; // id of selected value or SelectStringInput
      }

      final path = entry.key;
      final node = _root.getChild(path: path, values: state);
      if (node is! SelectInput) continue;
      final toJsonT = node.toJsonT;
      if (toJsonT == null) continue;

      json[path] = values.map(toJsonT).toList();
    }

    return json;
  }
}

typedef OnSubmitErrorDef = void Function(
  BuildContext context,
  SubmitErrorStatus errorStatus,
);

/// Use this if you don't want to trigger error validations
/// or if you want to keep the previous status.
enum UpdateStatus { no, ifPathAlreadyVisited, yes }

class WoForm extends StatelessWidget {
  WoForm({
    required List<WoFormNodeMixin> children,
    ExportSettings? exportSettings,
    WoFormUiSettings? uiSettings,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.showInitialErrors = false,
    this.pageBuilder,
    this.hydratationId = '',
    this.rootKey,
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
    this.showInitialErrors = false,
    this.pageBuilder,
    this.hydratationId = '',
    this.rootKey,
    super.key,
  });

  final RootNode root;
  final Future<bool> Function(BuildContext context)? canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  final OnSubmitErrorDef? onSubmitError;
  final void Function(BuildContext context)? onSubmitSuccess;
  final bool showInitialErrors;
  final WidgetBuilderDef? pageBuilder;

  /// If not empty, this form will be locally persistent, using HydratedCubit.
  final String hydratationId;
  final RootKey? rootKey;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: root),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => hydratationId.isEmpty
                ? WoFormStatusCubit._(
                    const InProgressStatus(),
                  )
                : HydratedWoFormStatusCubit._(
                    hydratationId,
                    const InProgressStatus(),
                  ),
          ),
          BlocProvider(
            create: (context) => hydratationId.isEmpty
                ? WoFormLockCubit._()
                : HydratedWoFormLockCubit._(hydratationId),
          ),
          BlocProvider(
            create: (context) {
              final cubit = hydratationId.isEmpty
                  ? WoFormValuesCubit._(
                      context.read(),
                      context.read(),
                      context.read(),
                      canSubmit ?? (_) async => true,
                      onSubmitting: onSubmitting,
                    )
                  : HydratedWoFormValuesCubit._(
                      hydratationId,
                      context.read(),
                      context.read(),
                      context.read(),
                      canSubmit ?? (_) async => true,
                      onSubmitting: onSubmitting,
                    );
              if (showInitialErrors) {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  cubit
                    ..markPathsAsVisited(paths: cubit.state.keys)
                    .._updateErrors();
                });
              }
              return cubit;
            },
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
          child: pageBuilder == null
              ? root.toWidget(key: rootKey)
              : Builder(key: rootKey, builder: pageBuilder!),
        ),
      ),
    );
  }
}

class RootKey<T extends State<StatefulWidget>> extends GlobalKey<T> {
  // ignore: prefer_const_constructors_in_immutables , never use const for this class
  RootKey() : super.constructor();

  @override
  String toString() => 'WoFormRootKey()';

  WoFormValues? get values => currentContext?.read<WoFormValuesCubit>().state;
}
