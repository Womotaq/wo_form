// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      id: json['id'] as String? ?? r'$root$',
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter()
              .fromJson(json['inputs'] as List<Map<String, dynamic>>),
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'runtimeType': instance.$type,
    };

_$InputsNodeImpl _$$InputsNodeImplFromJson(Map<String, dynamic> json) =>
    _$InputsNodeImpl(
      id: json['id'] as String,
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter()
              .fromJson(json['inputs'] as List<Map<String, dynamic>>),
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
      fieldSettings: json['fieldSettings'] == null
          ? const MapFieldSettings()
          : MapFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputsNodeImplToJson(_$InputsNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'fieldSettings': MapFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };
