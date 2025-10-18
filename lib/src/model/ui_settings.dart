import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/model/json_converter/edge_insets.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/src/utils/json_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'ui_settings.freezed.dart';
part 'ui_settings.g.dart';

@freezed
abstract class InputUiSettings with _$InputUiSettings {
  const factory InputUiSettings({
    /// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
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
    Widget Function(WoFieldData<BooleanInput, bool> data);

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
    Widget Function(WoFieldData<DateTimeInput, DateTime> data);

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

    /// If null or O, header will be placed above the field.
    /// Else, header and selector will be in a the same row.
    /// If -1, the field will take as much space as he wants
    /// (might not work with all fields).
    /// Else, the field will be wrapped in a Flexible with a flex value of 10,
    /// and the header with a flex value of [headerFlex].
    int? headerFlex,
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
          headerFlex: headerFlex ?? other.headerFlex,
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
    Widget Function(WoFieldData<DurationInput, Duration> data);

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

    /// If null or O, header will be placed above the field.
    /// Else, header and selector will be in a the same row.
    /// If -1, the field will take as much space as he wants
    /// (might not work with all fields).
    /// Else, the field will be wrapped in a Flexible with a flex value of 10,
    /// and the header with a flex value of [headerFlex].
    int? headerFlex,
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
          headerFlex: headerFlex ?? other.headerFlex,
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

enum DynamicInputsNodeAddButtonPosition {
  /// Will be set at the trailing location of the header.
  header,
  footer,
}

typedef GenerateIdDef = String Function();
typedef OnDynamicInputDeletionDef =
    void Function(BuildContext context, VoidCallback cancel);
typedef DynamicInputsNodeWidgetBuilderDef =
    Widget Function(WoFieldData<DynamicInputsNode, List<WoFormNode>> data);

@freezed
abstract class DynamicInputsNodeUiSettings with _$DynamicInputsNodeUiSettings {
  const factory DynamicInputsNodeUiSettings({
    String? labelText,
    String? helperText,

    /// Default to true
    bool? reorderable,

    /// Default to [reorderable].
    bool? oddEvenRowColors,

    /// if null, the add button will be an IconButton with a '+'.
    String? addButtonText,

    /// Defaults to [DynamicInputsNodeAddButtonPosition.header].
    DynamicInputsNodeAddButtonPosition? addButtonPosition,
    @notSerializable DynamicInputsNodeWidgetBuilderDef? addButtonBuilder,

    /// Defaults to [Push.modalBottomSheet] with initialBottomSheetSize at 0.9.
    /// Serializable if you use on of Push's default methods.
    @PushDefNullableConverter() PushDef? openTemplates,

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
          oddEvenRowColors: oddEvenRowColors ?? other.oddEvenRowColors,
          addButtonText: addButtonText ?? other.addButtonText,
          addButtonPosition: addButtonPosition ?? other.addButtonPosition,
          addButtonBuilder: addButtonBuilder ?? other.addButtonBuilder,
          openTemplates: openTemplates ?? other.openTemplates,
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
    @notSerializable Widget? prefixIcon,
  }) = _DynamicInputUiSettings;

  const DynamicInputUiSettings._();

  factory DynamicInputUiSettings.fromJson(Json json) =>
      _$DynamicInputUiSettingsFromJson(json);

  DynamicInputUiSettings merge(DynamicInputUiSettings? other) => other == null
      ? this
      : DynamicInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          prefixIcon: prefixIcon ?? other.prefixIcon,
        );
}

enum ChildrenVisibility { always, whenAsked }

// LATER : when submitting a field from an opened page, only submit this page,
//  and let custom functions be launched at submitting, error, and success.

typedef InputNodeWidgetBuilderDef =
    Widget Function(WoFieldData<InputsNode, void> data);

typedef HeaderBuilderDef = Widget Function(WoFormHeaderData data);

@freezed
abstract class InputsNodeUiSettings with _$InputsNodeUiSettings {
  const factory InputsNodeUiSettings({
    /// This field determines the layout of this node :
    /// - -1 : [LayoutMethod.scrollable], the node expands, the children are
    ///        in a scrollable view.
    /// - 0 : [LayoutMethod.shrinkWrap], the children are shrunk
    /// - 1 and more : [LayoutMethod.flexible], the node expands, the children
    ///                share the availible space
    ///
    /// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
    /// only applies to the context opened by [openChildren].
    /// When it is [ChildrenVisibility.always], if [flex] is different than 0,
    /// the parent widget needs to provide a finite height
    /// (for example, using [LayoutMethod.flexible]).
    ///
    /// The default value depends on [childrenVisibility] :
    /// - [ChildrenVisibility.always] : 0
    /// - [ChildrenVisibility.whenAsked] : -1
    int? flex,

    /// If [flex] is -1, the children order will be inverted,
    /// including the header.
    ///
    /// Defaults to false.
    bool? reverse,
    String? labelText,
    String? labelTextWhenChildrenHidden,
    int? labelMaxLines,
    String? helperText,

    /// Default to always.
    ChildrenVisibility? childrenVisibility,

    /// Only used when [ChildrenVisibility.whenAsked].
    /// If true, when the widget will be rendered,
    /// the children's visibility will be asked.
    ///
    /// Default to false.
    bool? showChildrenInitially,

    /// Defaults to [Push.page].
    /// Serializable if you use on of Push's default methods.
    @PushDefNullableConverter() PushDef? openChildren,

    /// Only used when ChildrenVisibility.always.
    ///
    /// Default to Axis.vertical
    Axis? direction,

    /// Only used when ChildrenVisibility.always.
    ///
    /// Default to CrossAxisAlignment.stretch
    CrossAxisAlignment? crossAxisAlignment,

    /// This spacing will be placed between each [WoFormNode].
    double? spacing,
    @notSerializable InputNodeWidgetBuilderDef? widgetBuilder,

    /// Only used when [ChildrenVisibility.always].
    @notSerializable HeaderBuilderDef? headerBuilder,

    /// Only used when [ChildrenVisibility.whenAsked].
    ///
    /// Default to [InputsNodeExpander.page].
    /// An alternative is [InputsNodeExpander.modal].
    @notSerializable InputNodeWidgetBuilderDef? expanderBuilder,

    /// Only used when [ChildrenVisibility.whenAsked].
    @notSerializable InputHeaderBuilderDef? inputHeaderBuilder,
  }) = _InputsNodeUiSettings;

  const InputsNodeUiSettings._();

  factory InputsNodeUiSettings.fromJson(Json json) =>
      _$InputsNodeUiSettingsFromJson(json);

  InputsNodeUiSettings merge(InputsNodeUiSettings? other) => other == null
      ? this
      : InputsNodeUiSettings(
          flex: flex ?? other.flex,
          labelText: labelText ?? other.labelText,
          labelTextWhenChildrenHidden:
              labelTextWhenChildrenHidden ?? other.labelTextWhenChildrenHidden,
          labelMaxLines: labelMaxLines ?? other.labelMaxLines,
          helperText: helperText ?? other.helperText,
          childrenVisibility: childrenVisibility ?? other.childrenVisibility,
          showChildrenInitially:
              showChildrenInitially ?? other.showChildrenInitially,
          openChildren: openChildren ?? other.openChildren,
          direction: direction ?? other.direction,
          crossAxisAlignment: crossAxisAlignment ?? other.crossAxisAlignment,
          spacing: spacing ?? other.spacing,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          expanderBuilder: expanderBuilder ?? other.expanderBuilder,
          inputHeaderBuilder: inputHeaderBuilder ?? other.inputHeaderBuilder,
        );
}

extension InputsNodeUiSettingsX on InputsNodeUiSettings? {
  int get flexOrDefault =>
      this?.flex ??
      (this?.childrenVisibility == ChildrenVisibility.whenAsked ? -1 : 0);
}

typedef MediaFieldBuilderDef =
    Widget Function(WoFieldData<MediaInput, List<Media>?> data);

@freezed
abstract class MediaInputUiSettings with _$MediaInputUiSettings {
  const factory MediaInputUiSettings({
    @notSerializable Widget? addMediaIcon,
    String? addMediaText,
    int? fieldHeight,
    BoxFit? fit,

    /// For a circle cropping, use MediaService.circleAspectRatio
    double? cropAspectRatioOrCircle,
    bool? cropShowGrid,
    @notSerializable MediaFieldBuilderDef? widgetBuilder,
  }) = _MediaInputUiSettings;

  const MediaInputUiSettings._();

  factory MediaInputUiSettings.fromJson(Json json) =>
      _$MediaInputUiSettingsFromJson(json);

  MediaInputUiSettings merge(MediaInputUiSettings? other) => other == null
      ? this
      : MediaInputUiSettings(
          addMediaText: addMediaText ?? other.addMediaText,
          fieldHeight: fieldHeight ?? other.fieldHeight,
          cropAspectRatioOrCircle:
              cropAspectRatioOrCircle ?? other.cropAspectRatioOrCircle,
          cropShowGrid: cropShowGrid ?? other.cropShowGrid,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef NumFieldBuilderDef = Widget Function(WoFieldData<NumInput, num> data);

enum NumInputStyle { selector, slider }

@freezed
abstract class NumInputUiSettings with _$NumInputUiSettings {
  const factory NumInputUiSettings({
    /// If null or O, header will be placed above the field.
    /// Else, header and selector will be in a the same row.
    /// If -1, the field will take as much space as he wants
    /// (might not work with all fields).
    /// Else, the field will be wrapped in a Flexible with a flex value of 10,
    /// and the header with a flex value of [headerFlex].
    ///
    /// Only with [NumInputStyle.slider].
    int? headerFlex,
    String? labelText,
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
          headerFlex: headerFlex ?? other.headerFlex,
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          style: style ?? other.style,
          unit: unit ?? other.unit,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

typedef SelectFieldBuilderDef<T> =
    Widget Function(WoFieldData<SelectInput<T>, List<T>> data);
typedef SelectFieldTileBuilderDef<T> =
    Widget Function(T value, VoidCallback onTap, bool isSelected);

typedef InputHeaderBuilderDef = Widget Function(WoFormInputHeaderData data);
typedef ValueBuilderDef<T> = Widget Function(T? value);

@freezed
abstract class SelectInputUiSettings<T> with _$SelectInputUiSettings<T> {
  const factory SelectInputUiSettings({
    // What you can do :
    // ? a field with always visible options
    //   ? whole field shrinks to its minimal size
    //   ? whole field expands and the options are in a scrollable view
    //     - the size of the field is determined by the parent and [flex]
    //     - the parent must provide a finite height
    // ? a field with options shown in a new context (menu, modal, page...)
    //   ? options shrink to their minimal size
    //   ? options scrollable
    //     - allows draggable modal
    //
    /// This field determines the layout of this node :
    /// - 0 : the [SelectInput.availibleValues] shrink to their minimal size
    /// - other : the [SelectInput.availibleValues] are in a scrollable view
    ///
    /// When [childrenVisibility] is [ChildrenVisibility.whenAsked], the layout
    /// only applies to the context opened by [openChildren].
    /// When it is [ChildrenVisibility.always], if [flex] is different than 0,
    /// the parent widget needs to provide a finite height
    /// (for example, using [LayoutMethod.flexible]).
    ///
    /// Defaults to 0.
    int? flex,
    String? labelText,
    String? helperText,
    String? hintText,
    ChildrenVisibility? childrenVisibility,

    /// Only used when [SelectInput.maxCount] is 1
    /// and childrenVisibility is [ChildrenVisibility.whenAsked].
    ///
    /// If null or O, header will be placed above the field.
    /// Else, header and selector will be in a the same row.
    /// If -1, the field will take as much space as he wants
    /// (might not work with all fields).
    /// Else, the field will be wrapped in a Flexible with a flex value of 10,
    /// and the header with a flex value of [headerFlex].
    int? headerFlex,
    @notSerializable Widget? prefixIcon,
    @notSerializable ValueBuilderDef<T>? valueBuilder,
    @notSerializable ValueBuilderDef<T>? selectedBuilder,
    @notSerializable Widget? Function(T value)? helpValueBuilder,

    /// A function that calculates how well a [value] matches the search.
    ///
    /// This function must return a score between 0.0 (no match) and 1.0
    /// (perfect match).
    ///
    /// The [query] passed to this function is guaranteed to be lowercase and
    /// without diacritics (e.g., accents, umlauts).
    @notSerializable double Function(WoFormQuery query, T value)? searchScore,
    @notSerializable SearchScreenDef<T>? searchScreenBuilder,

    /// Defaults to [Push.menu].
    /// Serializable if you use on of Push's default methods.
    @PushDefNullableConverter() PushDef? openChildren,
    @notSerializable InputHeaderBuilderDef? headerBuilder,
    @notSerializable ScoreWidgetBuilderDef? scoreBuilder,

    /// Only used when childrenVisibility is always.
    @notSerializable SelectFieldTileBuilderDef<T>? tileBuilder,
    @notSerializable SelectFieldBuilderDef<T>? widgetBuilder,
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
          headerFlex: headerFlex ?? other.headerFlex,
          valueBuilder: valueBuilder ?? other.valueBuilder,
          selectedBuilder: selectedBuilder ?? other.selectedBuilder,
          helpValueBuilder: helpValueBuilder ?? other.helpValueBuilder,
          searchScore: searchScore ?? other.searchScore,
          searchScreenBuilder: searchScreenBuilder ?? other.searchScreenBuilder,
          openChildren: openChildren ?? other.openChildren,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          scoreBuilder: scoreBuilder ?? other.scoreBuilder,
          tileBuilder: tileBuilder ?? other.tileBuilder,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

enum StringFieldAction { clear, obscure }

enum StringFieldLocation {
  inside,
  outside;

  bool get isInside => this == inside;
  bool get isOutside => this == outside;
}

/// Whether this text field should focus itself if nothing else is already
/// focused.
///
/// If true, the keyboard will open as soon as this text field obtains focus.
/// Otherwise, the keyboard is only shown after the user taps the text field.
///
/// Applies to [TextFormField.autofocus].
enum WoFormAutofocus {
  /// The field will require focus at its creation.
  yes,

  /// If the initial value is null or empty, the field will require focus
  /// at its creation.
  ifEmpty,

  no,
}

typedef StringFieldBuilderDef =
    Widget Function(WoFieldData<StringInput, String> data);
typedef ErrorBuilderDef = Widget Function(WoFormInputError error);

@freezed
abstract class StringInputUiSettings with _$StringInputUiSettings {
  const factory StringInputUiSettings({
    /// Requires [WoFormUiSettings.layout] at [LayoutMethod.flexible].
    int? flex,

    /// If null or O, header will be placed above the field.
    /// Else, header and selector will be in a the same row.
    /// If -1, the field will take as much space as he wants
    /// (might not work with all fields).
    /// Else, the field will be wrapped in a Flexible with a flex value of 10,
    /// and the header with a flex value of [headerFlex].
    ///
    /// Only used when [labelLocation] is [StringFieldLocation.outside].
    int? headerFlex,

    String? labelText,

    /// Default to StringFieldLocation.inside
    StringFieldLocation? labelLocation,
    String? hintText,
    String? helperText,

    /// Defaults to 1. If you want to set it to null, enter 0.
    int? helperMaxLines,
    @notSerializable Widget? helper,

    /// Default to StringFieldLocation.inside
    StringFieldLocation? helperLocation,
    @notSerializable Widget? prefixIcon,

    /// Default to StringFieldLocation.outside
    StringFieldLocation? prefixIconLocation,

    /// Default to StringFieldLocation.inside
    StringFieldLocation? errorLocation,
    StringFieldAction? action,

    /// By default, this is determined by [textInputAction]:
    ///
    /// - **`false`** if the action is navigational or internal
    /// (`.next`, `.previous`, `.continueAction`, or `.newline`).
    /// - **`true`** for any other action.
    bool? submitFormOnFieldSubmitted,
    @TextInputTypeConverter() TextInputType? keyboardType,
    bool? obscureText,
    bool? autocorrect,
    List<String>? autofillHints,

    /// If [WoFormAutofocus.true], or [WoFormAutofocus.ifEmpty] and the initial
    /// value is empty, the field will request focus at its creation.
    ///
    /// Defaults to WoFormAutofocus.false
    WoFormAutofocus? autofocus,
    TextInputAction? textInputAction,

    /// Defaults to TextCapitalization.none.
    TextCapitalization? textCapitalization,

    /// Defaults to 1. If you want to set it to null, enter 0.
    int? maxLines,
    String? invalidRegexMessage,

    // If true, InputDecoration.collapsed will be used.
    bool? collapsed,
    @EdgeInsetsNullableConverter() EdgeInsets? padding,
    @notSerializable TextStyle? style,
    @notSerializable StringFieldBuilderDef? widgetBuilder,
    @notSerializable ErrorBuilderDef? errorBuilder,
  }) = _StringInputUiSettings;

  factory StringInputUiSettings.email({
    int? flex,
    int? headerFlex,
    String? labelText,
    StringFieldLocation? labelLocation,
    String? hintText,
    String? helperText,
    int? helperMaxLines,
    Widget? helper,
    StringFieldLocation? helperLocation,
    Widget? prefixIcon,
    StringFieldLocation? prefixIconLocation,
    StringFieldLocation? errorLocation,
    bool? submitFormOnFieldSubmitted,
    WoFormAutofocus? autofocus,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    EdgeInsets? padding,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
    ErrorBuilderDef? errorBuilder,
  }) => StringInputUiSettings(
    flex: flex,
    headerFlex: headerFlex,
    labelText: labelText,
    labelLocation: labelLocation,
    hintText: hintText,
    helperText: helperText,
    helperMaxLines: helperMaxLines,
    helper: helper,
    helperLocation: helperLocation,
    prefixIcon: prefixIcon,
    prefixIconLocation: prefixIconLocation,
    errorLocation: errorLocation,
    submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
    autofocus: autofocus,
    textInputAction: textInputAction,
    invalidRegexMessage: invalidRegexMessage,
    padding: padding,
    style: style,
    widgetBuilder: widgetBuilder,
    errorBuilder: errorBuilder,
    keyboardType: TextInputType.emailAddress,
    autocorrect: false,
    autofillHints: const [AutofillHints.email],
    maxLines: 1,
  );

  factory StringInputUiSettings.password({
    int? flex,
    int? headerFlex,
    String? labelText,
    StringFieldLocation? labelLocation,
    String? hintText,
    String? helperText,
    int? helperMaxLines,
    Widget? helper,
    StringFieldLocation? helperLocation,
    Widget? prefixIcon,
    StringFieldLocation? prefixIconLocation,
    StringFieldLocation? errorLocation,
    bool? submitFormOnFieldSubmitted,
    WoFormAutofocus? autofocus = WoFormAutofocus.no,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    EdgeInsets? padding,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
    ErrorBuilderDef? errorBuilder,
  }) => StringInputUiSettings(
    flex: flex,
    headerFlex: headerFlex,
    labelText: labelText,
    labelLocation: labelLocation,
    hintText: hintText,
    helperText: helperText,
    helperMaxLines: helperMaxLines,
    helper: helper,
    helperLocation: helperLocation,
    prefixIcon: prefixIcon,
    prefixIconLocation: prefixIconLocation,
    errorLocation: errorLocation,
    submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
    textInputAction: textInputAction,
    invalidRegexMessage: invalidRegexMessage,
    padding: padding,
    style: style,
    widgetBuilder: widgetBuilder,
    errorBuilder: errorBuilder,
    action: StringFieldAction.obscure,
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    autocorrect: false,
    autofillHints: const [
      AutofillHints.password,
      AutofillHints.newPassword,
    ],
    autofocus: autofocus,
    maxLines: 1,
  );

  factory StringInputUiSettings.phone({
    int? flex,
    int? headerFlex,
    String? labelText,
    StringFieldLocation? labelLocation,
    String? hintText,
    String? helperText,
    int? helperMaxLines,
    Widget? helper,
    StringFieldLocation? helperLocation,
    Widget? prefixIcon,
    StringFieldLocation? prefixIconLocation,
    StringFieldLocation? errorLocation,
    bool? submitFormOnFieldSubmitted,
    WoFormAutofocus? autofocus,
    TextInputAction? textInputAction,
    EdgeInsets? padding,
    TextStyle? style,
    StringFieldBuilderDef? widgetBuilder,
    ErrorBuilderDef? errorBuilder,
  }) => StringInputUiSettings(
    flex: flex,
    headerFlex: headerFlex,
    labelText: labelText,
    labelLocation: labelLocation,
    hintText: hintText,
    helperText: helperText,
    helperMaxLines: helperMaxLines,
    helper: helper,
    helperLocation: helperLocation,
    prefixIcon: prefixIcon,
    prefixIconLocation: prefixIconLocation,
    errorLocation: errorLocation,
    submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
    autofocus: autofocus,
    textInputAction: textInputAction,
    padding: padding,
    style: style,
    widgetBuilder: widgetBuilder,
    errorBuilder: errorBuilder,
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
          flex: flex ?? other.flex,
          headerFlex: headerFlex ?? other.headerFlex,
          labelText: labelText ?? other.labelText,
          labelLocation: labelLocation ?? other.labelLocation,
          hintText: hintText ?? other.hintText,
          helperText: helperText ?? other.helperText,
          helperMaxLines: helperMaxLines ?? other.helperMaxLines,
          helper: helper ?? other.helper,
          helperLocation: helperLocation ?? other.helperLocation,
          prefixIcon: prefixIcon ?? other.prefixIcon,
          prefixIconLocation: prefixIconLocation ?? other.prefixIconLocation,
          errorLocation: errorLocation ?? other.errorLocation,
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
          collapsed: collapsed ?? other.collapsed,
          padding: padding ?? other.padding,
          style: style ?? other.style,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
          errorBuilder: errorBuilder ?? other.errorBuilder,
        );
}

enum WoFormTitlePosition { header, appBar }

typedef SubmitButtonBuilderDef = Widget Function(SubmitButtonData data);
typedef QuitButtonBuilderDef = Widget? Function();

@freezed
abstract class WoFormUiSettings with _$WoFormUiSettings {
  const factory WoFormUiSettings({
    @Default('') String titleText,
    @Default(WoFormTitlePosition.header) WoFormTitlePosition titlePosition,
    @notSerializable HeaderBuilderDef? headerBuilder,

    /// If this is set and returns null, there won't be a quit button.
    @notSerializable QuitButtonBuilderDef? quitButtonBuilder,

    /// If set, the form's direct children will be considered as steps,
    /// each shown in a dedicated pages.
    MultistepSettings? multistepSettings,
    @Default(DisableSubmitButton.never) DisableSubmitButton disableSubmitMode,

    /// The text of the submit button. Falls back to [WoFormL10n.submitText].
    String? submitText,

    /// The icon of the submit button.
    @notSerializable IconData? submitIcon,

    @notSerializable SubmitButtonBuilderDef? submitButtonBuilder,

    /// The position of the submit button in the form.
    @Default(SubmitButtonPosition.body)
    SubmitButtonPosition submitButtonPosition,

    @notSerializable ScaffoldBuilderDef? scaffoldBuilder,

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

    /// Controls the layout behavior of the body. Switch to
    /// [LayoutMethod.flexible] if you want to use `uiSettings.flex`.
    ///
    /// The body consists of your inputs and potentially the submit button,
    /// if [WoFormUiSettings.submitButtonPosition] is SubmitButtonPosition.body
    /// (wich is the default value).
    ///
    /// Due to PageView restrictions, [LayoutMethod.shrinkWrap] is incompatible
    /// with [multistepSettings].
    @Default(LayoutMethod.scrollable) LayoutMethod layout,

    /// Controls how the form is presented to the user.
    ///
    /// This determines whether the form is displayed as a full-page screen or
    /// as a modal overlay. It affects the title and navigation controls.
    @Default(WoFormPresentation.page) WoFormPresentation presentation,
  }) = _WoFormUiSettings;

  const WoFormUiSettings._();

  factory WoFormUiSettings.fromJson(Json json) =>
      _$WoFormUiSettingsFromJson(json);

  // --

  /// True when providing a ScrollProvider with ScrollControllerProvider will
  /// have an effect.
  ///
  /// When a form uses multisteps, since it means using PageView,
  /// it needs a fixed height.
  bool get acceptScrollController =>
      layout.isScrollable && multistepSettings == null;
}

enum SubmitButtonPosition { body, appBar, bottomBar, floating }

enum DisableSubmitButton { never, whenInvalid, whenInitialOrSubmitSuccess }

typedef ScaffoldBuilderDef = Widget Function(Widget body);

enum ShowErrors {
  /// Only show errors after the form was submitted at least once.
  afterSubmission,

  /// Always show errors.
  ///
  /// Concretely, this marks all the paths as visited, right from the start.
  always,

  /// Only show errors of visited paths. Note that, after the user submits the
  /// form, all paths become visited, revealing all the errors.
  ///
  /// The default value.
  progressively,
}

/// Controls the layout behavior of the body.
///
/// The body consists of your inputs and potentially the submit button,
/// if [WoFormUiSettings.submitButtonPosition] is SubmitButtonPosition.body
/// (wich is the default value).
enum LayoutMethod {
  /// The body will be wrapped in a SingleChildScrollView, allowing content
  /// that overflows the screen to be scrolled.
  ///
  /// In this mode, children can't use `uiSettings.flex`.
  scrollable,

  /// The body will take the least space possible. The entire form will fit
  /// to the size of the body.
  ///
  /// In this mode, children can't use `uiSettings.flex`.
  shrinkWrap,

  /// The body will use a flexible layout, allowing its children to be sized
  /// using `uiSettings.flex` and expand to fill the available screen space.
  flexible;

  bool get isScrollable => this == LayoutMethod.scrollable;
  bool get shrinks => this == LayoutMethod.shrinkWrap;
  bool get supportFlex => this == LayoutMethod.flexible;

  /// Transforms a flex value into a layout method. Possible values :
  /// - `-1` : scrollable
  /// - `0` : shrinkWrap
  /// - `>= 1` : flexible
  static LayoutMethod fromFlex(int flex) => flex == -1
      ? LayoutMethod.scrollable
      : flex == 0
      ? LayoutMethod.shrinkWrap
      : LayoutMethod.flexible;
}

/// This mode only affects the navigation controls.
///
/// You may use the default method to open a form:
/// ```dart
/// /// Opens the form in a page, a bottom sheet or a dialog,
/// /// depending on [WoFormUiSettings.presentation].
/// context.openForm(
///   WoForm(...),
/// );
/// ```
///
/// Or use your own:
/// ```dart
/// showDialog(
///   context: context,
///   builder: (context) => Dialog(
///     child: WoForm(
///       uiSettings: WoFormUiSettings(
///         presentation: WoFormPresentation.dialog,
///       ),
///       ...
///     ),
///   ),
/// );
/// ```
enum WoFormPresentation {
  /// Suitable for forms with a dedicated screen in your app.
  ///
  /// By default, the quit button is an < at the top-left of the form.
  page,

  /// Suitable for forms that you will display in a dialog.
  ///
  /// By default, the quit button is an X at the top-right of the form.
  dialog,

  /// Suitable for forms that you will display in a bottom sheet.
  ///
  /// By default, there is no quit button.
  bottomSheet;

  bool get isModal => this != page;
}

typedef MultiStepProgressIndicatorBuilderDef = Widget Function();

/// The form's direct children will be considered as steps, shown one by one
/// in pages.
@freezed
sealed class MultistepSettings with _$MultistepSettings {
  /// The form's direct children will be considered as steps, shown one by one
  /// in pages.
  const factory MultistepSettings({
    /// Text for the submit button if it navigates to the next form page.
    /// Falls back to submitText if not provided.
    String? nextText,

    /// Defaults to [MultistepUrlStrategy.none].
    MultistepUrlStrategy? urlStrategy,
    @Default(true) bool showProgressIndicator,

    @notSerializable
    MultiStepProgressIndicatorBuilderDef? progressIndicatorBuilder,

    /// Called when a step is submited (optionnal). By default, the performed
    /// action is [MultistepAction.next].
    @notSerializable OnStepSubmittingDef? onStepSubmitting,

    /// Applied around the fields, not the progress indicator,
    /// nor the submit button.
    ///
    /// Defaults to EdgeInsets.only(top: 16, bottom: 32).
    @EdgeInsetsNullableConverter() EdgeInsets? fieldsPadding,
  }) = _MultistepSettings;

  const MultistepSettings._();

  factory MultistepSettings.fromJson(Json json) =>
      _$MultistepSettingsFromJson(json);

  // --

  bool get generatingSteps => onStepSubmitting != null;
}

/// Defines how the url on web will be updated when the user navigates through
/// the steps.
enum MultistepUrlStrategy {
  /// Navigating won't modify the url.
  ///
  /// Example : example.com/form
  none,

  /// Uses query parameters.
  /// The id of the current step is the value placed after '?step='.
  /// The first page won't have a query parameter.
  ///
  /// Example : example.com/form?step=email
  query,
}

typedef OnStepSubmittingDef =
    Future<MultistepAction?> Function(BuildContext context);
typedef NextStepDef = String? Function(String stepId, WoFormValues values);

@freezed
sealed class MultistepAction with _$MultistepAction {
  /// Will find the current step in the steps, and push the step
  /// that is right after. If the current step is the last one, the form
  /// will be submitted, calling [WoForm.onSubmitting].
  ///
  /// WARNING : [WoForm.onSubmitting] will be called even if other steps
  /// contain errors.
  ///
  /// The steps can be [RootNode.children], or [WoFormValues.generatedSteps]
  /// if [MultistepSettings.onStepSubmitting] != null.
  const factory MultistepAction.next() = MultistepActionNext;

  /// Will pop all the steps until [predicate] returns true.
  /// If provided, [then] will be executed next.
  ///
  /// Cannot pop the form, will at most pop until the first step.
  const factory MultistepAction.popUntil(
    bool Function(String stepId) predicate, {

    /// If provided, this step will be pushed, and when the animation  ends,
    /// the other steps will be popped, depending on [predicate].
    String? replacementStepId,
  }) = MultistepActionPopUntil;

  /// Will push the step that has the id [stepId]. If there is generated steps
  /// after the one that is being submitted, and the next generated step has a
  /// different id, then all the next steps will be cleared.
  const factory MultistepAction.push({required String stepId}) =
      MultistepActionPush;

  /// Will submit the form, calling [WoForm.onSubmitting].
  ///
  /// WARNING : [WoForm.onSubmitting] will be called even if other steps
  /// contain errors.
  const factory MultistepAction.submitForm() = MultistepActionSubmitForm;

  /// Required for the override getter
  const MultistepAction._();

  // --
}

// typedef PredicateDef = bool Function(String stepId);
