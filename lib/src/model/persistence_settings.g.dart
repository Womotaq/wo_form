// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersistenceSettings _$PersistenceSettingsFromJson(Map<String, dynamic> json) =>
    _PersistenceSettings(
      key: json['key'] as String,
      clearOnSubmit: json['clearOnSubmit'] as bool? ?? true,
    );

Map<String, dynamic> _$PersistenceSettingsToJson(
  _PersistenceSettings instance,
) => <String, dynamic>{
  'key': instance.key,
  'clearOnSubmit': instance.clearOnSubmit,
};
