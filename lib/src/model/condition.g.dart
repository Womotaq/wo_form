// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionValueImpl _$$ConditionValueImplFromJson(Map<String, dynamic> json) =>
    _$ConditionValueImpl(
      path: json['path'] as String,
      isEqualTo: json['isEqualTo'],
      isNotEqualTo: json['isNotEqualTo'],
      isNull: json['isNull'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConditionValueImplToJson(
        _$ConditionValueImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'isEqualTo': instance.isEqualTo,
      'isNotEqualTo': instance.isNotEqualTo,
      'isNull': instance.isNull,
      'runtimeType': instance.$type,
    };

_$ConditionAndImpl _$$ConditionAndImplFromJson(Map<String, dynamic> json) =>
    _$ConditionAndImpl(
      const ConditionsListConverter().fromJson(json['conditions'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConditionAndImplToJson(_$ConditionAndImpl instance) =>
    <String, dynamic>{
      'conditions': const ConditionsListConverter().toJson(instance.conditions),
      'runtimeType': instance.$type,
    };

_$ConditionOrImpl _$$ConditionOrImplFromJson(Map<String, dynamic> json) =>
    _$ConditionOrImpl(
      const ConditionsListConverter().fromJson(json['conditions'] as List),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConditionOrImplToJson(_$ConditionOrImpl instance) =>
    <String, dynamic>{
      'conditions': const ConditionsListConverter().toJson(instance.conditions),
      'runtimeType': instance.$type,
    };
