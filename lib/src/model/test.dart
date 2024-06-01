import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class TypedValues<T> with _$TypedValues<T> {
  const factory TypedValues({
    @Default([]) List<T> values,
    SelectFieldSettings<T>? fieldSettings,
  }) = _TypedValues<T>;

  const TypedValues._();

  factory TypedValues.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$TypedValuesFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$TypedValuesToJson<T>(this, toJsonT);
  }

  void test() {
    values.first;
  }
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
