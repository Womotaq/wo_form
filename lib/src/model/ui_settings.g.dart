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
  labelLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['labelLocation'],
  ),
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  helperLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['helperLocation'],
  ),
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
  prefixIconLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['prefixIconLocation'],
  ),
  errorLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['errorLocation'],
  ),
  addDateText: json['addDateText'] as String?,
  addTimeText: json['addTimeText'] as String?,
  initialEditValue: json['initialEditValue'] == null
      ? null
      : FlexibleDateTime.fromJson(
          json['initialEditValue'] as Map<String, dynamic>,
        ),
  editMode: $enumDecodeNullable(_$DateEditModeEnumMap, json['editMode']),
  pickDate: const PickDateDefNullableConverter().fromJson(
    json['pickDate'] as String?,
  ),
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
  'labelLocation': _$FieldElementLocationEnumMap[instance.labelLocation],
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'helperLocation': _$FieldElementLocationEnumMap[instance.helperLocation],
  'headerFlex': instance.headerFlex,
  'prefixIconLocation':
      _$FieldElementLocationEnumMap[instance.prefixIconLocation],
  'errorLocation': _$FieldElementLocationEnumMap[instance.errorLocation],
  'addDateText': instance.addDateText,
  'addTimeText': instance.addTimeText,
  'initialEditValue': instance.initialEditValue?.toJson(),
  'editMode': _$DateEditModeEnumMap[instance.editMode],
  'pickDate': const PickDateDefNullableConverter().toJson(instance.pickDate),
  'initialTimeEntryMode':
      _$TimePickerEntryModeEnumMap[instance.initialTimeEntryMode],
};

const _$FieldElementLocationEnumMap = {
  FieldElementLocation.inside: 'inside',
  FieldElementLocation.outside: 'outside',
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
  labelLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['labelLocation'],
  ),
  helperText: json['helperText'] as String?,
  helperLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['helperLocation'],
  ),
  hintText: json['hintText'] as String?,
  editMode: $enumDecodeNullable(_$DurationEditModeEnumMap, json['editMode']),
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
  prefixIconLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['prefixIconLocation'],
  ),
  errorLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['errorLocation'],
  ),
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
  'labelLocation': _$FieldElementLocationEnumMap[instance.labelLocation],
  'helperText': instance.helperText,
  'helperLocation': _$FieldElementLocationEnumMap[instance.helperLocation],
  'hintText': instance.hintText,
  'editMode': _$DurationEditModeEnumMap[instance.editMode],
  'headerFlex': instance.headerFlex,
  'prefixIconLocation':
      _$FieldElementLocationEnumMap[instance.prefixIconLocation],
  'errorLocation': _$FieldElementLocationEnumMap[instance.errorLocation],
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
  openTemplates: const PushDefNullableConverter().fromJson(
    json['openTemplates'] as String?,
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
  'openTemplates': const PushDefNullableConverter().toJson(
    instance.openTemplates,
  ),
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
  reverse: json['reverse'] as bool?,
  labelText: json['labelText'] as String?,
  labelTextWhenChildrenHidden: json['labelTextWhenChildrenHidden'] as String?,
  labelMaxLines: (json['labelMaxLines'] as num?)?.toInt(),
  helperText: json['helperText'] as String?,
  helperTextWhenChildrenHidden: json['helperTextWhenChildrenHidden'] as String?,
  childrenVisibility: $enumDecodeNullable(
    _$ChildrenVisibilityEnumMap,
    json['childrenVisibility'],
  ),
  showChildrenInitially: json['showChildrenInitially'] as bool?,
  openChildren: const PushDefNullableConverter().fromJson(
    json['openChildren'] as String?,
  ),
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
  'reverse': instance.reverse,
  'labelText': instance.labelText,
  'labelTextWhenChildrenHidden': instance.labelTextWhenChildrenHidden,
  'labelMaxLines': instance.labelMaxLines,
  'helperText': instance.helperText,
  'helperTextWhenChildrenHidden': instance.helperTextWhenChildrenHidden,
  'childrenVisibility':
      _$ChildrenVisibilityEnumMap[instance.childrenVisibility],
  'showChildrenInitially': instance.showChildrenInitially,
  'openChildren': const PushDefNullableConverter().toJson(
    instance.openChildren,
  ),
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
  fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
  cropAspectRatioOrCircle: (json['cropAspectRatioOrCircle'] as num?)
      ?.toDouble(),
  cropShowGrid: json['cropShowGrid'] as bool?,
);

