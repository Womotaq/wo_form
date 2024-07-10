import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_theme_data.freezed.dart';

typedef WidgetBuilderDef = Widget Function(BuildContext context);

@freezed
class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    BooleanFieldBuilderDef? booleanFieldBuilder,
    DynamicInputsNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    DynamicInputWidgetBuilderDef? dynamicInputWidgetBuilder,
    WidgetBuilderDef? formPageBuilder,
    GenerateIdDef? generateId,
    HeaderBuilderDef? headerBuilder,
    InputHeaderBuilderDef? inputHeaderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    ScaffoldBuilderDef? standardScaffoldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
    SubmitButtonBuilderDef? submitButtonBuilder,
    OnSubmitErrorDef? onSubmitError,

    /// This spacing will be added at the bottom of each [WoFormNodeMixin].
    double? verticalSpacing,

    /// Add the character '*' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}
