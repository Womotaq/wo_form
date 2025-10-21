part of 'wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit(super.initialState);

  void setInProgress({List<WoFormInputError> errors = const []}) {
    if (!isClosed) emit(InProgressStatus(errors: errors));
  }

  void _setSubmitting() {
    if (!isClosed) emit(const SubmittingStatus());
  }

  void _setSubmitError({required Object error, StackTrace? stackTrace}) {
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
  }) : _tempSubmitDatas = [],
       super(_calculateInitialState(_root)) {
    _initialValues = state.asMap();
    if (showErrors == ShowErrors.always) {
      // Update the errors of all visited paths
      SchedulerBinding.instance.addPostFrameCallback((_) => _updateErrors());
    }
  }

  RootNode _root;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final Future<bool> Function(BuildContext context) _canSubmit;
  final Future<Object?> Function(RootNode root, WoFormValues values)?
  onSubmitting;
  late Json _initialValues;
  final Map<String, FocusNode> _focusNodes = {};

  /// Called each time a value changed, accordingly to [UpdateStatus].
  final Future<void> Function(RootNode root, WoFormValues values)?
  onStatusUpdate;

  /// Behaves like a stack, the current submit data is the last one.
  final List<_TempSubmitData> _tempSubmitDatas;

  /// List of paths in which the user has attempted a submission.
  ///
  /// '' means the main submission has been attempted. The other paths are
  /// temporary submissions.
  final Set<String> _submittedPaths = {};

  bool _skipErrorsOfNextSubmit = false;

  // A helper method to compute the initial state cleanly.
  static WoFormValues _calculateInitialState(RootNode root) {
    // Start with the root's initial values
    final values = WoFormValues(
      root.getInitialValues(parentPath: '')..addAll(root.initialValues),
    );

    if (root.uiSettings?.showErrors == ShowErrors.always) {
      // Mark all paths as visited, this way the errors will always appear
      final visitedPaths = Set<String>.from(values._visitedPaths)
        ..addAll(values.keys);
      // Cannot store a set in values, or the hydratation won't work
      values._visitedPaths = visitedPaths.toList();
    }

    if (root.uiSettings?.multistepSettings != null) {
      final currentStepId = root.children.firstOrNull?.id ?? '';
      values
        .._currentStepId = currentStepId
        .._currentStepIndex = 0
        .._setSubmitPath('/$currentStepId');
      if (root.uiSettings!.multistepSettings!.generatingSteps) {
        values._generatedSteps = [currentStepId];
      }
    }

    return values;
  }

  void _didUpdateWoForm(RootNode newRoot) {
    if (!identical(_root, newRoot)) {
      _root = newRoot;
      _initialValues = _calculateInitialState(_root).asMap();
    }
  }

  /// Return true if the current state is equal to the initial state.
  bool get isPure => state.isPure(initialValues: _initialValues);
  ShowErrors get showErrors =>
      _root.uiSettings?.showErrors ?? ShowErrors.progressively;

  WoFormNode? getNode({required String path}) =>
      _root.getChild(path: path, parentPath: '', values: state);

  // --- MULTI STEP ---

  MultistepFailure? _onMultistepControllerUpdate(int multistepIndex) {
    if (multistepIndex < 0) return MultistepFailure.startOfForm;

    final newValues = state.copy();

    final generatingSteps =
        _root.uiSettings?.multistepSettings?.generatingSteps ?? false;
    final steps = generatingSteps
        ? state.generatedSteps
        : _root.children.map((step) => step.id).toList();

    if (multistepIndex >= steps.length) {
      return MultistepFailure.endOfForm;
    }

    newValues
      .._currentStepId = steps[multistepIndex]
      .._currentStepIndex = multistepIndex;

    // ignore: cascade_invocations
    newValues._setSubmitPath(
      _tempSubmitDatas.lastOrNull?.path ?? newValues.currentStepPath ?? '',
    );

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
    emit(state.copy().._inputsNodeShowingChildrenInitially(path));
  }

  // --- CURRENT STATE ---

  WoFormNode get currentNode {
    final tempSubmitData = _tempSubmitDatas.lastOrNull;
    if (tempSubmitData != null) {
      try {
        return _root.getChild(
          path: tempSubmitData.path,
          parentPath: '',
          values: state,
        )!;
      } catch (_) {
        throw Exception('No node found at path ${tempSubmitData.path}');
      }
    }

    if (_root.uiSettings?.multistepSettings != null) {
      if (_root.uiSettings!.multistepSettings!.generatingSteps) {
        final currentStepId = state.currentStepId;
        return _root.children.firstWhereOrNull(
              (step) => step.id == currentStepId,
            ) ??
            _root;
      } else {
        return _root.children[state.currentStepIndex ?? 0];
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

  /// The next time [WoFormValuesCubit.submit] will be called, instead of
  /// calling [WoForm.onSubmitting] or [MultistepSettings.onStepSubmitting],
  /// it's [onSubmitting] who will be submitted.
  /// Before calling [onSubmitting], will be verified the errors of
  /// the node at [path] and its children.
  ///
  /// If path is the same as the current temporary submit data,
  /// then the onSubmitting will be updated.
  void addTemporarySubmitData({
    /// If [true] is returned, the whole form will be submitted right after.
    required Future<bool?> Function() onSubmitting,
    required String path,
  }) {
    if (_tempSubmitDatas.lastOrNull?.path == path) {
      _tempSubmitDatas.last = (
        onSubmitting: onSubmitting,
        path: path,
      );
    } else {
      _tempSubmitDatas.add((
        onSubmitting: onSubmitting,
        path: path,
      ));
    }
    emit(state.copy().._setSubmitPath(path));
  }

  /// Removed the last temporary onSubmitting attached to [path].
  void removeTemporarySubmitData({required String path}) {
    final newValues = state.copy();
    for (final data in _tempSubmitDatas.reversed) {
      if (data.path == path) {
        _tempSubmitDatas.remove(data);
        break;
      }
    }
    newValues._setSubmitPath(
      _tempSubmitDatas.lastOrNull?.path ?? newValues.currentStepPath ?? '',
    );
    emit(newValues);
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

  /// Request the focus on the input at [path].
  void requestFocus(String path) => _focusNodes[state.getKey(path)]
    ?..requestFocus()
    ..nextFocus();

  // --- VALUES ---

  void clearValues() =>
      emit(WoFormValues(_root.getInitialValues(parentPath: '')));

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

      unawaited(onStatusUpdate?.call(_root, state));
    }
  }

  /// Update errors of visited paths
  void _updateErrors() => _statusCubit.setInProgress(
    errors: state._visitedPaths
        .map(
          (path) => getNode(path: path)?.getErrors(
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

  void skipErrorsOfNextSubmit() {
    _skipErrorsOfNextSubmit = true;
  }

  Future<void> submit(BuildContext context) async {
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

    if (!_skipErrorsOfNextSubmit) {
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

        return _statusCubit.setInProgress(errors: errors.toList());
      }
    } else {
      _skipErrorsOfNextSubmit = false;
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
        removeTemporarySubmitData(path: tempSubmitData.path);
        _statusCubit.setInProgress();
      } else if (_root.uiSettings?.multistepSettings != null) {
        submitWholeForm = await _onStepSubmitting(context);
      } else {
        submitWholeForm = true;
      }

      if (submitWholeForm && context.mounted) {
        if (await _canSubmit(context)) {
          final result = await onSubmitting?.call(_root, state);
          emit(state.copy().._set(WoFormValues.SUBMISSION_RESULT_KEY, result));
          _statusCubit._setSubmitSuccess();
        } else {
          _statusCubit.setInProgress();
        }
      } else {
        _statusCubit.setInProgress();
      }
    } catch (e, s) {
      if (e is WoFormInputError) {
        _statusCubit.setInProgress(errors: [e]);
      } else {
        _statusCubit._setSubmitError(error: e, stackTrace: s);
      }
    }

    if (_root.uiSettings?.canModifySubmittedValues ?? true) {
      for (final path in _lockCubit.state) {
        if (!oldLocks.contains(path)) {
          _lockCubit.unlockInput(path: path);
        }
      }
    }
  }

  /// Return true if [WoForm.onSubmitting] should be called afterward.
  Future<bool> _onStepSubmitting(BuildContext context) async {
    final onStepSubmitting =
        _root.uiSettings?.multistepSettings?.onStepSubmitting;
    final action = onStepSubmitting == null
        ? const MultistepActionNext()
        : await onStepSubmitting.call(context);

    if (!context.mounted) return false;
    return executeAction(action, context);
  }

  /// Return true if [WoForm.onSubmitting] should be called afterward.
  Future<bool> executeAction(
    MultistepAction? action,
    BuildContext context,
  ) async {
    final multistepController = MultistepController.of(context);
    if (multistepController == null) {
      throw AssertionError(
        'When MultistepSettings are set, the context provided to '
        'WoFormValuesCubit.submit() should always have a '
        'MultistepControllerProvider above.',
      );
    }

    switch (action) {
      case null:
        return false;
      case MultistepActionNext():
        final failure = await multistepController.animateToStep(
          (state.currentStepIndex ?? 0) + 1,
        );
        return failure == MultistepFailure.endOfForm;
      case MultistepActionPopUntil(
        predicate: final predicate,
        replacementStepId: final replacementStepId,
      ):
        final generatedSteps = state.generatedSteps;
        final currentIndex = state.currentStepIndex ?? 0;
        var keepUntilIndex = currentIndex;
        while (keepUntilIndex > 0 &&
            !predicate(generatedSteps[keepUntilIndex])) {
          keepUntilIndex--;
        }

        final newValues = state.copy();
        _resetSteps(values: newValues, keepUntilIndex: keepUntilIndex);

        MultistepFailure? failure;

        if (replacementStepId != null) {
          final newSteps = [
            ...generatedSteps.take(keepUntilIndex + 1),
            replacementStepId,
          ];

          emit(
            state.copy()
              .._generatedSteps = [
                ...generatedSteps.take(currentIndex + 1),
                replacementStepId,
              ],
          );
          failure = await multistepController.animateToStep(
            currentIndex + 1,
          );
          if (failure != null) return false;
          emit(state.copy().._generatedSteps = newSteps);
          multistepController.jumpToStep(keepUntilIndex + 1);
        } else {
          emit(
            state.copy()
              .._generatedSteps = [
                ...generatedSteps.take(keepUntilIndex + 1),
              ],
          );
          await multistepController.animateToStep(keepUntilIndex);
        }
        return false;
      case MultistepActionPush(stepId: final nextStepId):
        final currentIndex = state.currentStepIndex ?? 0;
        final generatedSteps = state.generatedSteps;

        final newValues = state.copy();
        if (currentIndex == generatedSteps.length - 1) {
          // Currently at the last generated step of the pile.
          //
          // Add the step
          newValues._generatedSteps = [...generatedSteps, nextStepId];
          emit(newValues);
        } else if (nextStepId != generatedSteps[currentIndex + 1]) {
          // Currently before the last generated step of the pile, and
          // the id of the next step is not the same as the next already
          // generated step.
          //
          // Reset all the steps generated after currentIndex,
          // then add the step.
          _resetSteps(values: newValues, keepUntilIndex: currentIndex);

          newValues._generatedSteps = [
            ...generatedSteps.take(currentIndex + 1),
            nextStepId,
          ];
        }
        emit(newValues);

        // Else, the next generated step is the same as the required one,
        // we don't need to modify the generated steps.

        // Then, we move on to the next step.
        await multistepController.nextStep();
        return false;
      case MultistepActionSubmitForm():
        return true;
    }
  }

  // Reset all the steps generated after currentIndex,
  void _resetSteps({
    required WoFormValues values,
    required int keepUntilIndex,
  }) {
    for (final stepIdToReset in state.generatedSteps.skip(keepUntilIndex + 1)) {
      final stepToReset = _root.children.firstWhereOrNull(
        (step) => step.id == stepIdToReset,
      );

      values._values
        ..removeWhere((key, value) => key.startsWith('/$stepIdToReset'))
        ..addAll(stepToReset?.getInitialValues(parentPath: '') ?? {});
    }
  }

  @override
  void emit(WoFormValues state) {
    super.emit(WoFormValues._locked(state._values));
  }
}

class WoFormValues {
  const WoFormValues(this._values);
  WoFormValues._locked(Json values) : _values = Map.unmodifiable(values);

  // bool _locked = false;
  final Json _values;

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
  /// Then, the result is the first key that ends with path.
  ///
  /// Returns null if no key matches the path.
  String? getKeyOrNull(String path) {
    if (!path.startsWith('#')) return path;

    final lastSection = '/${path.substring(1)}';
    for (final key in _values.keys) {
      if (key.endsWith(lastSection)) return key;
    }

    return null;
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

  /// If the value at [path] is [T], then the value is returned, casted.
  /// Else, null is returned.
  T? get<T>(String path) {
    final value = getValue(path);
    if (value is T) return value;
    return null;
  }

  // --- CURRENT STATE ---

  // ignore: constant_identifier_names
  static const _SUBMIT_PATH_KEY = '/__wo_reserved_submit_path';

  /// Return the path of the node who will be submitted at the next
  /// [WoFormValuesCubit.submit]. Can be :
  /// - The whole form (empty path), triggers [WoForm.onSubmitting].
  /// - A step ('/stepId'), triggers [MultistepSettings.onStepSubmitting],
  ///   falls back to [MultistepActionNext].
  /// - A temporary submission
  ///   (the path of the last element in [WoFormValuesCubit._tempSubmitDatas]),
  ///   triggers the associated [_TempSubmitData.onSubmitting].
  String get submitPath => _values[_SUBMIT_PATH_KEY] as String? ?? '';
  void _setSubmitPath(String path) => _values[_SUBMIT_PATH_KEY] = path;

  // --- MULTISTEP ---

  /// Only used with [MultistepSettings].
  // ignore: constant_identifier_names
  static const CURRENT_STEP_PATH_KEY = '/__wo_reserved_currrent_step_path';

  /// Null when [MultistepSettings] is not specified.
  String? get currentStepPath => _values[CURRENT_STEP_PATH_KEY] as String?;
  // ignore: avoid_setters_without_getters
  set _currentStepId(String stepId) =>
      _values[CURRENT_STEP_PATH_KEY] = '/$stepId';

  /// Null when [MultistepSettings] is not specified.
  String? get currentStepId => currentStepPath?.substring(1);

  /// Only used with [MultistepSettings].
  // ignore: constant_identifier_names
  static const CURRENT_STEP_INDEX_KEY = '/__wo_reserved_current_step_index';

  /// Null when [MultistepSettings] is not specified.
  int? get currentStepIndex => _values[CURRENT_STEP_INDEX_KEY] as int?;
  // ignore: avoid_setters_without_getters
  set _currentStepIndex(int index) => _values[CURRENT_STEP_INDEX_KEY] = index;

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

  /// Return true if the user had an interaction with the field at this path.
  bool isVisited({required String path}) => _visitedPaths.contains(path);

  // --- SELECT INPUT QUERY ---

  WoFormQuery? queryOf({required String selectInputPath}) =>
      get<WoFormQuery>('$selectInputPath-query');

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

  // --- SUBMISSION RESULT ---

  // ignore: constant_identifier_names
  static const SUBMISSION_RESULT_KEY = '/__wo_reserved_submission_result';
  Object? get submissionResult => this[SUBMISSION_RESULT_KEY];
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
