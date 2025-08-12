import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wo_form/wo_form.dart';

class EdgeInsetsNullableConverter extends JsonConverter<EdgeInsets?, Json?> {
  const EdgeInsetsNullableConverter();

  @override
  EdgeInsets? fromJson(Json? json) => json == null
      ? null
      : EdgeInsets.fromLTRB(
          json['left'] as double? ?? 0,
          json['top'] as double? ?? 0,
          json['right'] as double? ?? 0,
          json['bottom'] as double? ?? 0,
        );

  @override
  Json? toJson(EdgeInsets? object) => object == null
      ? null
      : {
          'left': object.left,
          'top': object.top,
          'right': object.right,
          'bottom': object.bottom,
        };
}
