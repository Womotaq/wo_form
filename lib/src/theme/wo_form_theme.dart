import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class WoFormTheme extends ThemeExtension<WoFormTheme> {
  const WoFormTheme({
    this.localizeInputError,
    this.booleanFieldBuilder,
  });

  final String Function(WoFormInputError error)? localizeInputError;
  final Widget Function(WoFieldData<bool, BooleanInputUiSettings> field)?
      booleanFieldBuilder;

  @override
  WoFormTheme copyWith({
    String Function(WoFormInputError error)? localizeInputError,
    Widget Function(WoFieldData<bool, BooleanInputUiSettings> field)?
        booleanFieldBuilder,
  }) {
    return WoFormTheme(
      localizeInputError: localizeInputError ?? this.localizeInputError,
      booleanFieldBuilder: booleanFieldBuilder ?? this.booleanFieldBuilder,
    );
  }

  @override
  WoFormTheme lerp(WoFormTheme? other, double t) {
    if (other is! WoFormTheme) {
      return this;
    }
    return WoFormTheme(
      localizeInputError:
          t < 0.5 ? localizeInputError : other.localizeInputError,
      booleanFieldBuilder:
          t < 0.5 ? booleanFieldBuilder : other.booleanFieldBuilder,
    );
  }
}
