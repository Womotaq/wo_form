part of 'wo_form.dart';

class _HydratedWoFormStatusCubit extends WoFormStatusCubit
    with HydratedMixin<WoFormStatus> {
  _HydratedWoFormStatusCubit(String key, super.initialState)
    : assert(key.isNotEmpty, 'key must not be empty'),
      id = '$key-WoFormStatusCubit',
      super() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  bool _isCleared = false;

  void clearPersistedState() {
    _isCleared = true;
    clear().ignore();
  }

  @override
  WoFormStatus? fromJson(Json json) => WoFormStatus.fromJson(json);

  @override
  Json? toJson(WoFormStatus state) => _isCleared ? null : state.toJson();
}

class _HydratedWoFormLockCubit extends WoFormLockCubit
    with HydratedMixin<Set<String>> {
  _HydratedWoFormLockCubit(String key)
    : assert(key.isNotEmpty, 'key must not be empty'),
      id = '$key-WoFormLockCubit',
      super._() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  bool _isCleared = false;

  void clearPersistedState() {
    _isCleared = true;
    clear().ignore();
  }

  @override
  Set<String>? fromJson(Json json) {
    final data = json['locks'];
    return data is Iterable<String> ? data.toSet() : null;
  }

  @override
  Json? toJson(Set<String> state) =>
      _isCleared ? null : {'locks': state.toList()};
}

