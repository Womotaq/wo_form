// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanFieldThemeImpl _$$BooleanFieldThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanFieldThemeImpl(
      labelText: json['labelText'] as String?,
      onOffType: $enumDecodeNullable(
          _$BooleanFieldOnOffTypeEnumMap, json['onOffType']),
      onOffPosition: $enumDecodeNullable(
          _$ListTileControlAffinityEnumMap, json['onOffPosition']),
    );

Map<String, dynamic> _$$BooleanFieldThemeImplToJson(
        _$BooleanFieldThemeImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'onOffType': _$BooleanFieldOnOffTypeEnumMap[instance.onOffType],
      'onOffPosition': _$ListTileControlAffinityEnumMap[instance.onOffPosition],
    };

const _$BooleanFieldOnOffTypeEnumMap = {
  BooleanFieldOnOffType.checkbox: 'checkbox',
  BooleanFieldOnOffType.switchButton: 'switchButton',
};

const _$ListTileControlAffinityEnumMap = {
  ListTileControlAffinity.leading: 'leading',
  ListTileControlAffinity.trailing: 'trailing',
  ListTileControlAffinity.platform: 'platform',
};

_$SelectStringFieldThemeImpl _$$SelectStringFieldThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectStringFieldThemeImpl(
      labelText: json['labelText'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      displayMode: $enumDecodeNullable(
          _$SelectFieldDisplayModeEnumMap, json['displayMode']),
    );

Map<String, dynamic> _$$SelectStringFieldThemeImplToJson(
        _$SelectStringFieldThemeImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'values': instance.values,
      'displayMode': _$SelectFieldDisplayModeEnumMap[instance.displayMode],
    };

const _$SelectFieldDisplayModeEnumMap = {
  SelectFieldDisplayMode.selectChip: 'selectChip',
  SelectFieldDisplayMode.radios: 'radios',
};
