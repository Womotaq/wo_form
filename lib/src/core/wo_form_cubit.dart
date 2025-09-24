part of 'wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit(super.initialState);

  void setInProgress({
    List<WoFormInputError> errors = const [],
    String? firstInvalidInputPath,
  }) {
    if (!isClosed) {
      emit(
        InProgressStatus(
          errors: errors,
          firstInvalidInputPath: firstInvalidInputPath,
        ),
      );
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

class WoFormValuesCubit extends Cubit<WoFormValues> {
  WoFormValuesCubit._(
    this._root,
    this._statusCubit,
    this._lockCubit,
    this._canSubmit, {
    required this.onStatusUpdate,
    required this.onSubmitting,
    required this.showErrors,
    Json initialValues = const {},
  }) : _tempSubmitDatas = [],
       super(_calculateInitialState(_root, initialValues, showErrors)) {
    _initialValues = state.asMap();
    if (showErrors == ShowErrors.always) {
      // Update the errors of all visited paths
      SchedulerBinding.instance.addPostFrameCallback((_) => _updateErrors());
    }
  }

  final RootNode _root;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final Future<bool> Function(BuildContext context) _canSubmit;
  final Future<void> Function(RootNode root, WoFormValues values)? onSubmitting;
  final ShowErrors showErrors;
  late Json _initialValues;
  final Map<String, FocusNode> _focusNodes = {};

  /// Called each time a value changed, accordingly to [UpdateStatus].
  final Future<void> Function(RootNode root, WoFormValues values)?
  onStatusUpdate;
  final List<_TempSubmitData> _tempSubmitDatas;

  /// List of paths in which the user has attempted a submission.
  ///
  /// '' means the main submission has been attempted. The other paths are
  /// temporary submissions.
  final Set<String> _submittedPaths = {};

  // A helper method to compute the initial state cleanly.
  static WoFormValues _calculateInitialState(
    RootNode root,
    Json initialValues,
    ShowErrors showErrors,
  ) {
    // Start with the root's initial values
    final values = WoFormValues(root.getInitialValues()..addAll(initialValues));

    if (showErrors == ShowErrors.always) {
      // Mark all paths as visited, this way the errors will always appear
      final visitedPaths = Set<String>.from(
        values[_VISITED_PATHS_KEY] as Iterable<String>? ?? {},
      )..addAll(values.keys);
      // Cannot store a set in values, or the hydratation won't work
      values[_VISITED_PATHS_KEY] = visitedPaths.toList();
    }

    if (root.uiSettings.multistepSettings != null) {
      values.multistepIndex = 0;
      if (root.uiSettings.multistepSettings!.generatingSteps) {
        values.generatedSteps = [root.children.first.id];
      }
    }

    return values;
  }

  /// Return true if the current state is equal to the initial state.
  bool get isPure => state.isPure(initialValues: _initialValues);

  // --- MULTI STEP ---

  // If false i returned, the new index is rejected
  bool _onMultistepControllerUpdate(int multistepIndex) {
    if (multistepIndex < 0) return false;

    final newValues = state.copy();

    final getNextStep = _root.uiSettings.multistepSettings?.getNextStep;
    final currentIndex = state.multistepIndex;
    if (getNextStep != null && multistepIndex > currentIndex) {
      final generatedSteps = newValues.generatedSteps;
      final nextStepId = getNextStep(generatedSteps[currentIndex], newValues);

      if (multistepIndex == generatedSteps.length) {
        // There is no further step, can't increase the index
        if (nextStepId == null) {
          // Reject the MultistepController's update,
          // will probably submit the entire form as soon as possible
          return false;
        }

        newValues.generatedSteps = [...generatedSteps, nextStepId];
      } else if (multistepIndex < generatedSteps.length) {
        final naturalNextStepId = generatedSteps[multistepIndex];
        if (nextStepId != naturalNextStepId) {
          // There is no further step, can't increase the index
          if (nextStepId == null) {
            // Reject the MultistepController's update,
            // will probably submit the entire form as soon as possible
            return false;
          }

          // Reset steps generated after multistepIndex
          for (final stepIdToReset in generatedSteps.skip(multistepIndex)) {
            final stepToReset = _root.children.firstWhereOrNull(
              (step) => step.id == stepIdToReset,
            );

            newValues._values
              ..removeWhere((key, value) => key.startsWith('/$stepIdToReset'))
              ..addAll(stepToReset?.getInitialValues(parentPath: '') ?? {});
          }

          newValues.generatedSteps = [
            ...generatedSteps.take(multistepIndex),
            nextStepId,
          ];
        }
      }
    }

    newValues.multistepIndex = multistepIndex;
    emit(newValues);
    return true;
  }

  // --- CURRENT STATE ---

  WoFormNodeMixin get currentNode {
    final tempSubmitData = _tempSubmitDatas.lastOrNull;
    if (tempSubmitData == null) return _root;

    try {
      return _root.getChild(
        path: tempSubmitData.path,
        values: state,
      )!;
    } catch (_) {
      throw Exception('No node found at path ${tempSubmitData.path}');
    }
  }

  /// The list of validation errors in the current context.
  ///
  /// For exapmle, in a MultiStepSubmitMode, the errors are step-specific.
  Iterable<WoFormInputError> get currentErrors => currentNode.getErrors(
    values: state,
    parentPath: state.submitPath.parentPath,
  );

  // --- TEMPORARY SUBMIT DATA ---

  void addTemporarySubmitData({
    /// If [true] is returned, the whole form will be submitted right after.
    required Future<bool?> Function() onSubmitting,
    required String path,
  }) {
    _tempSubmitDatas.add((
      onSubmitting: onSubmitting,
      path: path,
    ));
    state._setSubmitPath(path);
  }

  void clearTemporarySubmitData() {
    _tempSubmitDatas.clear();
    state._clearSubmitPath();
  }

  void removeTemporarySubmitData({required String path}) {
    for (final data in _tempSubmitDatas.toList()) {
      if (data.path == path) {
        _tempSubmitDatas.remove(data);
        if (state.submitPath == data.path) {
          state._clearSubmitPath();
        }
      }
    }
  }

  // --- FOCUS ---

  // ignore: constant_identifier_names
  static const FOCUSED_PATH_KEY = '/__wo_reserved_focused_path';

  // Called by WoFormNodeFocusManager
  FocusNode _createFocusNode(String path) {
    _focusNodes[path] ??= FocusNode();
    return _focusNodes[path]!;
  }

  // Called by WoFormNodeFocusManager
  void _disposeFocusNode(String path) {
    final focusNode = _focusNodes.remove(path);
    if (focusNode != null) focusNode.dispose();
  }

  void _onFocusChange(String path, {required bool isFocused}) {
    final oldFocusedPath = focusedPath;

    if (isFocused && oldFocusedPath != path) {
      final newValues = state.copy();
      newValues[FOCUSED_PATH_KEY] = path;
      emit(newValues);
    } else if (!isFocused && oldFocusedPath == path) {
      final newValues = state.copy();
      newValues[FOCUSED_PATH_KEY] = null;
      emit(newValues);
    }

    if (!isFocused) _markPathAsVisited(path: path);
  }

  String? get focusedPath => state[FOCUSED_PATH_KEY] as String?;

  bool isFocused(String path) => focusedPath == path;

  // --- VALUES ---

  void clearValues() => emit(WoFormValues(_root.getInitialValues()));

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) => onValuesChanged({path: value}, updateStatus: updateStatus);

  /// **Use this method precautiously since there is no type checking !**
  void onValuesChanged(
    Json values, {
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) {
    // Remove paths of locked inputs and transform any #path
    // ignore: parameter_assignments
    values = {
      for (final entry in values.entries)
        if (!_lockCubit.inputIsLocked(path: state.getKey(entry.key)))
          state.getKey(entry.key): entry.value,
    };
    if (values.isEmpty) return;

    final atLeastOnePathWasVisited = values.keys.any(_visitedPaths.contains);

    final shouldUpdateStatus = switch (updateStatus) {
      UpdateStatus.ifPathAlreadyVisited => atLeastOnePathWasVisited,
      UpdateStatus.yesWithoutErrorUpdateIfPathNotVisited ||
      UpdateStatus.yes => true,
    };

    final newValues = state.copy();
    for (final entry in values.entries) {
      newValues[entry.key] = entry.value;
    }

    // If the status isn't updated and we are still at initial state, then the
    // initial state should be updated to match the current state.
    // This allows a FutureNode to update its value without changing isPure.
    if (!shouldUpdateStatus && isPure) _initialValues = newValues.asMap();

    emit(newValues);

    // Only WoFormValues can be updated while submitting
    if (_statusCubit.state is SubmittingStatus) return;

    if (shouldUpdateStatus) {
      final shouldUpdateErrors = switch (updateStatus) {
        // if one of the paths were already visited,
        // then we update the errors of all the paths
        UpdateStatus.ifPathAlreadyVisited ||
        UpdateStatus.yesWithoutErrorUpdateIfPathNotVisited =>
          atLeastOnePathWasVisited,
        // we update the errors
        UpdateStatus.yes => true,
      };

      if (shouldUpdateErrors) {
        final allPathsWereVisited = values.keys.every(_visitedPaths.contains);
        if (!allPathsWereVisited) {
          _markPathsAsVisited(paths: values.keys);
        }

        _updateErrors();
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

  // --- VISITED PATHS ---

  // ignore: constant_identifier_names
  static const _VISITED_PATHS_KEY = '/__wo_reserved_visited_paths';
  Iterable<String> get _visitedPaths =>
      state[_VISITED_PATHS_KEY] as Iterable<String>? ?? {};

  /// Marks the node at this path as visited by the user.
  /// Before submission, only visited nodes show errors.
  ///
  /// Return false if the path was already visited.
  void _markPathAsVisited({required String path}) {
    if (showErrors == ShowErrors.afterSubmission) {
      if (!_submittedPaths.any(
        (submittedPath) => path.startsWith(submittedPath),
      )) {
        return;
      }
    }

    final newValues = state.copy();
    final visitedPaths = Set<String>.from(
      newValues[_VISITED_PATHS_KEY] as Iterable<String>? ?? {},
    );
    if (visitedPaths.add(path)) {
      newValues[_VISITED_PATHS_KEY] = visitedPaths.toList();
      emit(newValues);
      _updateErrors();
      return;
    }
  }

  /// Marks the nodes at these paths as visited by the user.
  /// Before submission, only visited nodes show errors.
  void _markPathsAsVisited({required Iterable<String> paths}) {
    if (showErrors == ShowErrors.afterSubmission) {
      paths = paths.where(
        (path) => _submittedPaths.any(
          (submittedPath) => path.startsWith(submittedPath),
        ),
      );
    }

    final newValues = state.copy();
    final visitedPaths = Set<String>.from(
      newValues[_VISITED_PATHS_KEY] as Iterable<String>? ?? {},
    )..addAll(paths);
    // Do not store a set in values, or the hydratation won't work
    newValues[_VISITED_PATHS_KEY] = visitedPaths.toList();
    emit(newValues);
  }

  Future<void> submit(BuildContext context, {bool skipErrors = false}) async {
    FocusScope.of(context).unfocus();

    final node = currentNode;
    final submitPath = state.submitPath;

    _submittedPaths.add(submitPath);

    _markPathsAsVisited(
      paths: node
          .getAllInputPaths(
            values: state,
            parentPath: submitPath.parentPath,
          )
          // Remove root path
          .whereNot((path) => path.isEmpty),
    );

    if (!skipErrors) {
      final errors = node.getErrors(
        values: state,
        parentPath: submitPath.parentPath,
      );

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
    }

    _statusCubit._setSubmitting();

    final oldLocks = _lockCubit.state;

    for (final path in currentNode.getAllInputPaths(
      values: state,
      parentPath: submitPath.parentPath,
    )) {
      _lockCubit.lockInput(path: path);
    }

    try {
      final tempSubmitData = _tempSubmitDatas.lastOrNull;
      var submitWholeForm = tempSubmitData == null;

      if (tempSubmitData != null) {
        submitWholeForm = await tempSubmitData.onSubmitting() ?? false;
        _statusCubit.setInProgress();
      }

      if (submitWholeForm && context.mounted) {
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

// TODO : can't modify WoFormValuesCubit's state, only copy then modify
class WoFormValues {
  const WoFormValues(this._values);

  // bool _locked = false;
  final Map<String, dynamic> _values;

  // TODO : deprecate, encourage #
  static String getAbsolutePath({
    required String parentPath,
    required String path,
  }) {
    if (path.startsWith('/')) return path;
    if (!path.startsWith('.')) {
      if (path.startsWith('#')) return path;

      throw ArgumentError(
        'An input path must start with character "/", "#" or ".".',
      );
    }

    final relativePath = path.substring(1);

    if (relativePath.startsWith('/')) return '$parentPath$relativePath';
    if (!relativePath.startsWith('./')) {
      throw ArgumentError(
        'An input relative path must start with "./" or "../".',
      );
    }

    // Here, we go looking for the absolute path, by going backward in the tree.

    if (!parentPath.contains('/')) {
      throw ArgumentError('The relative path is backwarding too far.');
    }

    final newParentPath = parentPath.parentPath;

    return getAbsolutePath(parentPath: newParentPath, path: relativePath);
  }

  dynamic operator [](String key) => getValue(key);
  void operator []=(String key, dynamic value) => _values[getKey(key)] = value;

  Iterable<MapEntry<String, dynamic>> get entries => _values.entries;
  Iterable<String> get keys => _values.keys;
  int get length => _values.length;
  Json asMap() => Json.from(_values);
  WoFormValues copy() => WoFormValues(Map.from(_values));

  /// path can be a key, or a string starting with #, like #endsAt.
  /// Then, the result is the first key that ends with path.
  ///
  /// Throws if no key matches the path.
  String getKey(String path) {
    if (!path.startsWith('#')) return path;

    final lastSection = '/${path.substring(1)}';
    for (final key in _values.keys) {
      if (key.endsWith(lastSection)) return key;
    }

    throw ArgumentError('No key matches the path : $path');
  }

  /// path can be a key, or a string starting with #, like #endsAt.
  /// Then, the result is the value corresponding to the first key
  /// that ends with path.
  dynamic getValue(
    String path, {
    // TODO : deprecate relative paths, encourage #
    String? parentPath,
  }) {
    if (parentPath != null) {
      // ignore: parameter_assignments
      path = getAbsolutePath(parentPath: parentPath, path: path);
    }

    if (!path.startsWith('#')) return _values[path];

    final lastSection = '/${path.substring(1)}';
    for (final key in _values.keys) {
      if (key.endsWith(lastSection)) return _values[key];
    }

    return null;
  }

  bool isPure({required Json initialValues}) => mapEquals(
    _values..removeWhere((path, _) => path.startsWith('/__wo_reserved')),
    initialValues,
  );

  // --- CURRENT STATE ---

  // ignore: constant_identifier_names
  static const _SUBMIT_PATH_KEY = '/__wo_reserved_submit_path';
  String get submitPath => _values[_SUBMIT_PATH_KEY] as String? ?? '';
  void _setSubmitPath(String path) => _values[_SUBMIT_PATH_KEY] = path;
  void _clearSubmitPath() => _values[_SUBMIT_PATH_KEY] = '';

  // --- MULTISTEP ---

  /// Only used with MultiStepSubmitMode
  // ignore: constant_identifier_names
  static const MULTISTEP_INDEX_KEY = '/__wo_reserved_step_index';
  int get multistepIndex => _values[MULTISTEP_INDEX_KEY] as int? ?? 0;
  set multistepIndex(int index) => _values[MULTISTEP_INDEX_KEY] = index;

  /// Only used if MultiStepSubmitMode.nextStep is set
  // ignore: constant_identifier_names
  static const _GENERATED_STEPS_KEY = '/__wo_reserved_generated_steps';

  /// The id of the steps generated by MultiStepSubmitMode.nextStep so far.
  List<String> get generatedSteps =>
      _values[_GENERATED_STEPS_KEY] as List<String>? ?? [];
  set generatedSteps(List<String> steps) =>
      _values[_GENERATED_STEPS_KEY] = steps;
}

typedef _TempSubmitData = ({
  /// If [true] is returned, the whole form will be submitted right after.
  Future<bool?> Function() onSubmitting,
  String path,
});
typedef OnSubmitErrorDef =
    void Function(
      BuildContext context,
      SubmitErrorStatus errorStatus,
    );

/// Use this if you don't want to trigger error validations
/// or if you want to keep the previous status.
enum UpdateStatus {
  /// When updating the value of this path, update the status of the form
  /// only if the user already visited the path.
  ///
  /// Used by fields like FutureNode, who update the values of the form
  /// without any user interaction, so we don't want the form to think a
  /// modification has been made. But if the path was visited, the user
  /// should be warned of the new changes and the errors should be re-evaluated,
  /// so we want an update.
  ifPathAlreadyVisited,

  /// When updating the value of this path, update the status of the form,
  /// and update the errors only if the user already visited the path.
  yesWithoutErrorUpdateIfPathNotVisited,

  /// When updating the value of this path, update the status of the form
  /// and mark the path as visited.
  yes,
}