class _HydratedWoFormValuesCubit extends WoFormValuesCubit
    with HydratedMixin<WoFormValues> {
  _HydratedWoFormValuesCubit(
    PersistenceSettings settings,
    super._root,
    super._statusCubit,
    super._lockCubit,
    super._canSubmit, {
    required super.onStatusUpdate,
    required super.onSubmitting,
  }) : _settings = settings,
       id = WoForm._valuesStorageId(settings.key),
       super._() {
    hydrate();

    // hydrate() saves the restored values only when they are a draft. Saved
    // values that hold no change, e.g. left by a version that saved a form as
    // soon as it opened, must not outlive this.
    if (_holdsDraft) {
      _hasSavedDraft = true;
    } else {
      _deleteSavedStates();
    }
  }

  final PersistenceSettings _settings;

  @override
  final String id;
  @override
  String get storagePrefix => '';

  bool _isCleared = false;

  /// Whether the values last given to [toJson] are a draft: only those are
  /// saved.
  bool _holdsDraft = false;

  /// Whether the storage holds this form's draft. It's deleted once, when the
  /// values come back to their initial content.
  bool _hasSavedDraft = false;

  /// The initial values as they are saved, to compare drafts with. Computed
  /// once for each [_initialValues].
  ({WoFormValues of, WoFormValues saved})? _savedInitialValues;

  /// Paths already reported by [_reportSkipped], to log each field only once.
  final Set<String> _skippedPaths = {};

  @override
  bool get hasSavedDraft => _hasSavedDraft;

  @override
  bool get hasUnsavedChanges {
    if (_isCleared) return false;

    return _save(state).lostPaths.any(
      (path) => !WoFormValues._sameContent(state[path], _initialValues[path]),
    );
  }

  void clearPersistedState() {
    _isCleared = true;
    _hasSavedDraft = false;
    clear().ignore();
  }

  @override
  void _onSubmitSucceeded() {
    if (!_settings.clearOnSubmit) return;

    // The status and lock cubits are cleared too, otherwise their saved state
    // would outlive the values.
    clearPersistedState();
    if (_statusCubit case final _HydratedWoFormStatusCubit statusCubit) {
      statusCubit.clearPersistedState();
    }
    if (_lockCubit case final _HydratedWoFormLockCubit lockCubit) {
      lockCubit.clearPersistedState();
    }
  }

  @override
  void onChange(Change<WoFormValues> change) {
    // Saves the values through toJson, if they are a draft.
    super.onChange(change);

    if (_holdsDraft) {
      _hasSavedDraft = true;
    } else if (_hasSavedDraft) {
      _deleteSavedStates();
    }
  }

  /// Deletes the saved values, status and locks of this form, which go
  /// together. The status and locks are saved again with their next change.
  void _deleteSavedStates() {
    _hasSavedDraft = false;
    unawaited(clear());
    if (_statusCubit case final _HydratedWoFormStatusCubit statusCubit) {
      unawaited(statusCubit.clear());
    }
    if (_lockCubit case final _HydratedWoFormLockCubit lockCubit) {
      unawaited(lockCubit.clear());
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    _logPersistence('Persistence "${_settings.key}": error: $error');
    super.onError(error, stackTrace);
  }

  @override
  WoFormValues? fromJson(Json json) {
    final jsonT = Json.from(json);

    for (final entry in json.entries) {
      final path = entry.key;
      final value = entry.value;
      if (path.startsWith('/__wo_reserved') || value is! List) continue;

      final node = getNode(path: path);
      if (node is MediaInput) {
        // Only MediaUrl is saved, so each entry is restored from its JSON.
        try {
          jsonT[path] = [
            for (final media in value) Media.fromJson(media as Json),
          ];
        } catch (error) {
          jsonT.remove(path);
          _logPersistence(
            'Persistence "${_settings.key}": field "$path" could not be '
            'restored: $error',
          );
        }
        continue;
      }

      // A select whose values are stored as ids keeps them as strings.
      if (node is! SelectInput || node.idsOfAvailibleValues != null) continue;

      if (node.fromJsonT == null) {
        if (node.availibleValues.any(_isNotPrimitive)) {
          _logPersistence(
            'Persistence "${_settings.key}": field "$path" has no fromJsonT, '
            'so its values are restored as raw JSON.',
          );
        }
        continue;
      }

      jsonT[path] = node.valuesFromJson(List<Object?>.from(value));
    }

    // The steps open on the first one, whichever one the draft was left on.
    for (final key in WoFormValues._navigationKeys) {
      jsonT.remove(key);
      if (_initialValues._values.containsKey(key)) {
        jsonT[key] = _initialValues._values[key];
      }
    }

    final restored = WoFormValues(jsonT);

    // The restored values were typed before the form closed, so their fields
    // must count as visited. Otherwise InitialValueKeeper resets them to their
    // initial value. A List, not a Set, because a Set can't be persisted.
    final restoredPaths = [
      for (final path in jsonT.keys)
        if (!path.startsWith('/__wo_reserved')) path,
    ];
    restored._visitedPaths = {
      ...restored._visitedPaths,
      ...restoredPaths,
    }.toList();

    return restored;
  }

  @override
  Json? toJson(WoFormValues state) {
    if (_isCleared) return null;

    final saved = _save(state).json;
    // Values that hold no change are no draft: they aren't saved, and
    // onChange deletes those saved before.
    _holdsDraft = !WoFormValues(
      saved,
    ).isPure(initialValues: _savedInitialValuesFor(_initialValues));
    return _holdsDraft ? saved : null;
  }

  WoFormValues _savedInitialValuesFor(WoFormValues initialValues) {
    final cached = _savedInitialValues;
    if (cached != null && identical(cached.of, initialValues)) {
      return cached.saved;
    }

    final saved = WoFormValues(_save(initialValues).json);
    _savedInitialValues = (of: initialValues, saved: saved);
    return saved;
  }

  /// [values] as they are saved, and the paths of those that can't be, or
  /// only partly, like local files.
  ({Json json, Set<String> lostPaths}) _save(WoFormValues values) {
    final json = Json.from(values.asMap());
    final lostPaths = <String>{};

    // hydrated_bloc writes the whole state at once. If one value can't be
    // encoded, the write fails and nothing is saved. So each value is encoded
    // on its own: the ones that fail are left out, the others are kept.
    for (final path in json.keys.toList()) {
      final value = json[path];
      try {
        final saved = _toJsonValue(path, value);
        jsonEncode(saved);
        json[path] = saved;
        if (value is List && saved is List && saved.length < value.length) {
          lostPaths.add(path);
        }
      } catch (error) {
        json.remove(path);
        lostPaths.add(path);
        _reportSkipped(path, error);
      }
    }

    return (json: json, lostPaths: lostPaths);
  }

  /// Converts the values of a SelectInput, unless they are stored as ids.
  Object? _toJsonValue(String path, Object? value) {
    if (path.startsWith('/__wo_reserved') || value is! List) return value;

    final node = getNode(path: path);
    if (node is MediaInput) {
      // Local files don't survive a restart, so only the URLs are kept.
      final urls = value.whereType<MediaUrl>().toList();
      if (urls.length != value.length && _skippedPaths.add(path)) {
        _logPersistence(
          'Persistence "${_settings.key}": local files of field "$path" are '
          'not saved, only the URLs are.',
        );
      }
      return urls;
    }

    // A select whose values are stored as ids is already JSON-encodable.
    if (node is! SelectInput || node.idsOfAvailibleValues != null) return value;

    return node.valuesToJson(value);
  }

  void _reportSkipped(String path, Object error) {
    if (!_skippedPaths.add(path)) return;

    _logPersistence(
      'Persistence "${_settings.key}": field "$path" is not saved: $error\n'
      '${_hintFor(path)}',
    );
  }

  String _hintFor(String path) {
    final node = _nodeOrNull(path);

    return switch (node) {
      SelectInput() =>
        '  → Give this SelectInput a toJsonT and a fromJsonT, '
            'so its values can be saved.',
      MediaInput() =>
        '  → Only MediaUrl can be saved. '
            'Local files (MediaFile) are skipped.',
      _ =>
        '  → The value must be JSON-encodable: a primitive, '
            'a List or Map, or an object with a toJson() method.',
    };
  }

  WoFormNode? _nodeOrNull(String path) {
    try {
      return getNode(path: path);
    } catch (_) {
      return null;
    }
  }
}

bool _isNotPrimitive(Object? value) =>
    value is! String && value is! num && value is! bool;

void _logPersistence(String message) {
  if (!kDebugMode) return;

  debugPrint('[wo_form] WARNING: $message');
}
