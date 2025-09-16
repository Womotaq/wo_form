import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/model/json_converter/edge_insets.dart';
import 'package:wo_form/wo_form.dart';

part 'ui_settings.freezed.dart';
part 'ui_settings.g.dart';

@freezed
abstract class InputUiSettings with _$InputUiSettings {
  const factory InputUiSettings({
    int? flex,
  }) = _InputUiSettings;

  const InputUiSettings._();

  factory InputUiSettings.fromJson(Json json) =>
      _$InputUiSettingsFromJson(json);

  InputUiSettings merge(InputUiSettings? other) => other == null
      ? this
      : InputUiSettings(
          flex: flex ?? other.flex,
        );
}

enum BooleanFieldControlType { checkbox, switchButton }

typedef BooleanFieldBuilderDef =
    Widget Function(
      WoFieldData<BooleanInput, bool, BooleanInputUiSettings> data,
    );

@freezed
abstract class BooleanInputUiSettings with _$BooleanInputUiSettings {
  const factory BooleanInputUiSettings({
    String? labelText,
    String? helperText,
    BooleanFieldControlType? controlType,
    ListTileControlAffinity? controlAffinity,
    @notSerializable Widget? secondary,
    @notSerializable BooleanFieldBuilderDef? widgetBuilder,
  }) = _BooleanInputUiSettings;

  const BooleanInputUiSettings._();

  factory BooleanInputUiSettings.fromJson(Json json) =>
      _$BooleanInputUiSettingsFromJson(json);

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

typedef DateTimeFieldBuilderDef =
    Widget Function(
      WoFieldData<DateTimeInput, DateTime, DateTimeInputUiSettings> data,
    );

enum DateEditMode { date, time, dateAndTime }

typedef PickDateDef =
    Future<DateTime?> Function({
      required BuildContext context,
      DateTime? initialDate,
      DateTime? maxDate,
      DateTime? minDate,
      DatePickerEntryMode? initialEntryMode,
      DatePickerMode? initialDatePickerMode,
      String? dateFormat,
    });

typedef PickTimeDef =
    Future<TimeOfDay?> Function({
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
    @notSerializable Widget? prefixIcon,
    String? addDateText,
    String? addTimeText,

    /// If DateTimeInput.initialValue is null, this value will be used instead.
    FlexibleDateTime? initialEditValue,
    DatePickerEntryMode? initialDateEntryMode,
    DatePickerMode? initialDatePickerMode,
    DateEditMode? editMode,
    @notSerializable PickDateDef? pickDate,
    @notSerializable PickTimeDef? pickTime,
    TimePickerEntryMode? initialTimeEntryMode,
    @notSerializable DateTimeFieldBuilderDef? widgetBuilder,
  }) = _DateTimeInputUiSettings;

  const DateTimeInputUiSettings._();

  factory DateTimeInputUiSettings.fromJson(Json json) =>
      _$DateTimeInputUiSettingsFromJson(json);

  DateTimeInputUiSettings merge(DateTimeInputUiSettings? other) => other == null
      ? this
      : DateTimeInputUiSettings(
          dateFormat: dateFormat ?? other.dateFormat,
          timeFormat: timeFormat ?? other.timeFormat,
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          hintText: hintText ?? other.hintText,
          labelFlex: labelFlex ?? other.labelFlex,
          prefixIcon: prefixIcon ?? other.prefixIcon,
          addDateText: addDateText ?? other.addDateText,
          addTimeText: addTimeText ?? other.addTimeText,
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

typedef DurationFieldBuilderDef =
    Widget Function(
      WoFieldData<DurationInput, Duration, DurationInputUiSettings> data,
    );

typedef PickDurationDef =
    Future<Duration?> Function({
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
    @notSerializable PickDurationDef? pickDuration,
    @notSerializable FormatDurationDef? formatDuration,
    @notSerializable DurationFieldBuilderDef? widgetBuilder,

    /// The following fields are used if editMode is dateTime
    String? dateTimeLabelText,
    String? dateTimeHelperText,
    String? dateTimeHintText,
    String? dateFormat,
    String? timeFormat,
    DateEditMode? dateTimeEditMode,
    @notSerializable PickDateDef? pickDate,
    @notSerializable PickTimeDef? pickTime,
  }) = _DurationInputUiSettings;

  const DurationInputUiSettings._();

  factory DurationInputUiSettings.fromJson(Json json) =>
      _$DurationInputUiSettingsFromJson(json);

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

typedef DynamicInputsNodeWidgetBuilderDef =
    Widget Function(
      WoFieldData<
        DynamicInputsNode,
        List<WoFormNodeMixin>,
        DynamicInputsNodeUiSettings
      >
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
    @notSerializable GenerateIdDef? generateId,
    @notSerializable OnDynamicInputDeletionDef? onChildDeletion,
    @notSerializable DynamicInputsNodeWidgetBuilderDef? widgetBuilder,
  }) = _DynamicInputsNodeUiSettings;

