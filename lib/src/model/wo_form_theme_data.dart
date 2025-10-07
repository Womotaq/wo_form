import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/src/utils/json_annotation.dart';
import 'package:wo_form/wo_form.dart';

export 'package:phone_form_field/phone_form_field.dart' show IsoCode;

part 'wo_form_theme_data.freezed.dart';
part 'wo_form_theme_data.g.dart';

typedef WidgetBuilderDef = Widget Function(BuildContext context);
typedef ScoreWidgetBuilderDef = Widget Function({required num score});
typedef SubmitButtonMarginDef =
    EdgeInsets Function(SubmitButtonPosition position);
typedef SubmitButtonStyleDef = ButtonStyle Function(BuildContext context);

@freezed
abstract class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    @notSerializable BooleanFieldBuilderDef? booleanFieldBuilder,
    @notSerializable DateTimeFieldBuilderDef? dateTimeFieldBuilder,
    @notSerializable IsoCode? defaultPhoneCoutry,
    @notSerializable DurationFieldBuilderDef? durationFieldBuilder,
    @notSerializable
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeAddButtonBuilder,
    DynamicInputsNodeAddButtonPosition? dynamicInputsNodeAddButtonPosition,
    @notSerializable
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    @notSerializable FormatDurationDef? formatDuration,
    @notSerializable WidgetBuilderDef? formPageBuilder,
    @notSerializable GenerateIdDef? generateId,
    @notSerializable HeaderBuilderDef? headerBuilder,
    @notSerializable InputHeaderBuilderDef? inputHeaderBuilder,

    /// Only used when [ChildrenVisibility.whenAsked].
    ///
    /// Default to [InputsNodeExpander.page].
    /// An alternative is [InputsNodeExpander.modal].
    @notSerializable InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    @notSerializable InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    @notSerializable MediaFieldBuilderDef? mediaFieldBuilder,
    @notSerializable
    MultiStepProgressIndicatorBuilderDef? multiStepProgressIndicatorBuilder,
    @notSerializable NumFieldBuilderDef? numFieldBuilder,
    @notSerializable PickDateDef? pickDate,
    @notSerializable PickDurationDef? pickDuration,
    @notSerializable PickTimeDef? pickTime,

    /// If this is set and returns null, there won't be a quit button.
    @notSerializable QuitButtonBuilderDef? quitButtonBuilder,
    @notSerializable ScoreWidgetBuilderDef? scoreBuilder,
    @notSerializable SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    @notSerializable ScaffoldBuilderDef? standardScaffoldBuilder,
    @notSerializable StringFieldBuilderDef? stringFieldBuilder,
    StringFieldLocation? stringFieldErrorLocation,
    StringFieldLocation? stringFieldHelperLocation,
    StringFieldLocation? stringFieldLabelLocation,
    StringFieldLocation? stringFieldPrefixIconLocation,
    @notSerializable SubmitButtonBuilderDef? submitButtonBuilder,

    /// Default values :
    /// - SubmitButtonPosition.body: EdgeInsets.only(top: 32, bottom: 12)
    /// - SubmitButtonPosition.bottomBar : EdgeInsets.symmetric(vertical: 16)
    ///
    /// For appBar and floating, the margin is not implemented yet.
    @notSerializable SubmitButtonMarginDef? submitButtonMargin,

    /// Not compatible with SubmitButtonPosition.floating.
    @notSerializable SubmitButtonStyleDef? submitButtonStyle,
    @notSerializable OnDynamicInputDeletionDef? onDynamicInputDeletion,
    @notSerializable OnSubmitErrorDef? onSubmitError,

    /// The form's entire width won't exceed this value. Defaults to 512.
    double? maxWidth,

    /// This spacing will be placed between each [WoFormNode].
    double? spacing,

    /// Add the characters ' *' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();

  factory WoFormThemeData.fromJson(Json json) =>
      _$WoFormThemeDataFromJson(json);

  // --

  // ignore: constant_identifier_names
  static const DEFAULT_MAX_WIDTH = 512.0;

  WoFormThemeData merge(WoFormThemeData? other) => other == null
      ? this
      : WoFormThemeData(
          booleanFieldBuilder: booleanFieldBuilder ?? other.booleanFieldBuilder,
          dateTimeFieldBuilder:
              dateTimeFieldBuilder ?? other.dateTimeFieldBuilder,
          defaultPhoneCoutry: defaultPhoneCoutry ?? other.defaultPhoneCoutry,
          durationFieldBuilder:
              durationFieldBuilder ?? other.durationFieldBuilder,
          dynamicInputsNodeAddButtonBuilder:
              dynamicInputsNodeAddButtonBuilder ??
              other.dynamicInputsNodeAddButtonBuilder,
          dynamicInputsNodeAddButtonPosition:
              dynamicInputsNodeAddButtonPosition ??
              other.dynamicInputsNodeAddButtonPosition,
          dynamicInputsNodeWidgetBuilder:
              dynamicInputsNodeWidgetBuilder ??
              other.dynamicInputsNodeWidgetBuilder,
          formatDuration: formatDuration ?? other.formatDuration,
          formPageBuilder: formPageBuilder ?? other.formPageBuilder,
          generateId: generateId ?? other.generateId,
          headerBuilder: headerBuilder ?? other.headerBuilder,
          inputHeaderBuilder: inputHeaderBuilder ?? other.inputHeaderBuilder,
          inputsNodeExpanderBuilder:
              inputsNodeExpanderBuilder ?? other.inputsNodeExpanderBuilder,
          inputsNodeWidgetBuilder:
              inputsNodeWidgetBuilder ?? other.inputsNodeWidgetBuilder,
          mediaFieldBuilder: mediaFieldBuilder ?? other.mediaFieldBuilder,
          numFieldBuilder: numFieldBuilder ?? other.numFieldBuilder,
          pickDate: pickDate ?? other.pickDate,
          pickDuration: pickDuration ?? other.pickDuration,
          pickTime: pickTime ?? other.pickTime,
          quitButtonBuilder: quitButtonBuilder ?? other.quitButtonBuilder,
          scoreBuilder: scoreBuilder ?? other.scoreBuilder,
          selectFieldBuilder: selectFieldBuilder ?? other.selectFieldBuilder,
          standardScaffoldBuilder:
              standardScaffoldBuilder ?? other.standardScaffoldBuilder,
          stringFieldBuilder: stringFieldBuilder ?? other.stringFieldBuilder,
          stringFieldErrorLocation:
              stringFieldErrorLocation ?? other.stringFieldErrorLocation,
          stringFieldHelperLocation:
              stringFieldHelperLocation ?? other.stringFieldHelperLocation,
          stringFieldLabelLocation:
              stringFieldLabelLocation ?? other.stringFieldLabelLocation,
          stringFieldPrefixIconLocation:
              stringFieldPrefixIconLocation ??
              other.stringFieldPrefixIconLocation,
          submitButtonBuilder: submitButtonBuilder ?? other.submitButtonBuilder,
          submitButtonStyle: submitButtonStyle ?? other.submitButtonStyle,
          submitButtonMargin: submitButtonMargin ?? other.submitButtonMargin,
          onDynamicInputDeletion:
              onDynamicInputDeletion ?? other.onDynamicInputDeletion,
          onSubmitError: onSubmitError ?? other.onSubmitError,
          maxWidth: maxWidth ?? other.maxWidth,
          spacing: spacing ?? other.spacing,
          showAsteriskIfRequired:
              showAsteriskIfRequired ?? other.showAsteriskIfRequired,
        );
}
