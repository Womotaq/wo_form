import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class UnknownTypeConverter<T> extends JsonConverter<T?, String?> {
  const UnknownTypeConverter();

  @override
  T? fromJson(String? json) {
    if (json == null) return null;

    switch (T) {
      case String:
        return json as T;
      case bool:
        return bool.tryParse(json) as T;
      case int:
        return int.tryParse(json) as T;
      case double:
        return double.tryParse(json) as T;
      case num:
        return num.tryParse(json) as T;
      default:
        return null;
    }
  }

  @override
  String? toJson(T? object) => object?.toString();
}

class UnknownTypeListConverter<T>
    extends JsonConverter<List<T>?, List<String>?> {
  const UnknownTypeListConverter();

  @override
  List<T>? fromJson(List<String>? json) {
    if (json == null) return null;

    switch (T) {
      case String:
        return json as List<T>?;
      case bool:
        return json.map(bool.tryParse).whereNotNull().toList() as List<T>?;
      case int:
        return json.map(int.tryParse).whereNotNull().toList() as List<T>?;
      case double:
        return json.map(double.tryParse).whereNotNull().toList() as List<T>?;
      case num:
        return json.map(num.tryParse).whereNotNull().toList() as List<T>?;
      default:
        return null;
    }
  }

  @override
  List<String>? toJson(List<T>? object) =>
      object?.map((value) => value.toString()).toList();
}