  const DynamicInputsNodeUiSettings._();

  factory DynamicInputsNodeUiSettings.fromJson(Json json) =>
      _$DynamicInputsNodeUiSettingsFromJson(json);

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

  factory DynamicInputUiSettings.fromJson(Json json) =>
      _$DynamicInputUiSettingsFromJson(json);

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

typedef InputNodeWidgetBuilderDef =
    Widget Function(
      WoFieldData<InputsNode, void, InputsNodeUiSettings> data,
    );

typedef HeaderBuilderDef = Widget Function(WoFormHeaderData data);

@freezed
abstract class InputsNodeUiSettings with _$InputsNodeUiSettings {
  const factory InputsNodeUiSettings({
    int? flex,
    String? labelText,
    String? labelTextWhenChildrenHidden,
    String? helperText,

    /// Default to always.
    ChildrenVisibility? childrenVisibility,

    /// Only used by [ChildrenVisibility.whenAsked].
    /// If true, when the widget will be rendered,
    /// the children's visibility will be asked.
    ///
    /// Default to false.
    bool? showChildrenInitially,

    /// Only used when ChildrenVisibility.always.
    ///
    /// Default to Axis.vertical
    Axis? direction,

    /// Only used when ChildrenVisibility.always.
    ///
    /// Default to CrossAxisAlignment.start
    CrossAxisAlignment? crossAxisAlignment,

    /// This spacing will be placed between each [WoFormNodeMixin].
    double? spacing,
    @notSerializable InputNodeWidgetBuilderDef? widgetBuilder,
    @notSerializable HeaderBuilderDef? headerBuilder,
    @notSerializable InputNodeWidgetBuilderDef? expanderBuilder,
  }) = _InputsNodeUiSettings;

  const InputsNodeUiSettings._();

  factory InputsNodeUiSettings.fromJson(Json json) =>
      _$InputsNodeUiSettingsFromJson(json);

  InputsNodeUiSettings merge(InputsNodeUiSettings? other) => other == null
      ? this
      : InputsNodeUiSettings(
          flex: flex ?? other.flex,
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          childrenVisibility: childrenVisibility ?? other.childrenVisibility,
          showChildrenInitially:
              showChildrenInitially ?? other.showChildrenInitially,
          direction: direction ?? other.direction,
          crossAxisAlignment: crossAxisAlignment ?? other.crossAxisAlignment,
          spacing: spacing ?? other.spacing,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          expanderBuilder: expanderBuilder ?? other.expanderBuilder,
        );
}

typedef MediaFieldBuilderDef =
    Widget Function(
      WoFieldData<MediaInput, List<Media>?, MediaInputUiSettings> data,
    );

@freezed
abstract class MediaInputUiSettings with _$MediaInputUiSettings {
  const factory MediaInputUiSettings({
    String? addMediaText,
    int? fieldHeight,

    /// For a circle cropping, use MediaService.circleAspectRatio
    double? cropAspectRatioOrCircle,
    @Default(false) bool cropShowGrid,
    @notSerializable MediaFieldBuilderDef? widgetBuilder,
  }) = _MediaInputUiSettings;

