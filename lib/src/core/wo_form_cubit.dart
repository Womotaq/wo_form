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
      final visitedPaths = Set<String>.from(values._visitedPaths)
        ..addAll(values.keys);
      // Cannot store a set in values, or the hydratation won't work
      values._visitedPaths = visitedPaths.toList();
    }

    if (root.uiSettings.multistepSettings != null) {
      values._multistepIndex = 0;
      if (root.uiSettings.multistepSettings!.generatingSteps) {
        values._generatedSteps = [root.children.first.id];
      }
    }

    return values;
  }

  /// Return true if the current state is equal to the initial state.
  bool get isPure => state.isPure(initialValues: _initialValues);

  // --- MULTI STEP ---

  MultistepFailure? _onMultistepControllerUpdate(int multistepIndex) {
    if (multistepIndex < 0) return MultistepFailure.startOfForm;

    final newValues = state.copy();

    final generatingSteps =
        _root.uiSettings.multistepSettings?.generatingSteps ?? false;
    final steps = generatingSteps
        ? state.generatedSteps
        : _root.children.map((step) => step.id).toList();

    if (multistepIndex >= steps.length) {
      return MultistepFailure.endOfForm;
    }

    newValues._multistepIndex = multistepIndex;
    emit(newValues);
    return null;
  }

  // --- INPUTS NODE ---

  /// Registers an InputsNode showing its children due to
  /// [InputsNodeUiSettings.showChildrenInitially]. Registering prevents
  /// unwanted reopenings, like when the context containing the InputsNode
  /// is popped and then rebuilt.
  void inputsNodeShowingChildrenInitially(String path) {
    if (state.inputsNodeShownChildrenInitially(path)) return;
    state._inputsNodeShowingChildrenInitially(path);
  }

  // --- CURRENT STATE ---

  WoFormNodeMixin get currentNode {
    final tempSubmitData = _tempSubmitDatas.lastOrNull;
    if (tempSubmitData != null) {
      try {
        return _root.getChild(
          path: tempSubmitData.path,
          values: state,
        )!;
      } catch (_) {
        throw Exception('No node found at path ${tempSubmitData.path}');
      }
    }

    if (_root.uiSettings.multistepSettings != null) {
      if (_root.uiSettings.multistepSettings!.generatingSteps) {
        final currentStepId = state.currentStepId;
        return _root.children.firstWhereOrNull(
              (step) => step.id == currentStepId,
            ) ??
            _root;
      } else {
        return _root.children[state.multistepIndex];
      }
    }

    return _root;
  }

  /// The list of validation errors in the current context.
  ///
  /// For exapmle, when multistepping, the errors are step-specific.
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
    final oldFocusedPath = state._focusedPath;

    if (isFocused && oldFocusedPath != path) {
      emit(state.copy().._focusedPath = path);
    } else if (!isFocused && oldFocusedPath == path) {
      emit(state.copy().._focusedPath = null);
    }

    if (!isFocused) _markPathAsVisited(path: path);
  }

  // --- VALUES ---

  void clearValues() => emit(WoFormValues(_root.getInitialValues()));

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) => onValuesChanged({path: value}, updateStatus: updateStatus);

  /// **Use this method precautiously since there is no type checking !**
  Future<void> onValuesChanged(
    Json values, {
    UpdateStatus updateStatus = UpdateStatus.yes,
  }) async {
    // Remove paths of locked inputs and transform any #path
    // ignore: parameter_assignments
    values = {
      for (final entry in values.entries)
        if (!_lockCubit.inputIsLocked(path: state.getKey(entry.key)))
          state.getKey(entry.key): entry.value,
    };
    if (values.isEmpty) return;

    final atLeastOnePathWasVisited = values.keys.any(
      state._visitedPaths.contains,
    );

    final shouldUpdateStatus = switch (updateStatus) {
      UpdateStatus.no => false,
      UpdateStatus.ifPathAlreadyVisited => atLeastOnePathWasVisited,
      UpdateStatus.yesWithoutErrorUpdateIfPathNotVisited ||
      UpdateStatus.yes => true,
    };

    final newValues = state.copy();
    for (final entry in values.entries) {
      newValues._set(entry.key, entry.value);
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
        UpdateStatus.no => false,
        // if one of the paths were already visited,
        // then we update the errors of all the paths
        UpdateStatus.ifPathAlreadyVisited ||
        UpdateStatus.yesWithoutErrorUpdateIfPathNotVisited =>
          atLeastOnePathWasVisited,
        // we update the errors
        UpdateStatus.yes => true,
      };

      if (shouldUpdateErrors) {
        final allPathsWereVisited = values.keys.every(
          state._visitedPaths.contains,
        );
        if (!allPathsWereVisited) {
          _markPathsAsVisited(paths: values.keys);
        }

        _updateErrors();
      } else {
        _statusCubit.setInProgress();
      }

      await onStatusUpdate?.call(_root, state);
    }
  }

  /// Update errors of visited paths
  void _updateErrors() => _statusCubit.setInProgress(
    errors: state._visitedPaths
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
    final visitedPaths = Set<String>.from(newValues._visitedPaths);
    if (visitedPaths.add(path)) {
      newValues._visitedPaths = visitedPaths.toList();
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
    final visitedPaths = Set<String>.from(newValues._visitedPaths)
      ..addAll(paths);
    // Do not store a set in values, or the hydratation won't work
    newValues._visitedPaths = visitedPaths.toList();
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
      final bool submitWholeForm;

      if (tempSubmitData != null) {
        submitWholeForm = await tempSubmitData.onSubmitting() ?? false;
        _statusCubit.setInProgress();
      } else if (_root.uiSettings.multistepSettings != null) {
        submitWholeForm = await _onStepSubmitting(context);
      } else {
        submitWholeForm = true;
      }

      if (submitWholeForm && context.mounted) {
        if (await _canSubmit(context)) {
          await onSubmitting?.call(_root, state);
          _statusCubit._setSubmitSuccess();
        } else {
          _statusCubit.setInProgress();
        }
      } else {
        _statusCubit.setInProgress();
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

  /// Return true if [WoForm.onSubmitting] should be called afterward.
  Future<bool> _onStepSubmitting(BuildContext context) async {
    final multistepController = MultistepController.of(context);
    if (multistepController == null) {
      throw AssertionError(
        'When MultistepSettings are set, the context provided to '
        'WoFormValuesCubit.submit() should always have a '
        'MultistepControllerProvider above.',
      );
    }
    final onStepSubmitting =
        _root.uiSettings.multistepSettings?.onStepSubmitting;
    final action = onStepSubmitting == null
        ? const MultistepActionNext()
        : await onStepSubmitting.call(context);

    switch (action) {
      case null:
        return false;
      case MultistepActionSubmitForm():
        return true;
      case MultistepActionNext():
        final currentIndex = state.multistepIndex;
        final steps = onStepSubmitting == null
            ? _root.children.map((step) => step.id).toList()
            : state.generatedSteps;
        if (currentIndex == steps.length - 1) {
          return true;
        } else {
          multistepController.animateToStep(currentIndex + 1);
          return false;
        }
      case MultistepActionPush(stepId: final nextStepId):
        final currentIndex = state.multistepIndex;
        final generatedSteps = state.generatedSteps;

        if (currentIndex == generatedSteps.length - 1) {
          // Currently at the last generated step of the pile.
          //
          // Add the step
          state._generatedSteps = [...generatedSteps, nextStepId];
        } else if (nextStepId != generatedSteps[currentIndex + 1]) {
          // Currently before the last generated step of the pile, and
          // the id of the next step is not the same as the next already
          // generated step.
          //
          // Reset all the steps generated after currentIndex,
          // then add the step.
          for (final stepIdToReset in generatedSteps.skip(currentIndex + 1)) {
            final stepToReset = _root.children.firstWhereOrNull(
              (step) => step.id == stepIdToReset,
            );

            state._values
              ..removeWhere(
                (key, value) => key.startsWith('/$stepIdToReset'),
              )
              ..addAll(
                stepToReset?.getInitialValues(parentPath: '') ?? {},
              );
          }

          state._generatedSteps = [
            ...generatedSteps.take(currentIndex + 1),
            nextStepId,
          ];
        }
        // Else, the next generated step is the same as the required one,
        // we don't need to modify the generated steps.

        // Then, we move on to the next step.
        multistepController.nextStep();
        return false;
    }
  }
}

// TODO : can't modify WoFormValuesCubit's state, only copy then modify
class WoFormValues {
  const WoFormValues(this._values);

  // bool _locked = false;
  final Map<String, dynamic> _values;

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
  void _set(String key, dynamic value) => _values[getKey(key)] = value;

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
  dynamic getValue(String path, {String? parentPath}) {
    if (parentPath != null) {
      // ignore: parameter_assignments
      path = getAbsolutePath(parentPath: parentPath, path: path);
    }

    if (!path.startsWith('#')) return _values[path];

    final lastSection = '/${path.substring(1)}';
    for (final entry in _values.entries) {
      if (entry.key.endsWith(lastSection)) return entry.value;
    }

    return null;
  }

  bool isPure({required Json initialValues}) => mapEquals(
    asMap()..removeWhere((path, _) => path.startsWith('/__wo_reserved')),
    initialValues,
  );

  T? get<T>(String path) {
    final value = getValue(path);
    if (value is T) return value;
    return null;
  }

  // --- CURRENT STATE ---

  // ignore: constant_identifier_names
  static const _SUBMIT_PATH_KEY = '/__wo_reserved_submit_path';
  String get submitPath => _values[_SUBMIT_PATH_KEY] as String? ?? '';
  void _setSubmitPath(String path) => _values[_SUBMIT_PATH_KEY] = path;
  void _clearSubmitPath() => _values[_SUBMIT_PATH_KEY] = '';

  // --- MULTISTEP ---

  /// Only used with [MultistepSettings].
  // ignore: constant_identifier_names
  static const MULTISTEP_INDEX_KEY = '/__wo_reserved_step_index';
  int get multistepIndex => _values[MULTISTEP_INDEX_KEY] as int? ?? 0;
  // ignore: avoid_setters_without_getters
  set _multistepIndex(int index) => _values[MULTISTEP_INDEX_KEY] = index;

  /// Only used when [MultistepSettings.onStepSubmitting] != null.
  // ignore: constant_identifier_names
  static const _GENERATED_STEPS_KEY = '/__wo_reserved_generated_steps';

  /// The id of the steps generated by [MultistepSettings.onStepSubmitting]
  /// so far.
  List<String> get generatedSteps =>
      _values[_GENERATED_STEPS_KEY] as List<String>? ?? [];
  // ignore: avoid_setters_without_getters
  set _generatedSteps(List<String> steps) =>
      _values[_GENERATED_STEPS_KEY] = steps;

  /// The id of the step that the form is currently
  String? get currentStepId {
    final generatedStepsOrNull = _values[_GENERATED_STEPS_KEY] as List<String>?;
    if (generatedStepsOrNull == null) return null;
    final multistepIndexOrNull = _values[MULTISTEP_INDEX_KEY] as int?;
    if (multistepIndexOrNull == null) return null;
    if (multistepIndexOrNull > generatedStepsOrNull.length - 1) return null;
    return generatedStepsOrNull[multistepIndex];
  }

  // --- FOCUS ---

  // ignore: constant_identifier_names
  static const _FOCUSED_PATH_KEY = '/__wo_reserved_focused_path';
  String? get _focusedPath => this[_FOCUSED_PATH_KEY] as String?;
  set _focusedPath(String? path) => _values[_FOCUSED_PATH_KEY] = path;
  bool isFocused(String path) =>
      this[_FOCUSED_PATH_KEY] != null && _focusedPath == getKey(path);

  // --- VISITED PATHS ---

  // ignore: constant_identifier_names
  static const _VISITED_PATHS_KEY = '/__wo_reserved_visited_paths';
  Iterable<String> get _visitedPaths =>
      this[_VISITED_PATHS_KEY] as Iterable<String>? ?? {};
  set _visitedPaths(Iterable<String> paths) =>
      _values[_VISITED_PATHS_KEY] = paths;

  // --- SELECT INPUT QUERY ---

  WoFormQuery? queryOf({required String selectInputPath}) =>
      this['$selectInputPath-query'] as WoFormQuery?;

  // --- INPUTS NODE ---

  // ignore: constant_identifier_names
  static const _INPUTSNODE_SHOWN_CHILDREN_KEY =
      '/__wo_reserved_inputsnode_shown_children';
  List<String> get _inputsNodeShownChildrenInitially =>
      _values[_INPUTSNODE_SHOWN_CHILDREN_KEY] as List<String>? ?? [];
  void _inputsNodeShowingChildrenInitially(String path) =>
      _values[_INPUTSNODE_SHOWN_CHILDREN_KEY] = [
        ..._inputsNodeShownChildrenInitially,
        path,
      ];
  bool inputsNodeShownChildrenInitially(String path) =>
      _inputsNodeShownChildrenInitially.contains(path);
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

  /// Do not update the status of the form. Only use for internal data
  /// that should not trigger anything in your form.
  no,
}