Map<String, dynamic> _$MediaInputUiSettingsToJson(
  _MediaInputUiSettings instance,
) => <String, dynamic>{
  'addMediaText': instance.addMediaText,
  'fieldHeight': instance.fieldHeight,
  'fit': _$BoxFitEnumMap[instance.fit],
  'cropAspectRatioOrCircle': instance.cropAspectRatioOrCircle,
  'cropShowGrid': instance.cropShowGrid,
};

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
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
  searchInputUiSettings: json['searchInputUiSettings'] == null
      ? null
      : StringInputUiSettings<T>.fromJson(
          json['searchInputUiSettings'] as Map<String, dynamic>,
        ),
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
  'searchInputUiSettings': instance.searchInputUiSettings?.toJson(),
  'openChildren': const PushDefNullableConverter().toJson(
    instance.openChildren,
  ),
};

_StringInputUiSettings<T> _$StringInputUiSettingsFromJson<T>(
  Map<String, dynamic> json,
) => _StringInputUiSettings<T>(
  flex: (json['flex'] as num?)?.toInt(),
  headerFlex: (json['headerFlex'] as num?)?.toInt(),
  labelText: json['labelText'] as String?,
  labelMaxLines: (json['labelMaxLines'] as num?)?.toInt(),
  labelLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['labelLocation'],
  ),
  hintText: json['hintText'] as String?,
  helperText: json['helperText'] as String?,
  helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
  helperLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['helperLocation'],
  ),
  prefixIconLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
    json['prefixIconLocation'],
  ),
  errorLocation: $enumDecodeNullable(
    _$FieldElementLocationEnumMap,
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
  padding: const EdgeInsetsNullableConverter().fromJson(
    json['padding'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StringInputUiSettingsToJson<T>(
  _StringInputUiSettings<T> instance,
) => <String, dynamic>{
  'flex': instance.flex,
  'headerFlex': instance.headerFlex,
  'labelText': instance.labelText,
  'labelMaxLines': instance.labelMaxLines,
  'labelLocation': _$FieldElementLocationEnumMap[instance.labelLocation],
  'hintText': instance.hintText,
  'helperText': instance.helperText,
  'helperMaxLines': instance.helperMaxLines,
  'helperLocation': _$FieldElementLocationEnumMap[instance.helperLocation],
  'prefixIconLocation':
      _$FieldElementLocationEnumMap[instance.prefixIconLocation],
  'errorLocation': _$FieldElementLocationEnumMap[instance.errorLocation],
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
  'padding': const EdgeInsetsNullableConverter().toJson(instance.padding),
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
      urlStrategy: $enumDecodeNullable(
        _$MultistepUrlStrategyEnumMap,
        json['urlStrategy'],
      ),
      showProgressIndicator: json['showProgressIndicator'] as bool? ?? true,
      fieldsPadding: const EdgeInsetsNullableConverter().fromJson(
        json['fieldsPadding'] as Map<String, dynamic>?,
      ),
    );

Map<String, dynamic> _$MultistepSettingsToJson(_MultistepSettings instance) =>
    <String, dynamic>{
      'nextText': instance.nextText,
      'urlStrategy': _$MultistepUrlStrategyEnumMap[instance.urlStrategy],
      'showProgressIndicator': instance.showProgressIndicator,
      'fieldsPadding': const EdgeInsetsNullableConverter().toJson(
        instance.fieldsPadding,
      ),
    };

const _$MultistepUrlStrategyEnumMap = {
  MultistepUrlStrategy.none: 'none',
  MultistepUrlStrategy.query: 'query',
};
