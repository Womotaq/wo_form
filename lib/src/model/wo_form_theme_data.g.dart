// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WoFormThemeData _$WoFormThemeDataFromJson(Map<String, dynamic> json) =>
    _WoFormThemeData(
      dynamicInputsNodeAddButtonPosition: $enumDecodeNullable(
        _$DynamicInputsNodeAddButtonPositionEnumMap,
        json['dynamicInputsNodeAddButtonPosition'],
      ),
      stringFieldErrorLocation: $enumDecodeNullable(
        _$FieldElementLocationEnumMap,
        json['stringFieldErrorLocation'],
      ),
      stringFieldHelperLocation: $enumDecodeNullable(
        _$FieldElementLocationEnumMap,
        json['stringFieldHelperLocation'],
      ),
      stringFieldLabelLocation: $enumDecodeNullable(
        _$FieldElementLocationEnumMap,
        json['stringFieldLabelLocation'],
      ),
      stringFieldPrefixIconLocation: $enumDecodeNullable(
        _$FieldElementLocationEnumMap,
        json['stringFieldPrefixIconLocation'],
      ),
      maxWidth: (json['maxWidth'] as num?)?.toDouble(),
      spacing: (json['spacing'] as num?)?.toDouble(),
      showAsteriskIfRequired: json['showAsteriskIfRequired'] as bool?,
    );

Map<String, dynamic> _$WoFormThemeDataToJson(_WoFormThemeData instance) =>
    <String, dynamic>{
      'dynamicInputsNodeAddButtonPosition':
          _$DynamicInputsNodeAddButtonPositionEnumMap[instance
              .dynamicInputsNodeAddButtonPosition],
      'stringFieldErrorLocation':
          _$FieldElementLocationEnumMap[instance.stringFieldErrorLocation],
      'stringFieldHelperLocation':
          _$FieldElementLocationEnumMap[instance.stringFieldHelperLocation],
      'stringFieldLabelLocation':
          _$FieldElementLocationEnumMap[instance.stringFieldLabelLocation],
      'stringFieldPrefixIconLocation':
          _$FieldElementLocationEnumMap[instance.stringFieldPrefixIconLocation],
      'maxWidth': instance.maxWidth,
      'spacing': instance.spacing,
      'showAsteriskIfRequired': instance.showAsteriskIfRequired,
    };

const _$DynamicInputsNodeAddButtonPositionEnumMap = {
  DynamicInputsNodeAddButtonPosition.header: 'header',
  DynamicInputsNodeAddButtonPosition.footer: 'footer',
};

const _$FieldElementLocationEnumMap = {
  FieldElementLocation.inside: 'inside',
  FieldElementLocation.outside: 'outside',
};
