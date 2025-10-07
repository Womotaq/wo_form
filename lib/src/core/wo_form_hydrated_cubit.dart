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

  @override
  WoFormValues? fromJson(Json json) {
    final jsonT = Json.from(json);

    for (final entry in json.entries) {
      if (entry.value is! List) continue; // SelectInput's value is a list
      final values = entry.value as List;
      if (values.firstOrNull is String) {
        continue; // id of selected value or SelectStringInput
      }

      final path = entry.key;
      final node = getNode(path: path);
      if (node is! SelectInput) continue;
      final fromJsonT = node.fromJsonT;
      if (fromJsonT == null) continue;

      jsonT[path] = values.map(fromJsonT).toList();
    }

    return WoFormValues(jsonT);
  }

  @override
  Json? toJson(WoFormValues state) {
    final json = Json.from(state.asMap());

    for (final entry in state.entries) {
      if (entry.value is! List) continue; // SelectInput's value is a list
      final values = entry.value as List;
      if (values.firstOrNull is String) {
        continue; // id of selected value or SelectStringInput
      }

      final path = entry.key;
      final node = getNode(path: path);
      if (node is! SelectInput) continue;
      final toJsonT = node.toJsonT;
      if (toJsonT == null) continue;

      json[path] = values.map(toJsonT).toList();
    }

    return json;
  }
}
