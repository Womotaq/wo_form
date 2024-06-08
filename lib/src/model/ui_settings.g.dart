// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanFieldSettingsImpl _$$BooleanFieldSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanFieldSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      onOffType: $enumDecodeNullable(
          _$BooleanFieldOnOffTypeEnumMap, json['onOffType']),
      onOffPosition: $enumDecodeNullable(
          _$ListTileControlAffinityEnumMap, json['onOffPosition']),
    );

Map<String, dynamic> _$$BooleanFieldSettingsImplToJson(
        _$BooleanFieldSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
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

_$NodeWidgetSettingsImpl _$$NodeWidgetSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NodeWidgetSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      displayMode:
          $enumDecodeNullable(_$NodeDisplayModeEnumMap, json['displayMode']),
    );

Map<String, dynamic> _$$NodeWidgetSettingsImplToJson(
        _$NodeWidgetSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
      'displayMode': _$NodeDisplayModeEnumMap[instance.displayMode],
    };

const _$NodeDisplayModeEnumMap = {
  NodeDisplayMode.card: 'card',
  NodeDisplayMode.tile: 'tile',
};

_$NumFieldSettingsImpl _$$NumFieldSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NumFieldSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
    );

Map<String, dynamic> _$$NumFieldSettingsImplToJson(
        _$NumFieldSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
    };

_$SelectFieldSettingsImpl<T> _$$SelectFieldSettingsImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$SelectFieldSettingsImpl<T>(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      displayMode: $enumDecodeNullable(
          _$SelectFieldDisplayModeEnumMap, json['displayMode']),
    );

Map<String, dynamic> _$$SelectFieldSettingsImplToJson<T>(
        _$SelectFieldSettingsImpl<T> instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
      'displayMode': _$SelectFieldDisplayModeEnumMap[instance.displayMode],
    };

const _$SelectFieldDisplayModeEnumMap = {
  SelectFieldDisplayMode.chip: 'chip',
  SelectFieldDisplayMode.tile: 'tile',
};

_$StringFieldSettingsImpl _$$StringFieldSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$StringFieldSettingsImpl(
      labelText: json['labelText'] as String?,
      hintText: json['hintText'] as String?,
      helperText: json['helperText'] as String?,
      action: $enumDecodeNullable(_$StringFieldActionEnumMap, json['action']),
      submitFormOnFieldSubmitted: json['submitFormOnFieldSubmitted'] as bool?,
      keyboardType: const TextInputTypeConverter()
          .fromJson(json['keyboardType'] as String?),
      obscureText: json['obscureText'] as bool?,
      autocorrect: json['autocorrect'] as bool?,
      autofillHints: (json['autofillHints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      autofocus: json['autofocus'] as bool?,
      textInputAction: $enumDecodeNullable(
          _$TextInputActionEnumMap, json['textInputAction']),
      textCapitalization: $enumDecodeNullable(
          _$TextCapitalizationEnumMap, json['textCapitalization']),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      invalidRegexMessage: json['invalidRegexMessage'] as String?,
    );

Map<String, dynamic> _$$StringFieldSettingsImplToJson(
        _$StringFieldSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'hintText': instance.hintText,
      'helperText': instance.helperText,
      'action': _$StringFieldActionEnumMap[instance.action],
      'submitFormOnFieldSubmitted': instance.submitFormOnFieldSubmitted,
      'keyboardType':
          const TextInputTypeConverter().toJson(instance.keyboardType),
      'obscureText': instance.obscureText,
      'autocorrect': instance.autocorrect,
      'autofillHints': instance.autofillHints,
      'autofocus': instance.autofocus,
      'textInputAction': _$TextInputActionEnumMap[instance.textInputAction],
      'textCapitalization':
          _$TextCapitalizationEnumMap[instance.textCapitalization],
      'maxLines': instance.maxLines,
      'invalidRegexMessage': instance.invalidRegexMessage,
    };

const _$StringFieldActionEnumMap = {
  StringFieldAction.clear: 'clear',
  StringFieldAction.obscure: 'obscure',
};

const _$TextInputActionEnumMap = {
  TextInputAction.none: 'none',
  TextInputAction.unspecified: 'unspecified',
  TextInputAction.done: 'done',
  TextInputAction.go: 'go',
  TextInputAction.search: 'search',
  TextInputAction.send: 'send',
  TextInputAction.next: 'next',
  TextInputAction.previous: 'previous',
  TextInputAction.continueAction: 'continueAction',
  TextInputAction.join: 'join',
  TextInputAction.route: 'route',
  TextInputAction.emergencyCall: 'emergencyCall',
  TextInputAction.newline: 'newline',
};

const _$TextCapitalizationEnumMap = {
  TextCapitalization.words: 'words',
  TextCapitalization.sentences: 'sentences',
  TextCapitalization.characters: 'characters',
  TextCapitalization.none: 'none',
};

_$WoFormUiSettingsImpl _$$WoFormUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$WoFormUiSettingsImpl(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$WoFormUiSettingsImplToJson(
        _$WoFormUiSettingsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
