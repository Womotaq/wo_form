import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class WoFormTheme extends ThemeExtension<WoFormTheme> {
  const WoFormTheme({
    this.localizeInputError,
    this.booleanFieldBuilder,
    this.numFieldBuilder,
    this.selectFieldBuilder,
    this.stringFieldBuilder,
  });

  final String Function(WoFormInputError error)? localizeInputError;
  final BooleanFieldBuilderDef? booleanFieldBuilder;
  final NumFieldBuilderDef? numFieldBuilder;
  final SelectFieldBuilderDef<dynamic>? selectFieldBuilder;
  final StringFieldBuilderDef? stringFieldBuilder;

  @override
  WoFormTheme copyWith({
    String Function(WoFormInputError error)? localizeInputError,
    BooleanFieldBuilderDef? booleanFieldBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
  }) {
    return WoFormTheme(
      localizeInputError: localizeInputError ?? this.localizeInputError,
      booleanFieldBuilder: booleanFieldBuilder ?? this.booleanFieldBuilder,
      numFieldBuilder: numFieldBuilder ?? this.numFieldBuilder,
      selectFieldBuilder: selectFieldBuilder ?? this.selectFieldBuilder,
      stringFieldBuilder: stringFieldBuilder ?? this.stringFieldBuilder,
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
      numFieldBuilder: t < 0.5 ? numFieldBuilder : other.numFieldBuilder,
      selectFieldBuilder:
          t < 0.5 ? selectFieldBuilder : other.selectFieldBuilder,
      stringFieldBuilder:
          t < 0.5 ? stringFieldBuilder : other.stringFieldBuilder,
    );
  }
}
