// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_date_ui_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickDateUiSettings _$PickDateUiSettingsFromJson(Map<String, dynamic> json) =>
    _PickDateUiSettings(
      dateFormat: json['dateFormat'] as String?,
      presentationMode: $enumDecodeNullable(
        _$PickDatePresentationModeEnumMap,
        json['presentationMode'],
      ),
    );

Map<String, dynamic> _$PickDateUiSettingsToJson(_PickDateUiSettings instance) =>
    <String, dynamic>{
      'dateFormat': instance.dateFormat,
      'presentationMode':
          _$PickDatePresentationModeEnumMap[instance.presentationMode],
    };

const _$PickDatePresentationModeEnumMap = {
  PickDatePresentationMode.page: 'page',
  PickDatePresentationMode.dialog: 'dialog',
};
