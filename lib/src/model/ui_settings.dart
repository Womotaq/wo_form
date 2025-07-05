import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/wo_form.dart';

part 'ui_settings.freezed.dart';
part 'ui_settings.g.dart';

enum BooleanFieldControlType { checkbox, switchButton }

typedef BooleanFieldBuilderDef = Widget Function(
  WoFieldData<BooleanInput, bool, BooleanInputUiSettings> data,
);

@freezed
abstract class BooleanInputUiSettings with _$BooleanInputUiSettings {
  const factory BooleanInputUiSettings({
    String? labelText,
    String? helperText,
    BooleanFieldControlType? controlType,
    ListTileControlAffinity? controlAffinity,
    @JsonKey(includeToJson: false, includeFromJson: false) Widget? secondary,
    @JsonKey(includeToJson: false, includeFromJson: false)
    BooleanFieldBuilderDef? widgetBuilder,
  }) = _BooleanInputUiSettings;

  const BooleanInputUiSettings._();

  factory BooleanInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$BooleanInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(BooleanInputUiSettings object) =>
      object.toJson();

  BooleanInputUiSettings merge(BooleanInputUiSettings? other) => other == null
      ? this
      : BooleanInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          controlType: controlType ?? other.controlType,
          controlAffinity: controlAffinity ?? other.controlAffinity,
          secondary: secondary ?? other.secondary,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef DateTimeFieldBuilderDef = Widget Function(
  WoFieldData<DateTimeInput, DateTime, DateTimeInputUiSettings> data,
);

enum DateEditMode { date, time, dateAndTime }

typedef PickDateDef = Future<DateTime?> Function({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? maxDate,
  DateTime? minDate,
  DatePickerEntryMode? initialEntryMode,
  DatePickerMode? initialDatePickerMode,
  String? dateFormat,
});

typedef PickTimeDef = Future<TimeOfDay?> Function({
  required BuildContext context,
  required TimeOfDay initialTime,
  TimePickerEntryMode? initialEntryMode,
});

@freezed
abstract class DateTimeInputUiSettings with _$DateTimeInputUiSettings {
  const factory DateTimeInputUiSettings({
    String? dateFormat,
    String? timeFormat,
    String? labelText,
    String? helperText,
    String? hintText,

    /// If null, label will be placed above the date selector.
    /// Else, label and selector will be in a flexible row,
    /// selector with a flex value of 10,
    /// and label with a flex value of [labelFlex].
    int? labelFlex,

    /// If DateTimeInput.initialValue is null, this value will be used instead.
    @JsonKey(toJson: FlexibleDateTime.staticToJson)
    FlexibleDateTime? initialEditValue,
    DatePickerEntryMode? initialDateEntryMode,
    DatePickerMode? initialDatePickerMode,
    DateEditMode? editMode,
    @JsonKey(includeToJson: false, includeFromJson: false)
    PickDateDef? pickDate,
    @JsonKey(includeToJson: false, includeFromJson: false)
    PickTimeDef? pickTime,
    TimePickerEntryMode? initialTimeEntryMode,
    @JsonKey(includeToJson: false, includeFromJson: false)
    DateTimeFieldBuilderDef? widgetBuilder,
  }) = _DateTimeInputUiSettings;

  const DateTimeInputUiSettings._();

  factory DateTimeInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DateTimeInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(DateTimeInputUiSettings object) =>
      object.toJson();

