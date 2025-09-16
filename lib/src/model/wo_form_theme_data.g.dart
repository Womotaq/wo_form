// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WoFormThemeData _$WoFormThemeDataFromJson(Map<String, dynamic> json) =>
    _WoFormThemeData(
      maxWidth: (json['maxWidth'] as num?)?.toDouble(),
      spacing: (json['spacing'] as num?)?.toDouble(),
      showAsteriskIfRequired: json['showAsteriskIfRequired'] as bool?,
    );

Map<String, dynamic> _$WoFormThemeDataToJson(_WoFormThemeData instance) =>
    <String, dynamic>{
      'maxWidth': instance.maxWidth,
      'spacing': instance.spacing,
      'showAsteriskIfRequired': instance.showAsteriskIfRequired,
    };
