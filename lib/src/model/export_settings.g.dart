// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExportSettingsImpl _$$ExportSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ExportSettingsImpl(
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      type: $enumDecodeNullable(_$ExportTypeEnumMap, json['type']) ??
          ExportType.map,
    );

Map<String, dynamic> _$$ExportSettingsImplToJson(
        _$ExportSettingsImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'type': _$ExportTypeEnumMap[instance.type]!,
    };

const _$ExportTypeEnumMap = {
  ExportType.list: 'list',
  ExportType.map: 'map',
  ExportType.mergeWithParent: 'mergeWithParent',
};
