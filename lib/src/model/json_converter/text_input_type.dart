import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TextInputTypeConverter extends JsonConverter<TextInputType?, String?> {
  const TextInputTypeConverter();

  @override
  String? toJson(TextInputType? object) =>
      object == null ? null : (object.toJson()['name'] as String).substring(14);

  @override
  TextInputType? fromJson(String? json) =>
      json == null ? null : TextInputTypeX.fromName(json);
}

extension TextInputTypeX on TextInputType {
  static TextInputType? fromName(String typeName) =>
      TextInputType.values.firstWhereOrNull((type) => type.name == typeName);

  String get name => (toJson()['name'] as String).substring(14);
}