  DateTimeInputUiSettings merge(DateTimeInputUiSettings? other) => other == null
      ? this
      : DateTimeInputUiSettings(
          dateFormat: dateFormat ?? other.dateFormat,
          timeFormat: timeFormat ?? other.timeFormat,
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          hintText: hintText ?? other.hintText,
          labelFlex: labelFlex ?? other.labelFlex,
          initialDateEntryMode:
              initialDateEntryMode ?? other.initialDateEntryMode,
          initialDatePickerMode:
              initialDatePickerMode ?? other.initialDatePickerMode,
          editMode: editMode ?? other.editMode,
          pickDate: pickDate ?? other.pickDate,
          pickTime: pickTime ?? other.pickTime,
          initialTimeEntryMode:
              initialTimeEntryMode ?? other.initialTimeEntryMode,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef DurationFieldBuilderDef = Widget Function(
  WoFieldData<DurationInput, Duration, DurationInputUiSettings> data,
);

typedef PickDurationDef = Future<Duration?> Function({
  required BuildContext context,
  Duration? initialDuration,
  Duration? maxDuration,
  Duration? minDuration,
});

typedef FormatDurationDef = String Function(Duration duration);

enum DurationEditMode {
  /// Only possible if DurationInput.startDatePath is provided.
  dateTime,
  duration,
}

@freezed
abstract class DurationInputUiSettings with _$DurationInputUiSettings {
  const factory DurationInputUiSettings({
    String? labelText,
    String? helperText,
    String? hintText,
    DurationEditMode? editMode,

    /// If null, label will be placed above the date selector.
    /// Else, label and selector will be in a flexible row,
    /// selector with a flex value of 10,
    /// and label with a flex value of [labelFlex].
    int? labelFlex,
    @JsonKey(includeToJson: false, includeFromJson: false)
    PickDurationDef? pickDuration,
    @JsonKey(includeToJson: false, includeFromJson: false)
    FormatDurationDef? formatDuration,
    @JsonKey(includeToJson: false, includeFromJson: false)
    DurationFieldBuilderDef? widgetBuilder,

    /// The following fields are used if editMode is dateTime
    String? dateTimeLabelText,
    String? dateTimeHelperText,
    String? dateTimeHintText,
    String? dateFormat,
    String? timeFormat,
    DateEditMode? dateTimeEditMode,
    @JsonKey(includeToJson: false, includeFromJson: false)
    PickDateDef? pickDate,
    @JsonKey(includeToJson: false, includeFromJson: false)
    PickTimeDef? pickTime,
  }) = _DurationInputUiSettings;

  const DurationInputUiSettings._();

  factory DurationInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DurationInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(DurationInputUiSettings object) =>
      object.toJson();

  DurationInputUiSettings merge(DurationInputUiSettings? other) => other == null
      ? this
      : DurationInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          hintText: hintText ?? other.hintText,
          editMode: editMode ?? other.editMode,
          labelFlex: labelFlex ?? other.labelFlex,
          pickDuration: pickDuration ?? other.pickDuration,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          dateTimeLabelText: dateTimeLabelText ?? other.dateTimeLabelText,
          dateTimeHelperText: dateTimeHelperText ?? other.dateTimeHelperText,
          dateTimeHintText: dateTimeHintText ?? other.dateTimeHintText,
          dateFormat: dateFormat ?? other.dateFormat,
          timeFormat: timeFormat ?? other.timeFormat,
          dateTimeEditMode: dateTimeEditMode ?? other.dateTimeEditMode,
          pickDate: pickDate ?? other.pickDate,
          pickTime: pickTime ?? other.pickTime,
        );
}

typedef DynamicInputsNodeWidgetBuilderDef = Widget Function(
  WoFieldData<DynamicInputsNode, List<WoFormNodeMixin>,
          DynamicInputsNodeUiSettings>
      data,
);

typedef GenerateIdDef = String Function();
typedef OnDynamicInputDeletionDef = void Function(VoidCallback cancel);

@freezed
abstract class DynamicInputsNodeUiSettings with _$DynamicInputsNodeUiSettings {
  const factory DynamicInputsNodeUiSettings({
    String? labelText,
    String? helperText,

    /// Default to true
    bool? reorderable,
    @JsonKey(includeToJson: false, includeFromJson: false)
    GenerateIdDef? generateId,
    @JsonKey(includeToJson: false, includeFromJson: false)
    OnDynamicInputDeletionDef? onChildDeletion,
    @JsonKey(includeToJson: false, includeFromJson: false)
    DynamicInputsNodeWidgetBuilderDef? widgetBuilder,
  }) = _DynamicInputsNodeUiSettings;

  const DynamicInputsNodeUiSettings._();

  factory DynamicInputsNodeUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputsNodeUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(
    DynamicInputsNodeUiSettings object,
  ) =>
      object.toJson();

