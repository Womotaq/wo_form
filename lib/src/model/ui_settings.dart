import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';

part 'ui_settings.freezed.dart';
part 'ui_settings.g.dart';

enum BooleanFieldOnOffType { checkbox, switchButton }

@freezed
class BooleanFieldSettings with _$BooleanFieldSettings {
  const factory BooleanFieldSettings({
    String? labelText,
    String? helperText,
    BooleanFieldOnOffType? onOffType,
    ListTileControlAffinity? onOffPosition,
  }) = _BooleanFieldSettings;

  const BooleanFieldSettings._();

  factory BooleanFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$BooleanFieldSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(BooleanFieldSettings object) =>
      object.toJson();

  BooleanFieldSettings merge(BooleanFieldSettings? other) => other == null
      ? this
      : BooleanFieldSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          onOffType: onOffType ?? other.onOffType,
          onOffPosition: onOffPosition ?? other.onOffPosition,
        );
}

enum NodeDisplayMode { card, tile }

@freezed
class NodeWidgetSettings with _$NodeWidgetSettings {
  const factory NodeWidgetSettings({
    String? labelText,
    String? helperText,
    NodeDisplayMode? displayMode,
  }) = _NodeWidgetSettings;

  const NodeWidgetSettings._();

  factory NodeWidgetSettings.fromJson(Map<String, dynamic> json) =>
      _$NodeWidgetSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(NodeWidgetSettings object) =>
      object.toJson();

  NodeWidgetSettings merge(NodeWidgetSettings? other) => other == null
      ? this
      : NodeWidgetSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          displayMode: displayMode ?? other.displayMode,
        );
}

@freezed
class NumFieldSettings with _$NumFieldSettings {
  const factory NumFieldSettings({
    String? labelText,
    String? helperText,
  }) = _NumFieldSettings;

  const NumFieldSettings._();

  factory NumFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$NumFieldSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(NumFieldSettings object) =>
      object.toJson();

  NumFieldSettings merge(NumFieldSettings? other) => other == null
      ? this
      : NumFieldSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
        );
}

enum SelectFieldDisplayMode { chip, tile }

@freezed
class SelectFieldSettings<T> with _$SelectFieldSettings<T> {
  const factory SelectFieldSettings({
    String? labelText,
    String? helperText,
    SelectFieldDisplayMode? displayMode,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget Function(T?)? valueBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget? Function(T)? helpValueBuilder,
  }) = _SelectFieldSettings<T>;

  const SelectFieldSettings._();

  factory SelectFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectFieldSettingsFromJson(json);

  SelectFieldSettings<T> merge(SelectFieldSettings<T>? other) => other == null
      ? this
      : SelectFieldSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          displayMode: displayMode ?? other.displayMode,
          valueBuilder: valueBuilder ?? other.valueBuilder,
          helpValueBuilder: helpValueBuilder ?? other.helpValueBuilder,
        );
}

enum StringFieldAction { clear, obscure }

@freezed
class StringFieldSettings with _$StringFieldSettings {
  const factory StringFieldSettings({
    String? labelText,
    String? hintText,
    String? helperText,
    StringFieldAction? action,
    bool? submitFormOnFieldSubmitted,
    @TextInputTypeConverter() TextInputType? keyboardType,
    bool? obscureText,
    bool? autocorrect,
    List<String>? autofillHints,
    bool? autofocus,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    int? maxLines,
    String? invalidRegexMessage,
  }) = _StringFieldSettings;

  factory StringFieldSettings.email({
    String? labelText,
    String? hintText,
    String? helperText,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
  }) =>
      StringFieldSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        autofillHints: const [AutofillHints.email],
        maxLines: 1,
      );

  factory StringFieldSettings.password({
    String? labelText,
    String? hintText,
    String? helperText,
    bool? submitFormOnFieldSubmitted,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
  }) =>
      StringFieldSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        action: StringFieldAction.obscure,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        autocorrect: false,
        autofillHints: const [
          AutofillHints.password,
          AutofillHints.newPassword,
        ],
        maxLines: 1,
      );

  const StringFieldSettings._();

  factory StringFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$StringFieldSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(StringFieldSettings object) =>
      object.toJson();

  StringFieldSettings merge(StringFieldSettings? other) => other == null
      ? this
      : StringFieldSettings(
          labelText: labelText ?? other.labelText,
          hintText: hintText ?? other.hintText,
          helperText: helperText ?? other.helperText,
          action: action ?? other.action,
          submitFormOnFieldSubmitted:
              submitFormOnFieldSubmitted ?? other.submitFormOnFieldSubmitted,
          keyboardType: keyboardType ?? other.keyboardType,
          obscureText: obscureText ?? other.obscureText,
          autocorrect: autocorrect ?? other.autocorrect,
          autofillHints: autofillHints ?? other.autofillHints,
          autofocus: autofocus ?? other.autofocus,
          textInputAction: textInputAction ?? other.textInputAction,
          textCapitalization: textCapitalization ?? other.textCapitalization,
          maxLines: maxLines ?? other.maxLines,
          invalidRegexMessage: invalidRegexMessage ?? other.invalidRegexMessage,
        );
}

@freezed
class WoFormUiSettings with _$WoFormUiSettings {
  const factory WoFormUiSettings({
    String? title,
  }) = _WoFormUiSettings;

  const WoFormUiSettings._();

  factory WoFormUiSettings.fromJson(Map<String, dynamic> json) =>
      _$WoFormUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(WoFormUiSettings object) =>
      object.toJson();

  WoFormUiSettings merge(WoFormUiSettings? other) => other == null
      ? this
      : WoFormUiSettings(
          title: title ?? other.title,
        );
}
