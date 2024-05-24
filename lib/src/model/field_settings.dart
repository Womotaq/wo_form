import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/src/model/json_converter/unknown_type.dart';

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

  BooleanFieldSettings merge(BooleanFieldSettings? other) => other == null
      ? this
      : BooleanFieldSettings(
          onOffType: onOffType ?? other.onOffType,
          onOffPosition: onOffPosition ?? other.onOffPosition,
          labelText: labelText ?? other.labelText,
        );
}

enum SelectFieldDisplayMode { selectChip, radios }

@freezed
class SelectFieldSettings<T> with _$SelectFieldSettings<T> {
  const factory SelectFieldSettings({
    String? labelText,
    @UnknownTypeListConverter<T>() List<T>? values,
    SelectFieldDisplayMode? displayMode,
  }) = _SelectFieldSettings<T>;

  const SelectFieldSettings._();

  factory SelectFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectFieldSettingsFromJson(json);

  SelectFieldSettings<T> merge(SelectFieldSettings<T>? other) => other == null
      ? this
      : SelectFieldSettings(
          values: values ?? other.values,
          labelText: labelText ?? other.labelText,
          displayMode: displayMode ?? other.displayMode,
        );
}

@freezed
class SelectStringFieldSettings with _$SelectStringFieldSettings {
  const factory SelectStringFieldSettings({
    String? labelText,
    List<String>? values,
    SelectFieldDisplayMode? displayMode,
  }) = _SelectStringFieldSettings;

  const SelectStringFieldSettings._();

  factory SelectStringFieldSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectStringFieldSettingsFromJson(json);

  SelectStringFieldSettings merge(SelectStringFieldSettings? other) =>
      other == null
          ? this
          : SelectStringFieldSettings(
              values: values ?? other.values,
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
  }) = _StringFieldSettings;

  factory StringFieldSettings.email({
    String? labelText,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    String? hintText,
  }) =>
      StringFieldSettings(
        labelText: labelText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        hintText: hintText,
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
  }) =>
      StringFieldSettings(
        labelText: labelText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        textInputAction: textInputAction,
        hintText: hintText,
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
        );
}
