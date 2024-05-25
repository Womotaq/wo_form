import 'package:freezed_annotation/freezed_annotation.dart';

class UnknownTypeConverter<T> extends JsonConverter<T?, Map<String, String>?> {
  const UnknownTypeConverter();

  @override
  T? fromJson(Map<String, String>? json) {
    if (json == null) return null;

    final type = json['type'];
    if (type == null) return null;

    final value = json['value'];
    if (value == null) return null;

    switch (type) {
      case 'String':
        if (String is T || String == T) return json as T;
      case 'bool':
        if (bool is T || bool == T) return bool.tryParse(value) as T?;
      case 'int':
        if (int is T || int == T) return int.tryParse(value) as T?;
      case 'double':
        if (double is T || double == T) return double.tryParse(value) as T?;
      case 'num':
        if (num is T || num == T) return num.tryParse(value) as T?;
    }

    return null;
  }

  @override
  Map<String, String>? toJson(T? object) => {
        'type': T.toString(),
        'value': object.toString(),
      };
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