  const MediaInputUiSettings._();

  factory MediaInputUiSettings.fromJson(Json json) =>
      _$MediaInputUiSettingsFromJson(json);

  MediaInputUiSettings merge(MediaInputUiSettings? other) => other == null
      ? this
      : MediaInputUiSettings(
          addMediaText: addMediaText ?? other.addMediaText,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef NumFieldBuilderDef =
    Widget Function(
      WoFieldData<NumInput, num, NumInputUiSettings> data,
    );

enum NumInputStyle { selector, slider }

@freezed
abstract class NumInputUiSettings with _$NumInputUiSettings {
  const factory NumInputUiSettings({
    String? labelText,

    /// If null, label will be placed above the date selector.
    /// Else, label and selector will be in a flexible row,
    /// selector with a flex value of 10,
    /// and label with a flex value of [labelFlex].
    ///
    /// Only with [NumInputStyle.slider].
    int? labelFlex,
    String? helperText,
    NumInputStyle? style,
    @notSerializable Widget? unit,
    @notSerializable NumFieldBuilderDef? widgetBuilder,
  }) = _NumInputUiSettings;

  const NumInputUiSettings._();

  factory NumInputUiSettings.fromJson(Json json) =>
      _$NumInputUiSettingsFromJson(json);

  NumInputUiSettings merge(NumInputUiSettings? other) => other == null
      ? this
      : NumInputUiSettings(
          labelText: labelText ?? other.labelText,
          labelFlex: labelFlex ?? other.labelFlex,
          helperText: helperText ?? other.helperText,
          style: style ?? other.style,
          unit: unit ?? other.unit,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef SelectFieldBuilderDef<T> =
    Widget Function(
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
    int? flex,
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
    @notSerializable Widget Function(T?)? valueBuilder,
    @notSerializable Widget Function(T?)? selectedBuilder,
    @notSerializable Widget? Function(T)? helpValueBuilder,
    @notSerializable double Function(String query, T value)? searcher,
    @notSerializable SearchScreenDef<T>? searchScreenBuilder,
    @notSerializable SelectFieldBuilderDef<T>? widgetBuilder,
    @notSerializable InputHeaderBuilderDef? headerBuilder,
    @notSerializable ScoreWidgetBuilderDef? scoreBuilder,
  }) = _SelectInputUiSettings<T>;

  const SelectInputUiSettings._();

  factory SelectInputUiSettings.fromJson(Json json) =>
      _$SelectInputUiSettingsFromJson(json);

  SelectInputUiSettings<T> merge(SelectInputUiSettings<T>? other) =>
      other == null
      ? this
      : SelectInputUiSettings(
          flex: flex ?? other.flex,
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          hintText: hintText ?? other.hintText,
          childrenVisibility: childrenVisibility ?? other.childrenVisibility,
          valueBuilder: valueBuilder ?? other.valueBuilder,
          helpValueBuilder: helpValueBuilder ?? other.helpValueBuilder,
          searcher: searcher ?? other.searcher,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          scoreBuilder: scoreBuilder ?? other.scoreBuilder,
        );
}

enum StringFieldAction { clear, obscure }

typedef StringFieldBuilderDef =
    Widget Function(
      WoFieldData<StringInput, String, StringInputUiSettings> data,
    );

@freezed
abstract class StringInputUiSettings with _$StringInputUiSettings {
  const factory StringInputUiSettings({
    String? labelText,
    String? hintText,
    String? helperText,
    @notSerializable Widget? prefixIcon,
    StringFieldAction? action,
    bool? submitFormOnFieldSubmitted,
    @TextInputTypeConverter() TextInputType? keyboardType,
    bool? obscureText,
    bool? autocorrect,
    List<String>? autofillHints,
    bool? autofocus,
    TextInputAction? textInputAction,

    /// Defaults to TextCapitalization.none.
    TextCapitalization? textCapitalization,

    /// Defaults to 1. If you want to set it to null, enter 0.
    int? maxLines,
    String? invalidRegexMessage,
    @notSerializable TextStyle? style,
    @notSerializable StringFieldBuilderDef? widgetBuilder,
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
  }) => StringInputUiSettings(
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
  }) => StringInputUiSettings(
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
  }) => StringInputUiSettings(
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

  factory StringInputUiSettings.fromJson(Json json) =>
      _$StringInputUiSettingsFromJson(json);

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
    @notSerializable HeaderBuilderDef? headerBuilder,
    @Default(WoFormSubmitMode.standard()) WoFormSubmitMode submitMode,
    @notSerializable SubmitButtonBuilderDef? submitButtonBuilder,

    /// If true, after the form is successfully submitted, it will be locked.
    bool? canModifySubmittedValues,

    /// By default, errors will only be shown after the user visited a node or
    /// tried to submit the form.
    @Default(ShowErrors.progressively) ShowErrors showErrors,

    /// Called when the users tries to quit the form, for exapmle by pressing
    /// the back button in the app bar. If the method returns false, the form
    /// won't be quitted.
    @notSerializable Future<bool?> Function(BuildContext context)? canQuit,

    /// Will be merged with context theme.
    WoFormThemeData? theme,

    /// Padding applied around all the widgets inside this form, except for
    /// the app bar, the bottom bar and the floating widgets.
    @EdgeInsetsNullableConverter() EdgeInsets? padding,

    /// If true, the inputs will be wrapped inside a SingleChildScrollView.
    @Default(true) bool scrollable,
  }) = _WoFormUiSettings;

