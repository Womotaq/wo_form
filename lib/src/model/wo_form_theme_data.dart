import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

export 'package:phone_form_field/phone_form_field.dart' show IsoCode;

part 'wo_form_theme_data.freezed.dart';

typedef WidgetBuilderDef = Widget Function(BuildContext context);
typedef ScoreWidgetBuilderDef = Widget Function({required num score});

@freezed
class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    BooleanFieldBuilderDef? booleanFieldBuilder,
    IsoCode? defaultPhoneCoutry,
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    WidgetBuilderDef? formPageBuilder,
    GenerateIdDef? generateId,
    HeaderBuilderDef? headerBuilder,
    InputHeaderBuilderDef? inputHeaderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    ScoreWidgetBuilderDef? scoreBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    ScaffoldBuilderDef? standardScaffoldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
    SubmitButtonBuilderDef? submitButtonBuilder,
    OnDynamicInputDeletionDef? onDynamicInputDeletion,
    OnSubmitErrorDef? onSubmitError,

    /// This spacing will be added at the bottom of each [WoFormNodeMixin].
    double? verticalSpacing,

    /// Add the character '*' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}
