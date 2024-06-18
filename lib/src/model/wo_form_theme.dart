import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_theme.freezed.dart';

@freezed
class WoFormThemeData with _$WoFormThemeData {
  const factory WoFormThemeData({
    SubmitButtonBuilderDef? submitButtonBuilder,
    BooleanFieldBuilderDef? booleanFieldBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,

    /// Add the character '*' after the labelText of [WoFormInput]s.
    /// Default to true.
    bool? showAsteriskIfRequired,
  }) = _WoFormThemeData;

  const WoFormThemeData._();
}
