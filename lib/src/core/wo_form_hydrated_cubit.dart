part of 'wo_form.dart';

class _HydratedWoFormStatusCubit extends WoFormStatusCubit
    with HydratedMixin<WoFormStatus> {
  _HydratedWoFormStatusCubit(String hydratationId, super.initialState)
    : assert(
        hydratationId.isNotEmpty,
        'hydratationId must not be an empty string',
      ),
      id = '$hydratationId-WoFormStatusCubit',
      super() {
    hydrate();
  }

  @override
  final String id;
  @override
  String get storagePrefix => '';

  @override
  WoFormStatus? fromJson(Json json) => WoFormStatus.fromJson(json);

  @override
  Json? toJson(WoFormStatus state) => state.toJson();
}

class _HydratedWoFormLockCubit extends WoFormLockCubit
    with HydratedMixin<Set<String>> {
  _HydratedWoFormLockCubit(String hydratationId)
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
  Set<String>? fromJson(Json json) {
    final data = json['locks'];
    return data is Iterable<String> ? data.toSet() : null;
  }

  @override
  Json? toJson(Set<String> state) => {'locks': state.toList()};
}

class _HydratedWoFormValuesCubit extends WoFormValuesCubit
    with HydratedMixin<WoFormValues> {
  _HydratedWoFormValuesCubit(
    String hydratationId,
    super._root,
    super._statusCubit,
    super._lockCubit,
    super._canSubmit, {
    required super.onStatusUpdate,
    required super.onSubmitting,
  }) : assert(
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

  /// Paths already reported by [_reportSkipped], to log each field only once.
  final Set<String> _skippedPaths = {};

  @override
  void onError(Object error, StackTrace stackTrace) {
    _logHydration('Draft "$id": hydration error: $error', warning: true);
    super.onError(error, stackTrace);
  }

  @override
  WoFormValues? fromJson(Json json) {
    final jsonT = Json.from(json);

    for (final entry in json.entries) {
      if (entry.value is! List) continue; // SelectInput's value is a list
      final values = entry.value as List;
      if (values.firstOrNull is String) {
        continue; // id of selected value
      }

      final path = entry.key;
      final node = getNode(path: path);
      if (node is! SelectInput) continue;
      final fromJsonT = node.fromJsonT;
      if (fromJsonT == null) continue;

      jsonT[path] = values.map(fromJsonT).toList();
    }

    final restored = WoFormValues(jsonT);

    // The restored values were typed before the form closed, so their fields
    // must count as visited. Otherwise InitialValueKeeper resets them to their
    // initial value. A List, not a Set, because a Set can't be hydrated.
    final restoredPaths = [
      for (final path in jsonT.keys)
        if (!path.startsWith('/__wo_reserved')) path,
    ];
    restored._visitedPaths = {
      ...restored._visitedPaths,
      ...restoredPaths,
    }.toList();

    _logHydration('Draft "$id": restored ${restoredPaths.length} field(s).');
    return restored;
  }

  @override
  Json? toJson(WoFormValues state) {
    final json = Json.from(state.asMap());

    // hydrated_bloc writes the whole state at once. If one value can't be
    // encoded, the write fails and the draft stops saving. So each value is
    // encoded on its own: the ones that fail are left out, the others are kept.
    for (final path in json.keys.toList()) {
      try {
        final value = _toJsonValue(path, json[path]);
        jsonEncode(value);
        json[path] = value;
      } catch (error) {
        json.remove(path);
        _reportSkipped(path, error);
      }
    }

    return json;
  }

  /// Converts the values of a SelectInput with its toJsonT, if it has one.
  Object? _toJsonValue(String path, Object? value) {
    if (path.startsWith('/__wo_reserved')) return value;
    if (value is! List || value.firstOrNull is String) return value; // id

    final node = getNode(path: path);
    final toJsonT = node is SelectInput ? node.toJsonT : null;
    return toJsonT == null ? value : value.map(toJsonT).toList();
  }

  void _reportSkipped(String path, Object error) {
    if (!_skippedPaths.add(path)) return;

    _logHydration(
      'Field "$path" is not saved in draft "$id": $error\n'
      '${_hintFor(path)}',
      warning: true,
    );
  }

  String _hintFor(String path) {
    final node = _nodeOrNull(path);

    return switch (node) {
      SelectInput() =>
        '  → Give this SelectInput a toJsonT and a fromJsonT, '
            'so its values can be saved.',
      MediaInput() =>
        '  → Only MediaUrl can be saved in a draft. '
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

void _logHydration(String message, {bool warning = false}) {
  if (!kDebugMode) return;

  debugPrint('[wo_form] ${warning ? 'WARNING' : 'INFO'}: $message');
}
