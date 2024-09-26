// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      path: json['path'] as String,
      isEqualTo: json['isEqualTo'],
      isNotEqualTo: json['isNotEqualTo'],
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'isEqualTo': instance.isEqualTo,
      'isNotEqualTo': instance.isNotEqualTo,
    };
