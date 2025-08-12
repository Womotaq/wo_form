import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

export 'package:phone_form_field/phone_form_field.dart' show IsoCode;

part 'wo_form_theme_data.freezed.dart';
part 'wo_form_theme_data.g.dart';

typedef WidgetBuilderDef = Widget Function(BuildContext context);
typedef ScoreWidgetBuilderDef = Widget Function({required num score});

@freezed
abstract class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    @notSerializable BooleanFieldBuilderDef? booleanFieldBuilder,
    @notSerializable DateTimeFieldBuilderDef? dateTimeFieldBuilder,
    @notSerializable IsoCode? defaultPhoneCoutry,
    @notSerializable DurationFieldBuilderDef? durationFieldBuilder,
    @notSerializable
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    @notSerializable FormatDurationDef? formatDuration,
    @notSerializable WidgetBuilderDef? formPageBuilder,
    @notSerializable GenerateIdDef? generateId,
    @notSerializable HeaderBuilderDef? headerBuilder,
    @notSerializable InputHeaderBuilderDef? inputHeaderBuilder,
    @notSerializable InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    @notSerializable InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    @notSerializable MediaFieldBuilderDef? mediaFieldBuilder,
    @notSerializable
    MultiStepProgressIndicatorBuilderDef? multiStepProgressIndicatorBuilder,
    @notSerializable NumFieldBuilderDef? numFieldBuilder,
    @notSerializable PickDateDef? pickDate,
    @notSerializable PickDurationDef? pickDuration,
    @notSerializable PickTimeDef? pickTime,
    @notSerializable ScoreWidgetBuilderDef? scoreBuilder,
    @notSerializable SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    @notSerializable ScaffoldBuilderDef? standardScaffoldBuilder,
    @notSerializable StringFieldBuilderDef? stringFieldBuilder,
    @notSerializable SubmitButtonBuilderDef? submitButtonBuilder,
    @notSerializable OnDynamicInputDeletionDef? onDynamicInputDeletion,
    @notSerializable OnSubmitErrorDef? onSubmitError,

    /// The form's entire width won't exceed this value. Defaults to 512.
    double? maxWidth,

    /// This spacing will be placed between each [WoFormNodeMixin].
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
          scoreBuilder: scoreBuilder ?? other.scoreBuilder,
          selectFieldBuilder: selectFieldBuilder ?? other.selectFieldBuilder,
          standardScaffoldBuilder:
              standardScaffoldBuilder ?? other.standardScaffoldBuilder,
          stringFieldBuilder: stringFieldBuilder ?? other.stringFieldBuilder,
          submitButtonBuilder: submitButtonBuilder ?? other.submitButtonBuilder,
          onDynamicInputDeletion:
              onDynamicInputDeletion ?? other.onDynamicInputDeletion,
          onSubmitError: onSubmitError ?? other.onSubmitError,
          maxWidth: maxWidth ?? other.maxWidth,
          spacing: spacing ?? other.spacing,
          showAsteriskIfRequired:
              showAsteriskIfRequired ?? other.showAsteriskIfRequired,
        );
}
