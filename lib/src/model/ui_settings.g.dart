// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputUiSettings _$InputUiSettingsFromJson(Map<String, dynamic> json) =>
    _InputUiSettings(flex: (json['flex'] as num?)?.toInt());

Map<String, dynamic> _$InputUiSettingsToJson(_InputUiSettings instance) =>
    <String, dynamic>{'flex': instance.flex};

_BooleanInputUiSettings _$BooleanInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _BooleanInputUiSettings(
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
  controlType: $enumDecodeNullable(
    _$BooleanFieldControlTypeEnumMap,
    json['controlType'],
  ),
  controlAffinity: $enumDecodeNullable(
    _$ListTileControlAffinityEnumMap,
    json['controlAffinity'],
  ),
);

Map<String, dynamic> _$BooleanInputUiSettingsToJson(
  _BooleanInputUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'controlType': _$BooleanFieldControlTypeEnumMap[instance.controlType],
  'controlAffinity': _$ListTileControlAffinityEnumMap[instance.controlAffinity],
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

_DateTimeInputUiSettings _$DateTimeInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _DateTimeInputUiSettings(
  dateFormat: json['dateFormat'] as String?,
  timeFormat: json['timeFormat'] as String?,
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
  hintText: json['hintText'] as String?,
  labelFlex: (json['labelFlex'] as num?)?.toInt(),
  addDateText: json['addDateText'] as String?,
  addTimeText: json['addTimeText'] as String?,
  initialEditValue: json['initialEditValue'] == null
      ? null
      : FlexibleDateTime.fromJson(
          json['initialEditValue'] as Map<String, dynamic>,
        ),
  initialDateEntryMode: $enumDecodeNullable(
    _$DatePickerEntryModeEnumMap,
    json['initialDateEntryMode'],
  ),
  initialDatePickerMode: $enumDecodeNullable(
    _$DatePickerModeEnumMap,
    json['initialDatePickerMode'],
  ),
  editMode: $enumDecodeNullable(_$DateEditModeEnumMap, json['editMode']),
  initialTimeEntryMode: $enumDecodeNullable(
    _$TimePickerEntryModeEnumMap,
    json['initialTimeEntryMode'],
  ),
);

Map<String, dynamic> _$DateTimeInputUiSettingsToJson(
  _DateTimeInputUiSettings instance,
) => <String, dynamic>{
  'dateFormat': instance.dateFormat,
  'timeFormat': instance.timeFormat,
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'hintText': instance.hintText,
  'labelFlex': instance.labelFlex,
  'addDateText': instance.addDateText,
  'addTimeText': instance.addTimeText,
  'initialEditValue': instance.initialEditValue?.toJson(),
  'initialDateEntryMode':
      _$DatePickerEntryModeEnumMap[instance.initialDateEntryMode],
  'initialDatePickerMode':
      _$DatePickerModeEnumMap[instance.initialDatePickerMode],
  'editMode': _$DateEditModeEnumMap[instance.editMode],
  'initialTimeEntryMode':
      _$TimePickerEntryModeEnumMap[instance.initialTimeEntryMode],
};

const _$DatePickerEntryModeEnumMap = {
  DatePickerEntryMode.calendar: 'calendar',
  DatePickerEntryMode.input: 'input',
  DatePickerEntryMode.calendarOnly: 'calendarOnly',
  DatePickerEntryMode.inputOnly: 'inputOnly',
};

const _$DatePickerModeEnumMap = {
  DatePickerMode.day: 'day',
  DatePickerMode.year: 'year',
};

const _$DateEditModeEnumMap = {
  DateEditMode.date: 'date',
  DateEditMode.time: 'time',
  DateEditMode.dateAndTime: 'dateAndTime',
};

const _$TimePickerEntryModeEnumMap = {
  TimePickerEntryMode.dial: 'dial',
  TimePickerEntryMode.input: 'input',
  TimePickerEntryMode.dialOnly: 'dialOnly',
  TimePickerEntryMode.inputOnly: 'inputOnly',
};

_DurationInputUiSettings _$DurationInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _DurationInputUiSettings(
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
  hintText: json['hintText'] as String?,
  editMode: $enumDecodeNullable(_$DurationEditModeEnumMap, json['editMode']),
  labelFlex: (json['labelFlex'] as num?)?.toInt(),
  dateTimeLabelText: json['dateTimeLabelText'] as String?,
  dateTimeHelperText: json['dateTimeHelperText'] as String?,
  dateTimeHintText: json['dateTimeHintText'] as String?,
  dateFormat: json['dateFormat'] as String?,
  timeFormat: json['timeFormat'] as String?,
  dateTimeEditMode: $enumDecodeNullable(
    _$DateEditModeEnumMap,
    json['dateTimeEditMode'],
  ),
);

Map<String, dynamic> _$DurationInputUiSettingsToJson(
  _DurationInputUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'hintText': instance.hintText,
  'editMode': _$DurationEditModeEnumMap[instance.editMode],
  'labelFlex': instance.labelFlex,
  'dateTimeLabelText': instance.dateTimeLabelText,
  'dateTimeHelperText': instance.dateTimeHelperText,
  'dateTimeHintText': instance.dateTimeHintText,
  'dateFormat': instance.dateFormat,
  'timeFormat': instance.timeFormat,
  'dateTimeEditMode': _$DateEditModeEnumMap[instance.dateTimeEditMode],
};

const _$DurationEditModeEnumMap = {
  DurationEditMode.dateTime: 'dateTime',
  DurationEditMode.duration: 'duration',
};

_DynamicInputsNodeUiSettings _$DynamicInputsNodeUiSettingsFromJson(
  Map<String, dynamic> json,
) => _DynamicInputsNodeUiSettings(
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
  reorderable: json['reorderable'] as bool?,
);

Map<String, dynamic> _$DynamicInputsNodeUiSettingsToJson(
  _DynamicInputsNodeUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'reorderable': instance.reorderable,
};

_DynamicInputUiSettings _$DynamicInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _DynamicInputUiSettings(
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
);

Map<String, dynamic> _$DynamicInputUiSettingsToJson(
  _DynamicInputUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'helperText': instance.helperText,
};

_InputsNodeUiSettings _$InputsNodeUiSettingsFromJson(
  Map<String, dynamic> json,
) => _InputsNodeUiSettings(
  labelText: json['labelText'] as String?,
  labelTextWhenChildrenHidden: json['labelTextWhenChildrenHidden'] as String?,
  helperText: json['helperText'] as String?,
  childrenVisibility: $enumDecodeNullable(
    _$ChildrenVisibilityEnumMap,
    json['childrenVisibility'],
  ),
  showChildrenInitially: json['showChildrenInitially'] as bool? ?? false,
);

Map<String, dynamic> _$InputsNodeUiSettingsToJson(
  _InputsNodeUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'labelTextWhenChildrenHidden': instance.labelTextWhenChildrenHidden,
  'helperText': instance.helperText,
  'childrenVisibility':
      _$ChildrenVisibilityEnumMap[instance.childrenVisibility],
  'showChildrenInitially': instance.showChildrenInitially,
};

const _$ChildrenVisibilityEnumMap = {
  ChildrenVisibility.always: 'always',
  ChildrenVisibility.whenAsked: 'whenAsked',
};

_MediaInputUiSettings _$MediaInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _MediaInputUiSettings(
  addMediaText: json['addMediaText'] as String?,
  fieldHeight: (json['fieldHeight'] as num?)?.toInt(),
  cropAspectRatioOrCircle: (json['cropAspectRatioOrCircle'] as num?)
      ?.toDouble(),
  cropShowGrid: json['cropShowGrid'] as bool? ?? false,
);

Map<String, dynamic> _$MediaInputUiSettingsToJson(
  _MediaInputUiSettings instance,
) => <String, dynamic>{
  'addMediaText': instance.addMediaText,
  'fieldHeight': instance.fieldHeight,
  'cropAspectRatioOrCircle': instance.cropAspectRatioOrCircle,
  'cropShowGrid': instance.cropShowGrid,
};

_NumInputUiSettings _$NumInputUiSettingsFromJson(Map<String, dynamic> json) =>
    _NumInputUiSettings(
      labelText: json['labelText'] as String?,
      labelFlex: (json['labelFlex'] as num?)?.toInt(),
      helperText: json['helperText'] as String?,
      style: $enumDecodeNullable(_$NumInputStyleEnumMap, json['style']),
    );

Map<String, dynamic> _$NumInputUiSettingsToJson(_NumInputUiSettings instance) =>
    <String, dynamic>{
      'labelText': instance.labelText,
      'labelFlex': instance.labelFlex,
      'helperText': instance.helperText,
      'style': _$NumInputStyleEnumMap[instance.style],
    };

const _$NumInputStyleEnumMap = {
  NumInputStyle.selector: 'selector',
  NumInputStyle.slider: 'slider',
};

_SelectInputUiSettings<T> _$SelectInputUiSettingsFromJson<T>(
  Map<String, dynamic> json,
) => _SelectInputUiSettings<T>(
  flex: (json['flex'] as num?)?.toInt(),
  labelText: json['labelText'] as String?,
  helperText: json['helperText'] as String?,
  hintText: json['hintText'] as String?,
  childrenVisibility: $enumDecodeNullable(
    _$ChildrenVisibilityEnumMap,
    json['childrenVisibility'],
  ),
  labelFlex: (json['labelFlex'] as num?)?.toInt(),
);

Map<String, dynamic> _$SelectInputUiSettingsToJson<T>(
  _SelectInputUiSettings<T> instance,
) => <String, dynamic>{
  'flex': instance.flex,
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'hintText': instance.hintText,
  'childrenVisibility':
      _$ChildrenVisibilityEnumMap[instance.childrenVisibility],
  'labelFlex': instance.labelFlex,
};

_StringInputUiSettings _$StringInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _StringInputUiSettings(
  labelText: json['labelText'] as String?,
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  action: $enumDecodeNullable(_$StringFieldActionEnumMap, json['action']),
  submitFormOnFieldSubmitted: json['submitFormOnFieldSubmitted'] as bool?,
  keyboardType: const TextInputTypeConverter().fromJson(
    json['keyboardType'] as String?,
  ),
  obscureText: json['obscureText'] as bool?,
  autocorrect: json['autocorrect'] as bool?,
  autofillHints: (json['autofillHints'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  autofocus: json['autofocus'] as bool?,
  textInputAction: $enumDecodeNullable(
    _$TextInputActionEnumMap,
    json['textInputAction'],
  ),
  textCapitalization: $enumDecodeNullable(
    _$TextCapitalizationEnumMap,
    json['textCapitalization'],
  ),
  maxLines: (json['maxLines'] as num?)?.toInt(),
  invalidRegexMessage: json['invalidRegexMessage'] as String?,
);

Map<String, dynamic> _$StringInputUiSettingsToJson(
  _StringInputUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'action': _$StringFieldActionEnumMap[instance.action],
  'submitFormOnFieldSubmitted': instance.submitFormOnFieldSubmitted,
  'keyboardType': const TextInputTypeConverter().toJson(instance.keyboardType),
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

_WoFormUiSettings _$WoFormUiSettingsFromJson(Map<String, dynamic> json) =>
    _WoFormUiSettings(
      titleText: json['titleText'] as String? ?? '',
      titlePosition:
          $enumDecodeNullable(
            _$WoFormTitlePositionEnumMap,
            json['titlePosition'],
          ) ??
          WoFormTitlePosition.header,
      submitMode: json['submitMode'] == null
          ? const WoFormSubmitMode.standard()
          : WoFormSubmitMode.fromJson(
              json['submitMode'] as Map<String, dynamic>,
            ),
      canModifySubmittedValues: json['canModifySubmittedValues'] as bool?,
      showErrors:
          $enumDecodeNullable(_$ShowErrorsEnumMap, json['showErrors']) ??
          ShowErrors.progressively,
      theme: json['theme'] == null
          ? null
          : WoFormThemeData.fromJson(json['theme'] as Map<String, dynamic>),
      padding: const EdgeInsetsNullableConverter().fromJson(
        json['padding'] as Map<String, dynamic>?,
      ),
    );

Map<String, dynamic> _$WoFormUiSettingsToJson(_WoFormUiSettings instance) =>
    <String, dynamic>{
      'titleText': instance.titleText,
      'titlePosition': _$WoFormTitlePositionEnumMap[instance.titlePosition]!,
      'submitMode': instance.submitMode.toJson(),
      'canModifySubmittedValues': instance.canModifySubmittedValues,
      'showErrors': _$ShowErrorsEnumMap[instance.showErrors]!,
      'theme': instance.theme?.toJson(),
      'padding': const EdgeInsetsNullableConverter().toJson(instance.padding),
    };

const _$WoFormTitlePositionEnumMap = {
  WoFormTitlePosition.header: 'header',
  WoFormTitlePosition.appBar: 'appBar',
};

const _$ShowErrorsEnumMap = {
  ShowErrors.always: 'always',
  ShowErrors.progressively: 'progressively',
};

StandardSubmitMode _$StandardSubmitModeFromJson(Map<String, dynamic> json) =>
    StandardSubmitMode(
      submitText: json['submitText'] as String?,
      disableSubmitMode:
          $enumDecodeNullable(
            _$DisableSubmitButtonEnumMap,
            json['disableSubmitMode'],
          ) ??
          DisableSubmitButton.never,
      buttonPosition:
          $enumDecodeNullable(
            _$SubmitButtonPositionEnumMap,
            json['buttonPosition'],
          ) ??
          SubmitButtonPosition.body,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StandardSubmitModeToJson(StandardSubmitMode instance) =>
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
  SubmitButtonPosition.floating: 'floating',
};

MultiStepSubmitMode _$MultiStepSubmitModeFromJson(Map<String, dynamic> json) =>
    MultiStepSubmitMode(
      submitText: json['submitText'] as String?,
      nextText: json['nextText'] as String?,
      disableSubmitMode:
          $enumDecodeNullable(
            _$DisableSubmitButtonEnumMap,
            json['disableSubmitMode'],
          ) ??
          DisableSubmitButton.never,
      showProgressIndicator: json['showProgressIndicator'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiStepSubmitModeToJson(
  MultiStepSubmitMode instance,
) => <String, dynamic>{
  'submitText': instance.submitText,
  'nextText': instance.nextText,
  'disableSubmitMode':
      _$DisableSubmitButtonEnumMap[instance.disableSubmitMode]!,
  'showProgressIndicator': instance.showProgressIndicator,
  'runtimeType': instance.$type,
};