  const WoFormUiSettings._();

  factory WoFormUiSettings.fromJson(Json json) =>
      _$WoFormUiSettingsFromJson(json);
}

enum SubmitButtonPosition { body, appBar, bottomBar, floating }

enum DisableSubmitButton { never, whenInvalid, whenInitialOrSubmitSuccess }

typedef ScaffoldBuilderDef = Widget Function(Widget body);

// TODO : ShowErrors.afterSubmission
enum ShowErrors {
  /// Always show errors.
  ///
  /// Concretely, this marks all the paths as visited, right from the start.
  always,

  /// Only show errors of visited paths. Note that, after the user submits the
  /// form, all paths become visited, revealing all the errors.
  progressively,
}

typedef MultiStepProgressIndicatorBuilderDef =
    Widget Function({required int index, required int maxIndex});

@freezed
sealed class WoFormSubmitMode with _$WoFormSubmitMode {
  const factory WoFormSubmitMode.standard({
    String? submitText,
    @notSerializable IconData? submitIcon,
    @Default(DisableSubmitButton.never) DisableSubmitButton disableSubmitMode,
    @Default(SubmitButtonPosition.body) SubmitButtonPosition buttonPosition,
    @notSerializable ScaffoldBuilderDef? scaffoldBuilder,
  }) = StandardSubmitMode;

  const factory WoFormSubmitMode.multiStep({
    String? submitText,
    @notSerializable IconData? submitIcon,

    /// Text for the submit button if it navigates to the next form page.
    /// Falls back to submitText if not provided.
    String? nextText,
    @Default(DisableSubmitButton.never) DisableSubmitButton disableSubmitMode,
    @Default(true) bool showProgressIndicator,

    @notSerializable
    MultiStepProgressIndicatorBuilderDef? progressIndicatorBuilder,
  }) = MultiStepSubmitMode;

  const WoFormSubmitMode._();

  factory WoFormSubmitMode.fromJson(Json json) =>
      _$WoFormSubmitModeFromJson(json);

  // --

  SubmitButtonPosition get buttonPosition => switch (this) {
    StandardSubmitMode(buttonPosition: final p) => p,
    MultiStepSubmitMode() => SubmitButtonPosition.bottomBar,
  };
}
