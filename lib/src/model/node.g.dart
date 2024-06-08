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
      uiSettings: json['uiSettings'] == null
          ? const InputsNodeWidgetSettings()
          : InputsNodeWidgetSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InputsNodeImplToJson(_$InputsNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'exportType': _$NodeExportTypeEnumMap[instance.exportType]!,
      'uiSettings': InputsNodeWidgetSettings.staticToJson(instance.uiSettings),
    };

const _$NodeExportTypeEnumMap = {
  NodeExportType.list: 'list',
  NodeExportType.map: 'map',
};
