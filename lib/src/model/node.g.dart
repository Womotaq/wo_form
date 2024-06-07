// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputsNodeImpl _$$InputsNodeImplFromJson(Map<String, dynamic> json) =>
    _$InputsNodeImpl(
      id: json['id'] as String,
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter().fromJson(json['inputs'] as List),
      exportType:
          $enumDecodeNullable(_$NodeExportTypeEnumMap, json['exportType']) ??
              NodeExportType.map,
      fieldSettings: json['fieldSettings'] == null
          ? const MapFieldSettings()
          : MapFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InputsNodeImplToJson(_$InputsNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'exportType': _$NodeExportTypeEnumMap[instance.exportType]!,
      'fieldSettings': MapFieldSettings.staticToJson(instance.fieldSettings),
    };

const _$NodeExportTypeEnumMap = {
  NodeExportType.list: 'list',
  NodeExportType.map: 'map',
};
