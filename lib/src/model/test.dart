import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class TypedValues<T> with _$TypedValues<T> {
  const factory TypedValues({
    @TypedListConverter<T>() List<T>? values,
  }) = _TypedValues<T>;

  const TypedValues._();

  factory TypedValues.fromJson(
    Map<String, dynamic> json,
    // T Function(Object? json),
  ) =>
      _$TypedValuesFromJson<T>(json);
}

class TypedListConverter<T> extends JsonConverter<List<T>?, List<String>?> {
  const TypedListConverter();

  @override
  List<T>? fromJson(List<String>? json) {
    if (json == null) return null;

    switch (T) {
      case String:
        return json as List<T>?;
      case bool:
        return json.map(bool.tryParse).whereType<bool>().toList() as List<T>?;
      case int:
        return json.map(int.tryParse).whereType<int>().toList() as List<T>?;
      case double:
        return json.map(double.tryParse).whereType<double>().toList()
            as List<T>?;
      case num:
        return json.map(num.tryParse).whereType<num>().toList() as List<T>?;
      default:
        return null;
    }
  }

  @override
  List<String>? toJson(List<T>? object) =>
      object?.map((value) => value.toString()).toList();
}