  DynamicInputsNodeUiSettings merge(DynamicInputsNodeUiSettings? other) =>
      other == null
          ? this
          : DynamicInputsNodeUiSettings(
              labelText: labelText ?? other.labelText,
              helperText: helperText ?? other.helperText,
              reorderable: reorderable ?? other.reorderable,
              generateId: generateId ?? other.generateId,
              onChildDeletion: onChildDeletion ?? other.onChildDeletion,
              widgetBuilder: widgetBuilder ?? other.widgetBuilder,
            );
}

@freezed
abstract class DynamicInputUiSettings with _$DynamicInputUiSettings {
  const factory DynamicInputUiSettings({
    String? labelText,
    String? helperText,
  }) = _DynamicInputUiSettings;

  const DynamicInputUiSettings._();

  factory DynamicInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(
    DynamicInputUiSettings object,
  ) =>
      object.toJson();

  DynamicInputUiSettings merge(DynamicInputUiSettings? other) => other == null
      ? this
      : DynamicInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
        );
}

enum ChildrenVisibility { always, whenAsked }

// LATER : when submitting a field from an opened page, only submit this page,
//  and let custom functions be launched at submitting, error, and success.

typedef InputNodeWidgetBuilderDef = Widget Function(
  WoFieldData<InputsNode, void, InputsNodeUiSettings> data,
);

typedef HeaderBuilderDef = Widget Function(WoFormHeaderData data);

@freezed
abstract class InputsNodeUiSettings with _$InputsNodeUiSettings {
  const factory InputsNodeUiSettings({
    String? labelText,
    String? labelTextWhenChildrenHidden,
    String? helperText,

    /// Default to always.
    ChildrenVisibility? childrenVisibility,

    /// Only used by [ChildrenVisibility.whenAsked].
    /// If true, when the widget will be rendered,
    /// the children's visibility will be asked.
    @Default(false) bool showChildrenInitially,
    @JsonKey(includeToJson: false, includeFromJson: false)
    InputNodeWidgetBuilderDef? widgetBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    HeaderBuilderDef? headerBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    InputNodeWidgetBuilderDef? expanderBuilder,
  }) = _InputsNodeUiSettings;

  const InputsNodeUiSettings._();

  factory InputsNodeUiSettings.fromJson(Map<String, dynamic> json) =>
      _$InputsNodeUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(InputsNodeUiSettings object) =>
      object.toJson();

  InputsNodeUiSettings merge(InputsNodeUiSettings? other) => other == null
      ? this
      : InputsNodeUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          childrenVisibility: childrenVisibility ?? other.childrenVisibility,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          expanderBuilder: expanderBuilder ?? other.expanderBuilder,
        );
}

typedef MediaFieldBuilderDef = Widget Function(
  WoFieldData<MediaInput, List<Media>?, MediaInputUiSettings> data,
);

@freezed
abstract class MediaInputUiSettings with _$MediaInputUiSettings {
  const factory MediaInputUiSettings({
    String? addMediaText,
    int? fieldHeight,
    @JsonKey(includeToJson: false, includeFromJson: false)
    MediaFieldBuilderDef? widgetBuilder,
  }) = _MediaInputUiSettings;

  const MediaInputUiSettings._();

  factory MediaInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$MediaInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(MediaInputUiSettings object) =>
      object.toJson();

