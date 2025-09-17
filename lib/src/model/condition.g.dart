// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionValue _$ConditionValueFromJson(Map<String, dynamic> json) =>
    ConditionValue(
      path: json['path'] as String,
      isEqualTo: json['isEqualTo'],
      isNotEqualTo: json['isNotEqualTo'],
      isNull: json['isNull'] as bool?,
      isFocused: json['isFocused'] as bool?,
      matchesRegex: json['matchesRegex'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConditionValueToJson(ConditionValue instance) =>
    <String, dynamic>{
      'path': instance.path,
      'isEqualTo': instance.isEqualTo,
      'isNotEqualTo': instance.isNotEqualTo,
      'isNull': instance.isNull,
      'isFocused': instance.isFocused,
      'matchesRegex': instance.matchesRegex,
      'runtimeType': instance.$type,
    };

ConditionAnd _$ConditionAndFromJson(Map<String, dynamic> json) => ConditionAnd(
  (json['conditions'] as List<dynamic>)
      .map((e) => Condition.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionAndToJson(ConditionAnd instance) =>
    <String, dynamic>{
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

ConditionOr _$ConditionOrFromJson(Map<String, dynamic> json) => ConditionOr(
  (json['conditions'] as List<dynamic>)
      .map((e) => Condition.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionOrToJson(ConditionOr instance) =>
    <String, dynamic>{
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

ConditionNot _$ConditionNotFromJson(Map<String, dynamic> json) => ConditionNot(
  Condition.fromJson(json['condition'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionNotToJson(ConditionNot instance) =>
    <String, dynamic>{
      'condition': instance.condition.toJson(),
      'runtimeType': instance.$type,
    };
