import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

@immutable
class WoFormThemeData extends ThemeExtension<WoFormThemeData> {
  const WoFormThemeData({
    this.submitButtonBuilder,
    this.booleanFieldBuilder,
    this.numFieldBuilder,
    this.selectFieldBuilder,
    this.stringFieldBuilder,
  });

  final SubmitButtonBuilderDef? submitButtonBuilder;
  final BooleanFieldBuilderDef? booleanFieldBuilder;
  final NumFieldBuilderDef? numFieldBuilder;
  final SelectFieldBuilderDef<dynamic>? selectFieldBuilder;
  final StringFieldBuilderDef? stringFieldBuilder;

  @override
  WoFormThemeData copyWith({
    SubmitButtonBuilderDef? submitButtonBuilder,
    BooleanFieldBuilderDef? booleanFieldBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
  }) {
    return WoFormThemeData(
      submitButtonBuilder: submitButtonBuilder ?? this.submitButtonBuilder,
      booleanFieldBuilder: booleanFieldBuilder ?? this.booleanFieldBuilder,
      numFieldBuilder: numFieldBuilder ?? this.numFieldBuilder,
      selectFieldBuilder: selectFieldBuilder ?? this.selectFieldBuilder,
      stringFieldBuilder: stringFieldBuilder ?? this.stringFieldBuilder,
    );
  }

  @override
  WoFormThemeData lerp(WoFormThemeData? other, double t) {
    if (other is! WoFormThemeData) {
      return this;
    }
    return WoFormThemeData(
      submitButtonBuilder:
          t < 0.5 ? submitButtonBuilder : other.submitButtonBuilder,
      booleanFieldBuilder:
          t < 0.5 ? booleanFieldBuilder : other.booleanFieldBuilder,
      numFieldBuilder: t < 0.5 ? numFieldBuilder : other.numFieldBuilder,
      selectFieldBuilder:
          t < 0.5 ? selectFieldBuilder : other.selectFieldBuilder,
      stringFieldBuilder:
          t < 0.5 ? stringFieldBuilder : other.stringFieldBuilder,
    );
  }

  @override
  int get hashCode => Object.hash(
        submitButtonBuilder,
        booleanFieldBuilder,
        numFieldBuilder,
        selectFieldBuilder,
        stringFieldBuilder,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is WoFormThemeData &&
        other.submitButtonBuilder == submitButtonBuilder &&
        other.booleanFieldBuilder == booleanFieldBuilder &&
        other.numFieldBuilder == numFieldBuilder &&
        other.selectFieldBuilder == selectFieldBuilder &&
        other.stringFieldBuilder == stringFieldBuilder;
  }
}

class WoFormTheme extends InheritedTheme {
  const WoFormTheme({
    required this.data,
    required super.child,
    super.key,
  });

  /// The configuration of this theme.
  final WoFormThemeData data;

  /// The closest instance of this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// final theme = WoFormTheme.of(context);
  /// ```
  static WoFormThemeData? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<WoFormTheme>()?.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return WoFormTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(WoFormTheme oldWidget) => data != oldWidget.data;
}
