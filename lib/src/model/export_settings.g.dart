// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExportSettingsImpl _$$ExportSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ExportSettingsImpl(
      exportedMetadata: json['exportedMetadata'] as Map<String, dynamic>?,
      exportType:
          $enumDecodeNullable(_$ExportTypeEnumMap, json['exportType']) ??
              ExportType.map,
    );

Map<String, dynamic> _$$ExportSettingsImplToJson(
        _$ExportSettingsImpl instance) =>
    <String, dynamic>{
      'exportedMetadata': instance.exportedMetadata,
      'exportType': _$ExportTypeEnumMap[instance.exportType]!,
    };

const _$ExportTypeEnumMap = {
  ExportType.list: 'list',
  ExportType.map: 'map',
};
