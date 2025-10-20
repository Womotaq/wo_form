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

  // ignore: constant_identifier_names
  static const Duration STEP_TRANSITION_DURATION = Durations.short4;
  // ignore: constant_identifier_names
  static const Duration ANIMATION_DURATION = Durations.medium1;

  /// Default debounce duration for text fields that trigger api calls.
  // ignore: constant_identifier_names
  static const Duration DEBOUNCE_DURATION = Durations.short4;

  /// The closest instance of this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// final theme = WoFormTheme.of(context);
  /// ```
  static WoFormThemeData? of(BuildContext context, {bool listen = true}) =>
      listen
      ? context.dependOnInheritedWidgetOfExactType<WoFormTheme>()?.data
      : context.getInheritedWidgetOfExactType<WoFormTheme>()?.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      WoFormTheme(data: data, child: child);

  @override
  bool updateShouldNotify(WoFormTheme oldWidget) => data != oldWidget.data;
}
