import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

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
