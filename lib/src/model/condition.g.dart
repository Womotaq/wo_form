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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConditionValueToJson(ConditionValue instance) =>
    <String, dynamic>{
      'path': instance.path,
      'isEqualTo': instance.isEqualTo,
      'isNotEqualTo': instance.isNotEqualTo,
      'isNull': instance.isNull,
      'runtimeType': instance.$type,
    };

ConditionAnd _$ConditionAndFromJson(Map<String, dynamic> json) => ConditionAnd(
      const ConditionsListConverter().fromJson(json['conditions'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConditionAndToJson(ConditionAnd instance) =>
    <String, dynamic>{
      'conditions': const ConditionsListConverter().toJson(instance.conditions),
      'runtimeType': instance.$type,
    };

ConditionOr _$ConditionOrFromJson(Map<String, dynamic> json) => ConditionOr(
      const ConditionsListConverter().fromJson(json['conditions'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConditionOrToJson(ConditionOr instance) =>
    <String, dynamic>{
      'conditions': const ConditionsListConverter().toJson(instance.conditions),
      'runtimeType': instance.$type,
    };
