// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanInputUiSettingsImpl _$$BooleanInputUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanInputUiSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      controlType: $enumDecodeNullable(
          _$BooleanFieldControlTypeEnumMap, json['controlType']),
      controlAffinity: $enumDecodeNullable(
          _$ListTileControlAffinityEnumMap, json['controlAffinity']),
    );

Map<String, dynamic> _$$BooleanInputUiSettingsImplToJson(
        _$BooleanInputUiSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
      'controlType': _$BooleanFieldControlTypeEnumMap[instance.controlType],
      'controlAffinity':
          _$ListTileControlAffinityEnumMap[instance.controlAffinity],
    };

const _$BooleanFieldControlTypeEnumMap = {
  BooleanFieldControlType.checkbox: 'checkbox',
  BooleanFieldControlType.switchButton: 'switchButton',
};

const _$ListTileControlAffinityEnumMap = {
  ListTileControlAffinity.leading: 'leading',
  ListTileControlAffinity.trailing: 'trailing',
  ListTileControlAffinity.platform: 'platform',
};

_$DynamicInputsNodeUiSettingsImpl _$$DynamicInputsNodeUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputsNodeUiSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
    );

Map<String, dynamic> _$$DynamicInputsNodeUiSettingsImplToJson(
        _$DynamicInputsNodeUiSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
    };

_$InputsNodeUiSettingsImpl _$$InputsNodeUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$InputsNodeUiSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      displayMode: $enumDecodeNullable(
          _$InputsNodeDisplayModeEnumMap, json['displayMode']),
    );

Map<String, dynamic> _$$InputsNodeUiSettingsImplToJson(
        _$InputsNodeUiSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
      'displayMode': _$InputsNodeDisplayModeEnumMap[instance.displayMode],
    };

const _$InputsNodeDisplayModeEnumMap = {
  InputsNodeDisplayMode.expanded: 'expanded',
  InputsNodeDisplayMode.tapToExpand: 'tapToExpand',
};

_$NumInputUiSettingsImpl _$$NumInputUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NumInputUiSettingsImpl(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
    );

Map<String, dynamic> _$$NumInputUiSettingsImplToJson(
        _$NumInputUiSettingsImpl instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
    };

_$SelectInputUiSettingsImpl<T> _$$SelectInputUiSettingsImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$SelectInputUiSettingsImpl<T>(
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      hintText: json['hintText'] as String?,
      displayMode: $enumDecodeNullable(
          _$SelectFieldDisplayModeEnumMap, json['displayMode']),
      submitFormOnSelect: json['submitFormOnSelect'] as bool? ?? false,
    );

Map<String, dynamic> _$$SelectInputUiSettingsImplToJson<T>(
        _$SelectInputUiSettingsImpl<T> instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'helperText': instance.helperText,
      'hintText': instance.hintText,
      'displayMode': _$SelectFieldDisplayModeEnumMap[instance.displayMode],
      'submitFormOnSelect': instance.submitFormOnSelect,
    };

const _$SelectFieldDisplayModeEnumMap = {
  SelectFieldDisplayMode.tile: 'tile',
  SelectFieldDisplayMode.chip: 'chip',
};

_$StringInputUiSettingsImpl _$$StringInputUiSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$StringInputUiSettingsImpl(
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

Map<String, dynamic> _$$StringInputUiSettingsImplToJson(
        _$StringInputUiSettingsImpl instance) =>
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
      titleText: json['titleText'] as String? ?? '',
      titlePosition: $enumDecodeNullable(
              _$WoFormTitlePositionEnumMap, json['titlePosition']) ??
          WoFormTitlePosition.header,
      submitMode: json['submitMode'] == null
          ? const WoFormSubmitMode.standard()
          : WoFormSubmitMode.fromJson(
              json['submitMode'] as Map<String, dynamic>),
      showAsteriskIfRequired: json['showAsteriskIfRequired'] as bool?,
    );

Map<String, dynamic> _$$WoFormUiSettingsImplToJson(
        _$WoFormUiSettingsImpl instance) =>
    <String, dynamic>{
      'titleText': instance.titleText,
      'titlePosition': _$WoFormTitlePositionEnumMap[instance.titlePosition]!,
      'submitMode': WoFormSubmitMode.staticToJson(instance.submitMode),
      'showAsteriskIfRequired': instance.showAsteriskIfRequired,
    };

const _$WoFormTitlePositionEnumMap = {
  WoFormTitlePosition.header: 'header',
  WoFormTitlePosition.appBar: 'appBar',
};

_$StandardSubmitModeImpl _$$StandardSubmitModeImplFromJson(
        Map<String, dynamic> json) =>
    _$StandardSubmitModeImpl(
      submitText: json['submitText'] as String?,
      disableSubmitMode: $enumDecodeNullable(
              _$DisableSubmitButtonEnumMap, json['disableSubmitMode']) ??
          DisableSubmitButton.never,
      buttonPosition: $enumDecodeNullable(
              _$SubmitButtonPositionEnumMap, json['buttonPosition']) ??
          SubmitButtonPosition.body,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StandardSubmitModeImplToJson(
        _$StandardSubmitModeImpl instance) =>
    <String, dynamic>{
      'submitText': instance.submitText,
      'disableSubmitMode':
          _$DisableSubmitButtonEnumMap[instance.disableSubmitMode]!,
      'buttonPosition': _$SubmitButtonPositionEnumMap[instance.buttonPosition]!,
      'runtimeType': instance.$type,
    };

const _$DisableSubmitButtonEnumMap = {
  DisableSubmitButton.never: 'never',
  DisableSubmitButton.whenInvalid: 'whenInvalid',
  DisableSubmitButton.whenInitialOrSubmitSuccess: 'whenInitialOrSubmitSuccess',
};

const _$SubmitButtonPositionEnumMap = {
  SubmitButtonPosition.body: 'body',
  SubmitButtonPosition.appBar: 'appBar',
  SubmitButtonPosition.bottomBar: 'bottomBar',
};

_$PageByPageSubmitModeImpl _$$PageByPageSubmitModeImplFromJson(
        Map<String, dynamic> json) =>
    _$PageByPageSubmitModeImpl(
      submitText: json['submitText'] as String?,
      nextText: json['nextText'] as String?,
      disableSubmitMode: $enumDecodeNullable(
              _$DisableSubmitButtonEnumMap, json['disableSubmitMode']) ??
          DisableSubmitButton.never,
      showProgressIndicator: json['showProgressIndicator'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PageByPageSubmitModeImplToJson(
        _$PageByPageSubmitModeImpl instance) =>
    <String, dynamic>{
      'submitText': instance.submitText,
      'nextText': instance.nextText,
      'disableSubmitMode':
          _$DisableSubmitButtonEnumMap[instance.disableSubmitMode]!,
      'showProgressIndicator': instance.showProgressIndicator,
      'runtimeType': instance.$type,
    };
