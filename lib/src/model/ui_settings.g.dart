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
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
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
  'headerFlex': instance.headerFlex,
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
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
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
  'headerFlex': instance.headerFlex,
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
  oddEvenRowColors: json['oddEvenRowColors'] as bool?,
  addButtonText: json['addButtonText'] as String?,
  addButtonPosition: $enumDecodeNullable(
    _$DynamicInputsNodeAddButtonPositionEnumMap,
    json['addButtonPosition'],
  ),
);

Map<String, dynamic> _$DynamicInputsNodeUiSettingsToJson(
  _DynamicInputsNodeUiSettings instance,
) => <String, dynamic>{
  'labelText': instance.labelText,
  'helperText': instance.helperText,
  'reorderable': instance.reorderable,
  'oddEvenRowColors': instance.oddEvenRowColors,
  'addButtonText': instance.addButtonText,
  'addButtonPosition':
      _$DynamicInputsNodeAddButtonPositionEnumMap[instance.addButtonPosition],
};

const _$DynamicInputsNodeAddButtonPositionEnumMap = {
  DynamicInputsNodeAddButtonPosition.header: 'header',
  DynamicInputsNodeAddButtonPosition.footer: 'footer',
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
  flex: (json['flex'] as num?)?.toInt(),
  scrollable: json['scrollable'] as bool?,
  reverse: json['reverse'] as bool?,
  labelText: json['labelText'] as String?,
  labelTextWhenChildrenHidden: json['labelTextWhenChildrenHidden'] as String?,
  labelMaxLines: (json['labelMaxLines'] as num?)?.toInt(),
  helperText: json['helperText'] as String?,
  childrenVisibility: $enumDecodeNullable(
    _$ChildrenVisibilityEnumMap,
    json['childrenVisibility'],
  ),
  showChildrenInitially: json['showChildrenInitially'] as bool?,
  direction: $enumDecodeNullable(_$AxisEnumMap, json['direction']),
  crossAxisAlignment: $enumDecodeNullable(
    _$CrossAxisAlignmentEnumMap,
    json['crossAxisAlignment'],
  ),
  spacing: (json['spacing'] as num?)?.toDouble(),
);

Map<String, dynamic> _$InputsNodeUiSettingsToJson(
  _InputsNodeUiSettings instance,
) => <String, dynamic>{
  'flex': instance.flex,
  'scrollable': instance.scrollable,
  'reverse': instance.reverse,
  'labelText': instance.labelText,
  'labelTextWhenChildrenHidden': instance.labelTextWhenChildrenHidden,
  'labelMaxLines': instance.labelMaxLines,
  'helperText': instance.helperText,
  'childrenVisibility':
      _$ChildrenVisibilityEnumMap[instance.childrenVisibility],
  'showChildrenInitially': instance.showChildrenInitially,
  'direction': _$AxisEnumMap[instance.direction],
  'crossAxisAlignment':
      _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment],
  'spacing': instance.spacing,
};

const _$ChildrenVisibilityEnumMap = {
  ChildrenVisibility.always: 'always',
  ChildrenVisibility.whenAsked: 'whenAsked',
};

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
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
      headerFlex: (json['headerFlex'] as num?)?.toInt(),
      labelText: json['labelText'] as String?,
      helperText: json['helperText'] as String?,
      style: $enumDecodeNullable(_$NumInputStyleEnumMap, json['style']),
    );

Map<String, dynamic> _$NumInputUiSettingsToJson(_NumInputUiSettings instance) =>
    <String, dynamic>{
      'headerFlex': instance.headerFlex,
      'labelText': instance.labelText,
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
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
  openChildren: const PushDefNullableConverter().fromJson(
    json['openChildren'] as String?,
  ),
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
  'headerFlex': instance.headerFlex,
  'openChildren': const PushDefNullableConverter().toJson(
    instance.openChildren,
  ),
};

_StringInputUiSettings _$StringInputUiSettingsFromJson(
  Map<String, dynamic> json,
) => _StringInputUiSettings(
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
  labelText: json['labelText'] as String?,
  labelLocation: $enumDecodeNullable(
    _$StringFieldLocationEnumMap,
    json['labelLocation'],
  ),
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
  helperLocation: $enumDecodeNullable(
    _$StringFieldLocationEnumMap,
    json['helperLocation'],
  ),
  prefixIconLocation: $enumDecodeNullable(
    _$StringFieldLocationEnumMap,
    json['prefixIconLocation'],
  ),
  errorLocation: $enumDecodeNullable(
    _$StringFieldLocationEnumMap,
    json['errorLocation'],
  ),
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
  autofocus: $enumDecodeNullable(_$WoFormAutofocusEnumMap, json['autofocus']),
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
  collapsed: json['collapsed'] as bool?,
);