  MediaInputUiSettings merge(MediaInputUiSettings? other) => other == null
      ? this
      : MediaInputUiSettings(
          addMediaText: addMediaText ?? other.addMediaText,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef NumFieldBuilderDef = Widget Function(
  WoFieldData<NumInput, num, NumInputUiSettings> data,
);

@freezed
abstract class NumInputUiSettings with _$NumInputUiSettings {
  const factory NumInputUiSettings({
    String? labelText,
    String? helperText,
    @JsonKey(includeToJson: false, includeFromJson: false) Widget? unit,
    @JsonKey(includeToJson: false, includeFromJson: false)
    NumFieldBuilderDef? widgetBuilder,
  }) = _NumInputUiSettings;

  const NumInputUiSettings._();

  factory NumInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$NumInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(NumInputUiSettings object) =>
      object.toJson();

  NumInputUiSettings merge(NumInputUiSettings? other) => other == null
      ? this
      : NumInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          unit: unit ?? other.unit,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef SelectFieldBuilderDef<T> = Widget Function(
  WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>> data,
);

typedef InputHeaderBuilderDef = Widget Function(WoFormInputHeaderData data);

@freezed
abstract class SelectInputUiSettings<T> with _$SelectInputUiSettings<T> {
  /// Defines how the SelectInput should be rendered.
  ///
  /// searcher is a function that returns a double between 0 and 1,
  /// depending on how much the query is close to a value. 1 is the closest.
  const factory SelectInputUiSettings({
    String? labelText,
    String? helperText,
    String? hintText,
    ChildrenVisibility? childrenVisibility,

    /// Only used when SelectInput.maxCount is 1
    /// and childrenVisibility is whenAsked.
    ///
    /// If null, label will be placed above the selector.
    /// Else, label and selector will be in a flexible row,
    /// selector with a flex value of 10,
    /// and label with a flex value of [labelFlex].
    int? labelFlex,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget Function(T?)? valueBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget Function(T?)? selectedBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget? Function(T)? helpValueBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    double Function(String query, T value)? searcher,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SearchScreenDef<T>? searchScreenBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    SelectFieldBuilderDef<T>? widgetBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    InputHeaderBuilderDef? headerBuilder,
    @JsonKey(includeToJson: false, includeFromJson: false)
    ScoreWidgetBuilderDef? scoreBuilder,
  }) = _SelectInputUiSettings<T>;

  const SelectInputUiSettings._();

  factory SelectInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectInputUiSettingsFromJson(json);

  SelectInputUiSettings<T> merge(SelectInputUiSettings<T>? other) =>
      other == null
          ? this
          : SelectInputUiSettings(
              labelText: labelText ?? other.labelText,
              helperText: helperText ?? other.helperText,
              hintText: hintText ?? other.hintText,
              childrenVisibility:
                  childrenVisibility ?? other.childrenVisibility,
              valueBuilder: valueBuilder ?? other.valueBuilder,
              helpValueBuilder: helpValueBuilder ?? other.helpValueBuilder,
              searcher: searcher ?? other.searcher,
              widgetBuilder: widgetBuilder ?? other.widgetBuilder,
              headerBuilder: headerBuilder ?? other.headerBuilder,
              scoreBuilder: scoreBuilder ?? other.scoreBuilder,
            );
}

enum StringFieldAction { clear, obscure }

typedef StringFieldBuilderDef = Widget Function(
  WoFieldData<StringInput, String, StringInputUiSettings> data,
);

@freezed
abstract class StringInputUiSettings with _$StringInputUiSettings {
  const factory StringInputUiSettings({
    String? labelText,
    String? hintText,
    String? helperText,
    @JsonKey(includeToJson: false, includeFromJson: false) Widget? prefixIcon,
    StringFieldAction? action,
    bool? submitFormOnFieldSubmitted,
    @TextInputTypeConverter() TextInputType? keyboardType,
    bool? obscureText,
    bool? autocorrect,
    List<String>? autofillHints,
    bool? autofocus,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    List<String>? addressAutocompleteCountries,

    /// Defaults to 1. If you want to set it to null, enter 0.
    int? maxLines,
    String? invalidRegexMessage,
    @JsonKey(includeToJson: false, includeFromJson: false) TextStyle? style,
    @JsonKey(includeToJson: false, includeFromJson: false)
    StringFieldBuilderDef? widgetBuilder,
  }) = _StringInputUiSettings;

  factory StringInputUiSettings.email({
    String? labelText,
    String? hintText,
    String? helperText,
    Widget? prefixIcon,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
  }) =>
      StringInputUiSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        style: style,
        widgetBuilder: widgetBuilder,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        autofillHints: const [AutofillHints.email],
        maxLines: 1,
      );

  factory StringInputUiSettings.password({
    String? labelText,
    String? hintText,
    String? helperText,
    Widget? prefixIcon,
    bool? submitFormOnFieldSubmitted,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
  }) =>
      StringInputUiSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        style: style,
        widgetBuilder: widgetBuilder,
        action: StringFieldAction.obscure,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        autocorrect: false,
        autofillHints: const [
          AutofillHints.password,
          AutofillHints.newPassword,
        ],
        maxLines: 1,
      );

  factory StringInputUiSettings.phone({
    String? labelText,
    String? hintText,
    String? helperText,
    Widget? prefixIcon,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
  }) =>
      StringInputUiSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        style: style,
        widgetBuilder: widgetBuilder,
        keyboardType: TextInputType.phone,
        autocorrect: false,
        autofillHints: const [AutofillHints.telephoneNumber],
        maxLines: 1,
      );

