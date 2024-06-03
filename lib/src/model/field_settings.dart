import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';

part 'field_settings.freezed.dart';
part 'field_settings.g.dart';

enum BooleanFieldOnOffType { checkbox, switchButton }

@freezed
class BooleanFieldSettings with _$BooleanFieldSettings {
  const factory BooleanFieldSettings({
    String? labelText,
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
          onOffType: onOffType ?? other.onOffType,
          onOffPosition: onOffPosition ?? other.onOffPosition,
        );
}

// TODO : rename ?
@freezed
class MapFieldSettings with _$MapFieldSettings {
  const factory MapFieldSettings({
    String? labelText,
  }) = _MapFieldSettings;

  const MapFieldSettings._();

  factory MapFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$MapFieldSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(MapFieldSettings object) =>
      object.toJson();

  MapFieldSettings merge(MapFieldSettings? other) => other == null
      ? this
      : MapFieldSettings(
          labelText: labelText ?? other.labelText,
        );
}

@freezed
class NumFieldSettings with _$NumFieldSettings {
  const factory NumFieldSettings({
    String? labelText,
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
        );
}

enum SelectFieldDisplayMode { selectChip, tiles }

@freezed
class SelectFieldSettings with _$SelectFieldSettings {
  const factory SelectFieldSettings({
    String? labelText,
    SelectFieldDisplayMode? displayMode,
  }) = _SelectFieldSettings;

  const SelectFieldSettings._();

  factory SelectFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectFieldSettingsFromJson(json);

  SelectFieldSettings merge(SelectFieldSettings? other) => other == null
      ? this
      : SelectFieldSettings(
          labelText: labelText ?? other.labelText,
          displayMode: displayMode ?? other.displayMode,
        );
}

@freezed
class SelectStringFieldSettings with _$SelectStringFieldSettings {
  const factory SelectStringFieldSettings({
    String? labelText,
    SelectFieldDisplayMode? displayMode,
  }) = _SelectStringFieldSettings;

  const SelectStringFieldSettings._();

  factory SelectStringFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectStringFieldSettingsFromJson(json);

  SelectStringFieldSettings merge(SelectStringFieldSettings? other) =>
      other == null
          ? this
          : SelectStringFieldSettings(
              labelText: labelText ?? other.labelText,
              displayMode: displayMode ?? other.displayMode,
            );
}

enum StringFieldAction { clear, obscure }

@freezed
class StringFieldSettings with _$StringFieldSettings {
  const factory StringFieldSettings({
    String? labelText,
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
    String? hintText,
    String? invalidRegexMessage,
  }) = _StringFieldSettings;

  factory StringFieldSettings.email({
    String? labelText,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    String? hintText,
    String? invalidRegexMessage,
  }) =>
      StringFieldSettings(
        labelText: labelText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        hintText: hintText,
        invalidRegexMessage: invalidRegexMessage,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        autofillHints: const [AutofillHints.email],
        maxLines: 1,
      );

  factory StringFieldSettings.password({
    String? labelText,
    bool? submitFormOnFieldSubmitted,
    TextInputAction? textInputAction,
    String? hintText,
    String? invalidRegexMessage,
  }) =>
      StringFieldSettings(
        labelText: labelText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        textInputAction: textInputAction,
        hintText: hintText,
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
          labelText: labelText ?? other.labelText,
          hintText: hintText ?? other.hintText,
          invalidRegexMessage: invalidRegexMessage ?? other.invalidRegexMessage,
        );
}
