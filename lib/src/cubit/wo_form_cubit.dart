import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit._(super.initialState);

  void setInProgress({
    List<WoFormInputError> errors = const [],
    String? firstInvalidInputPath,
  }) {
    if (!isClosed) {
      emit(InProgressStatus(
        errors: errors,
        firstInvalidInputPath: firstInvalidInputPath,
      ));
    }
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

class WoFormValuesCubit extends Cubit<WoFormValues> {
  WoFormValuesCubit._(
    this._root,
    this._statusCubit,
    this._lockCubit,
    this._canSubmit, {
    required this.onStatusUpdate,
    required this.onSubmitting,
    Map<String, dynamic> initialValues = const {},
  })  : _tempSubmitDatas = [],
        super(_root.getInitialValues()..addAll(initialValues)) {
    _initialValues = Map.from(state);
  }

  final RootNode _root;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final Future<bool> Function(BuildContext context) _canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  late Map<String, dynamic> _initialValues;
  final Map<String, FocusNode> _focusNodes = {};

  /// Called each time a value changed, accordingly to [UpdateStatus].
  final Future<void> Function(RootNode root, WoFormValues values)?
      onStatusUpdate;
  final List<(Future<void> Function() onSubmitting, String path)>
      _tempSubmitDatas;

  /// Return true if the current state is equal to the initial state.
  bool get isPure => mapEquals(
        _initialValues..remove(_visitedPathsKey),
        state..remove(_visitedPathsKey),
      );

  String get currentPath => _tempSubmitDatas.lastOrNull?.$2 ?? '';

  WoFormNodeMixin get currentNode {
    final tempSubmitData = _tempSubmitDatas.lastOrNull;
    if (tempSubmitData == null) return _root;

    try {
      return _root.getChild(
        path: tempSubmitData.$2,
        values: state,
      )!;
    } catch (_) {
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

  FocusNode _createFocusNode(String path) {
    _focusNodes[path] ??= FocusNode();
    return _focusNodes[path]!;
  }

  void _disposeFocusNode(String path) {
    final focusNode = _focusNodes.remove(path);
    if (focusNode != null) focusNode.dispose();
  }

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) {
    // Can't edit a form while submitting it
    if (_statusCubit.state is SubmittingStatus) return;

    path = state.getKey(path);

    if (_lockCubit.inputIsLocked(path: path)) return;

    final wasVisited = _visitedPaths.contains(path);

    final shouldUpdateStatus = switch (updateStatus) {
      UpdateStatus.no => false,
      UpdateStatus.ifPathAlreadyVisited => wasVisited,
      UpdateStatus.ifPathAlreadyVisitedOrElseWithoutErrorUpdate ||
      UpdateStatus.yes =>
        true,
    };

    final newMap = Map<String, dynamic>.from(state);
    newMap[path] = value;

    // If the status isn't updated and we are still at initial state, then the
    // initial state should be updated to match the current state.
    // This allows a FutureNode to update its value without changing isPure.
    if (!shouldUpdateStatus && isPure) {
      _initialValues = Map.from(newMap);
    }

    emit(newMap);

    if (shouldUpdateStatus) {
      final shouldUpdateErrors = switch (updateStatus) {
        UpdateStatus.no => false,
        UpdateStatus.ifPathAlreadyVisited ||
        UpdateStatus.ifPathAlreadyVisitedOrElseWithoutErrorUpdate =>
          wasVisited,
        UpdateStatus.yes => true,
      };

      if (shouldUpdateErrors) {
        if (!wasVisited) {
          markPathAsVisited(path: path);
        } else {
          _updateErrors();
        }
      } else {
        _statusCubit.setInProgress();
      }

      onStatusUpdate?.call(_root, state);
    }
  }

  /// Update errors of visited paths
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
            .nonNulls
            .expand((list) => list)
            .toList(),
      );

  static const _visitedPathsKey = '/__wo_reserved_visited_paths';
  Iterable<String> get _visitedPaths =>
      state[_visitedPathsKey] as Iterable<String>? ?? {};

  /// Marks the node at this path as visited by the user.
  /// Before submission, only visited nodes show errors.
  ///
  /// Return false if the path was already visited.
  bool markPathAsVisited({required String path}) {
    final newMap = Map<String, dynamic>.from(state);
    final visitedPaths = Set<String>.from(
      newMap[_visitedPathsKey] as Iterable<String>? ?? {},
    );
    if (visitedPaths.add(path)) {
      newMap[_visitedPathsKey] = visitedPaths.toList();
      emit(newMap);
      _updateErrors();
      return true;
    } else {
      return false;
    }
  }

  /// Marks the nodes at these paths as visited by the user.
  /// Before submission, only visited nodes show errors.
  void markPathsAsVisited({required Iterable<String> paths}) {
    final newMap = Map<String, dynamic>.from(state);
    final visitedPaths = Set<String>.from(
      newMap[_visitedPathsKey] as Iterable<String>? ?? {},
    )..addAll(paths);
    // Do not store a set in values, or the hydratation won't work
    newMap[_visitedPathsKey] = visitedPaths.toList();
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
      final nodeToFocus = _focusNodes[errors.first.path];
      if (nodeToFocus != null) {
        nodeToFocus
          ..requestFocus()
          ..nextFocus();
      }

      return _statusCubit.setInProgress(
        errors: errors.toList(),
        firstInvalidInputPath: errors.first.path,
      );
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
    required super.onStatusUpdate,
    required super.onSubmitting,
    super.initialValues = const {},
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
/// TODO : documentation
enum UpdateStatus {
  no,
  ifPathAlreadyVisited,
  ifPathAlreadyVisitedOrElseWithoutErrorUpdate,
  yes,
}

enum ShowErrors {
  /// Always show errors.
  ///
  /// TODO : change ?
  /// Concretely, this marks all the paths as visited, right from the start.
  always,

  /// Only show errors of visited paths. Note that, after the user submits the
  /// form, all paths become visited, revealing all the errors.
  progressively,
}

class WoForm extends StatelessWidget {
  WoForm({
    required List<WoFormNodeMixin> children,
    ExportSettings? exportSettings,
    WoFormUiSettings? uiSettings,
    this.onStatusUpdate,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.showErrors = ShowErrors.progressively,
    this.pageBuilder,
    this.initialValues = const {},
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
    this.onStatusUpdate,
    this.canSubmit,
    this.onSubmitting,
    this.onSubmitError,
    this.onSubmitSuccess,
    this.showErrors = ShowErrors.progressively,
    this.pageBuilder,
    this.initialValues = const {},
    this.hydratationId = '',
    this.rootKey,
    super.key,
  });

  final RootNode root;

  /// Called each time a value changed, accordingly to [UpdateStatus].
  final Future<void> Function(RootNode root, WoFormValues values)?
      onStatusUpdate;
  final Future<bool> Function(BuildContext context)? canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  final OnSubmitErrorDef? onSubmitError;
  final void Function(BuildContext context)? onSubmitSuccess;

  /// By default, errors will only be shown after the user visited a node or
  /// tried to submit the form.
  final ShowErrors showErrors;
  final WidgetBuilderDef? pageBuilder;
  final Map<String, dynamic> initialValues;

  /// If not empty, this form will be locally persistent, using HydratedCubit.
  /// LATER : issue, how to modify an in-production corrupted data ?
  final String hydratationId;
  final RootKey? rootKey;

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: root),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => hydratationId.isEmpty
                  ? WoFormStatusCubit._(
                      const InitialStatus(),
                    )
                  : HydratedWoFormStatusCubit._(
                      hydratationId,
                      const InitialStatus(),
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
                        onStatusUpdate: onStatusUpdate,
                        onSubmitting: onSubmitting,
                        initialValues: initialValues,
                      )
                    : HydratedWoFormValuesCubit._(
                        hydratationId,
                        context.read(),
                        context.read(),
                        context.read(),
                        canSubmit ?? (_) async => true,
                        onStatusUpdate: onStatusUpdate,
                        onSubmitting: onSubmitting,
                        initialValues: initialValues,
                      );
                if (showErrors == ShowErrors.always) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    cubit
                      // Mark all paths as visited
                      ..markPathsAsVisited(paths: cubit.state.keys)
                      // Then update the errors of all visited paths
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

class WoFormNodeFocusManager extends StatefulWidget {
  const WoFormNodeFocusManager({
    required this.path,
    required this.child,
    super.key,
  });

  final String path;
  final Widget child;

  @override
  State<WoFormNodeFocusManager> createState() => _WoFormNodeFocusManagerState();
}

class _WoFormNodeFocusManagerState extends State<WoFormNodeFocusManager> {
  late FocusNode focusNode;
  // Can't read it in dispose() because the context is not available anymore
  late WoFormValuesCubit valuesCubit;

  @override
  void initState() {
    super.initState();

    valuesCubit = context.read<WoFormValuesCubit>();
    focusNode = valuesCubit._createFocusNode(widget.path);
  }

  @override
  void dispose() {
    valuesCubit._disposeFocusNode(widget.path);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // FocusTraversalGroup allows to WoFormValuesCubit to focus the Focus widget
    // and the switch to the next focusable widget availible.
    return FocusTraversalGroup(
      child: Focus(
        focusNode: focusNode,
        skipTraversal: true,
        onFocusChange: (value) {
          if (value == false) {
            context
                .read<WoFormValuesCubit>()
                .markPathAsVisited(path: widget.path);
          }
        },
        child: widget.child,
      ),
    );
  }
}
