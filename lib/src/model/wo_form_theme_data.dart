import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_theme_data.freezed.dart';

@freezed
class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    BooleanFieldBuilderDef? booleanFieldBuilder,
    DynamicInputNodeWidgetBuilderDef? dynamicInputsNodeWidgetBuilder,
    Widget Function()? formPageBuilder,
    HeaderBuilderDef? headerBuilder,
    InputHeaderBuilderDef? inputHeaderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeExpanderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
    SubmitButtonBuilderDef? submitButtonBuilder,
    OnSubmitErrorDef? onSubmitError,

    /// This spacing will be added at the bottom of each [WoFormElementMixin].
    double? verticalSpacing,

    /// Add the character '*' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}
