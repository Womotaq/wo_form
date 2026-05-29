import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/json_annotation.dart';

part 'pick_date_ui_settings.freezed.dart';
part 'pick_date_ui_settings.g.dart';

@freezed
abstract class PickDateUiSettings with _$PickDateUiSettings {
  const factory PickDateUiSettings({
    /// Defaults to [defaultDateFormat].
    String? dateFormat,

    /// Defaults to [defaultPresentationMode].
    PickDatePresentationMode? presentationMode,

    /// By default, no wrapper is included.
    @notSerializable
    Widget Function(BuildContext context, Widget body)? bodyWrapper,
  }) = _PickDateUiSettings;

  /// Required for the override getter
  const PickDateUiSettings._();

  factory PickDateUiSettings.fromJson(Map<String, dynamic> json) =>
      _$PickDateUiSettingsFromJson(json);

  // --

  static const defaultDateFormat = 'yMMMMd';
  static const PickDatePresentationMode defaultPresentationMode =
      PickDatePresentationMode.page;
  static Widget defaultBodyWrapper(BuildContext _, Widget body) => body;

  PickDateUiSettings merge(PickDateUiSettings? other) => other == null
      ? this
      : PickDateUiSettings(
          dateFormat: dateFormat ?? other.dateFormat,
          presentationMode: presentationMode ?? other.presentationMode,
          bodyWrapper: bodyWrapper ?? other.bodyWrapper,
        );
}

enum PickDatePresentationMode {
  /// The default value
  page,

  dialog,
}
