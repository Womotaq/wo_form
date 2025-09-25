// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WoFormThemeData _$WoFormThemeDataFromJson(Map<String, dynamic> json) =>
    _WoFormThemeData(
      stringFieldErrorLocation: $enumDecodeNullable(
        _$StringFieldLocationEnumMap,
        json['stringFieldErrorLocation'],
      ),
      stringFieldHelperLocation: $enumDecodeNullable(
        _$StringFieldLocationEnumMap,
        json['stringFieldHelperLocation'],
      ),
      stringFieldLabelLocation: $enumDecodeNullable(
        _$StringFieldLocationEnumMap,
        json['stringFieldLabelLocation'],
      ),
      stringFieldPrefixIconLocation: $enumDecodeNullable(
        _$StringFieldLocationEnumMap,
        json['stringFieldPrefixIconLocation'],
      ),
      maxWidth: (json['maxWidth'] as num?)?.toDouble(),
      spacing: (json['spacing'] as num?)?.toDouble(),
      showAsteriskIfRequired: json['showAsteriskIfRequired'] as bool?,
    );

Map<String, dynamic> _$WoFormThemeDataToJson(_WoFormThemeData instance) =>
    <String, dynamic>{
      'stringFieldErrorLocation':
          _$StringFieldLocationEnumMap[instance.stringFieldErrorLocation],
      'stringFieldHelperLocation':
          _$StringFieldLocationEnumMap[instance.stringFieldHelperLocation],
      'stringFieldLabelLocation':
          _$StringFieldLocationEnumMap[instance.stringFieldLabelLocation],
      'stringFieldPrefixIconLocation':
          _$StringFieldLocationEnumMap[instance.stringFieldPrefixIconLocation],
      'maxWidth': instance.maxWidth,
      'spacing': instance.spacing,
      'showAsteriskIfRequired': instance.showAsteriskIfRequired,
    };

const _$StringFieldLocationEnumMap = {
  StringFieldLocation.inside: 'inside',
  StringFieldLocation.outside: 'outside',
};
