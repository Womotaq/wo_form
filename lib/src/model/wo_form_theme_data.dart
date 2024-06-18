import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_theme_data.freezed.dart';

@freezed
class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    BooleanFieldBuilderDef? booleanFieldBuilder,
    HeaderBuilderDef? headerBuilder,
    InputHeaderBuilderDef? inputHeaderBuilder,
    InputNodeWidgetBuilderDef? inputsNodeWidgetBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
    SubmitButtonBuilderDef? submitButtonBuilder,

    /// Add the character '*' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}