  const StringInputUiSettings._();

  factory StringInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$StringInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(StringInputUiSettings object) =>
      object.toJson();

  StringInputUiSettings merge(StringInputUiSettings? other) => other == null
      ? this
      : StringInputUiSettings(
          labelText: labelText ?? other.labelText,
          hintText: hintText ?? other.hintText,
          helperText: helperText ?? other.helperText,
          prefixIcon: prefixIcon ?? other.prefixIcon,
          action: action ?? other.action,
          submitFormOnFieldSubmitted:
              submitFormOnFieldSubmitted ?? other.submitFormOnFieldSubmitted,
          keyboardType: keyboardType ?? other.keyboardType,
          obscureText: obscureText ?? other.obscureText,
          autocorrect: autocorrect ?? other.autocorrect,
          autofillHints: autofillHints ?? other.autofillHints,
          autofocus: autofocus ?? other.autofocus,
          textInputAction: textInputAction ?? other.textInputAction,
          textCapitalization: textCapitalization ?? other.textCapitalization,
          maxLines: maxLines ?? other.maxLines,
          invalidRegexMessage: invalidRegexMessage ?? other.invalidRegexMessage,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

enum WoFormTitlePosition { header, appBar }

typedef SubmitButtonBuilderDef = Widget Function(SubmitButtonData data);

@freezed
abstract class WoFormUiSettings with _$WoFormUiSettings {
  const factory WoFormUiSettings({
    @Default('') String titleText,
    @Default(WoFormTitlePosition.header) WoFormTitlePosition titlePosition,
    @JsonKey(includeToJson: false, includeFromJson: false)
    HeaderBuilderDef? headerBuilder,
    @JsonKey(toJson: WoFormSubmitMode.staticToJson)
    @Default(WoFormSubmitMode.standard())
    WoFormSubmitMode submitMode,
    @JsonKey(includeToJson: false, includeFromJson: false)
    SubmitButtonBuilderDef? submitButtonBuilder,
    bool? showAsteriskIfRequired,
    bool? canModifySubmittedValues,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Future<bool?> Function(BuildContext context)? canQuit,
  }) = _WoFormUiSettings;

  const WoFormUiSettings._();

  factory WoFormUiSettings.fromJson(Map<String, dynamic> json) =>
      _$WoFormUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(WoFormUiSettings object) =>
      object.toJson();
}

enum SubmitButtonPosition { body, appBar, bottomBar, floating }

enum DisableSubmitButton { never, whenInvalid, whenInitialOrSubmitSuccess }

typedef ScaffoldBuilderDef = Widget Function(Widget body);

@freezed
sealed class WoFormSubmitMode with _$WoFormSubmitMode {
  const factory WoFormSubmitMode.standard({
    String? submitText,
    @JsonKey(includeToJson: false, includeFromJson: false) IconData? submitIcon,
    @Default(DisableSubmitButton.never) DisableSubmitButton disableSubmitMode,
    @Default(SubmitButtonPosition.body) SubmitButtonPosition buttonPosition,
    @JsonKey(includeToJson: false, includeFromJson: false)
    ScaffoldBuilderDef? scaffoldBuilder,
  }) = StandardSubmitMode;

  const factory WoFormSubmitMode.pageByPage({
    String? submitText,
    @JsonKey(includeToJson: false, includeFromJson: false) IconData? submitIcon,
    String? nextText,
    @Default(DisableSubmitButton.never) DisableSubmitButton disableSubmitMode,
    @Default(true) bool showProgressIndicator,
  }) = PageByPageSubmitMode;

  const WoFormSubmitMode._();

  factory WoFormSubmitMode.fromJson(Map<String, dynamic> json) =>
      _$WoFormSubmitModeFromJson(json);

  static Map<String, dynamic> staticToJson(WoFormSubmitMode object) =>
      object.toJson();

  // --

  SubmitButtonPosition get buttonPosition => switch (this) {
        StandardSubmitMode(buttonPosition: final p) => p,
        PageByPageSubmitMode() => SubmitButtonPosition.bottomBar,
      };
}
