import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

@immutable
class WoFormThemeData extends ThemeExtension<WoFormThemeData> {
  const WoFormThemeData({
    this.booleanFieldBuilder,
    this.numFieldBuilder,
    this.selectFieldBuilder,
    this.stringFieldBuilder,
  });

  final BooleanFieldBuilderDef? booleanFieldBuilder;
  final NumFieldBuilderDef? numFieldBuilder;
  final SelectFieldBuilderDef<dynamic>? selectFieldBuilder;
  final StringFieldBuilderDef? stringFieldBuilder;

  @override
  WoFormThemeData copyWith({
    String Function(WoFormInputError error)? localizeInputError,
    BooleanFieldBuilderDef? booleanFieldBuilder,
    NumFieldBuilderDef? numFieldBuilder,
    SelectFieldBuilderDef<dynamic>? selectFieldBuilder,
    StringFieldBuilderDef? stringFieldBuilder,
  }) {
    return WoFormThemeData(
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