Map<String, dynamic> _$StringInputUiSettingsToJson(
  _StringInputUiSettings instance,
) => <String, dynamic>{
  'headerFlex': instance.headerFlex,
  'labelText': instance.labelText,
  'labelLocation': _$StringFieldLocationEnumMap[instance.labelLocation],
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'helperMaxLines': instance.helperMaxLines,
  'helperLocation': _$StringFieldLocationEnumMap[instance.helperLocation],
  'prefixIconLocation':
      _$StringFieldLocationEnumMap[instance.prefixIconLocation],
  'errorLocation': _$StringFieldLocationEnumMap[instance.errorLocation],
  'action': _$StringFieldActionEnumMap[instance.action],
  'submitFormOnFieldSubmitted': instance.submitFormOnFieldSubmitted,
  'keyboardType': const TextInputTypeConverter().toJson(instance.keyboardType),
  'obscureText': instance.obscureText,
  'autocorrect': instance.autocorrect,
  'autofillHints': instance.autofillHints,
  'autofocus': _$WoFormAutofocusEnumMap[instance.autofocus],
  'textInputAction': _$TextInputActionEnumMap[instance.textInputAction],
  'textCapitalization':
      _$TextCapitalizationEnumMap[instance.textCapitalization],
  'maxLines': instance.maxLines,
  'invalidRegexMessage': instance.invalidRegexMessage,
  'collapsed': instance.collapsed,
};

const _$StringFieldLocationEnumMap = {
  StringFieldLocation.inside: 'inside',
  StringFieldLocation.outside: 'outside',
};

const _$StringFieldActionEnumMap = {
  StringFieldAction.clear: 'clear',
  StringFieldAction.obscure: 'obscure',
};

const _$WoFormAutofocusEnumMap = {
  WoFormAutofocus.yes: 'yes',
  WoFormAutofocus.ifEmpty: 'ifEmpty',
  WoFormAutofocus.no: 'no',
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
      multistepSettings: json['multistepSettings'] == null
          ? null
          : MultistepSettings.fromJson(
              json['multistepSettings'] as Map<String, dynamic>,
            ),
      disableSubmitMode:
          $enumDecodeNullable(
            _$DisableSubmitButtonEnumMap,
            json['disableSubmitMode'],
          ) ??
          DisableSubmitButton.never,
      submitText: json['submitText'] as String?,
      submitButtonPosition:
          $enumDecodeNullable(
            _$SubmitButtonPositionEnumMap,
            json['submitButtonPosition'],
          ) ??
          SubmitButtonPosition.body,
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
      layout:
          $enumDecodeNullable(_$LayoutMethodEnumMap, json['layout']) ??
          LayoutMethod.scrollable,
      presentation:
          $enumDecodeNullable(
            _$WoFormPresentationEnumMap,
            json['presentation'],
          ) ??
          WoFormPresentation.page,
    );

Map<String, dynamic> _$WoFormUiSettingsToJson(_WoFormUiSettings instance) =>
    <String, dynamic>{
      'titleText': instance.titleText,
      'titlePosition': _$WoFormTitlePositionEnumMap[instance.titlePosition]!,
      'multistepSettings': instance.multistepSettings?.toJson(),
      'disableSubmitMode':
          _$DisableSubmitButtonEnumMap[instance.disableSubmitMode]!,
      'submitText': instance.submitText,
      'submitButtonPosition':
          _$SubmitButtonPositionEnumMap[instance.submitButtonPosition]!,
      'canModifySubmittedValues': instance.canModifySubmittedValues,
      'showErrors': _$ShowErrorsEnumMap[instance.showErrors]!,
      'theme': instance.theme?.toJson(),
      'padding': const EdgeInsetsNullableConverter().toJson(instance.padding),
      'layout': _$LayoutMethodEnumMap[instance.layout]!,
      'presentation': _$WoFormPresentationEnumMap[instance.presentation]!,
    };

const _$WoFormTitlePositionEnumMap = {
  WoFormTitlePosition.header: 'header',
  WoFormTitlePosition.appBar: 'appBar',
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

const _$ShowErrorsEnumMap = {
  ShowErrors.afterSubmission: 'afterSubmission',
  ShowErrors.always: 'always',
  ShowErrors.progressively: 'progressively',
};

const _$LayoutMethodEnumMap = {
  LayoutMethod.scrollable: 'scrollable',
  LayoutMethod.shrinkWrap: 'shrinkWrap',
  LayoutMethod.flexible: 'flexible',
};

const _$WoFormPresentationEnumMap = {
  WoFormPresentation.page: 'page',
  WoFormPresentation.dialog: 'dialog',
  WoFormPresentation.bottomSheet: 'bottomSheet',
};

_MultistepSettings _$MultistepSettingsFromJson(Map<String, dynamic> json) =>
    _MultistepSettings(
      nextText: json['nextText'] as String?,
      showProgressIndicator: json['showProgressIndicator'] as bool? ?? true,
      fieldsPadding: const EdgeInsetsNullableConverter().fromJson(
        json['fieldsPadding'] as Map<String, dynamic>?,
      ),
    );

Map<String, dynamic> _$MultistepSettingsToJson(_MultistepSettings instance) =>
    <String, dynamic>{
      'nextText': instance.nextText,
      'showProgressIndicator': instance.showProgressIndicator,
      'fieldsPadding': const EdgeInsetsNullableConverter().toJson(
        instance.fieldsPadding,
      ),
    };
