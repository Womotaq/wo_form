import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_theme.freezed.dart';
part 'field_theme.g.dart';

enum BooleanFieldOnOffType { checkbox, switchButton }

@freezed
class BooleanFieldTheme with _$BooleanFieldTheme {
  factory BooleanFieldTheme({
    String? labelText,
    BooleanFieldOnOffType? onOffType,
    ListTileControlAffinity? onOffPosition,
  }) = _BooleanFieldTheme;

  const BooleanFieldTheme._();

  factory BooleanFieldTheme.fromJson(Map<String, dynamic> json) =>
      _$BooleanFieldThemeFromJson(json);

  BooleanFieldTheme merge(BooleanFieldTheme? other) => other == null
      ? this
      : BooleanFieldTheme(
          onOffType: onOffType ?? other.onOffType,
          onOffPosition: onOffPosition ?? other.onOffPosition,
          labelText: labelText ?? other.labelText,
        );
}

enum SelectFieldDisplayMode { selectChip, radios }

@freezed
class SelectStringFieldTheme with _$SelectStringFieldTheme {
  factory SelectStringFieldTheme({
    String? labelText,
    List<String>? values,
    SelectFieldDisplayMode? displayMode,
  }) = _SelectStringFieldTheme;

  const SelectStringFieldTheme._();

  factory SelectStringFieldTheme.fromJson(Map<String, dynamic> json) =>
      _$SelectStringFieldThemeFromJson(json);

  SelectStringFieldTheme merge(SelectStringFieldTheme? other) => other == null
      ? this
      : SelectStringFieldTheme(
          values: values ?? other.values,
          labelText: labelText ?? other.labelText,
          displayMode: displayMode ?? other.displayMode,
        );
}

enum StringFieldAction { clear, obscure }

@freezed
class StringFieldTheme with _$StringFieldTheme {
  factory StringFieldTheme({
    String? labelText,
    StringFieldAction? action,
    bool? submitFormOnFieldSubmitted,
    TextInputType? keyboardType,
    bool? obscureText,
    bool? autocorrect,
    List<String>? autofillHints,
    bool? autofocus,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    TextStyle? style,
    int? maxLines,
    String? hintText,
  }) = _StringFieldTheme;

  factory StringFieldTheme.email({
    String? labelText,
    bool submitFormOnFieldSubmitted = false,
    bool autofocus = false,
    TextInputAction? textInputAction,
    String? hintText,
  }) =>
      StringFieldTheme(
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

  factory StringFieldTheme.password({
    String? labelText,
    bool submitFormOnFieldSubmitted = false,
    TextInputAction? textInputAction,
    String? hintText,
  }) =>
      StringFieldTheme(
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

  StringFieldTheme merge(StringFieldTheme? other) => other == null
      ? this
      : StringFieldTheme(
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
          style: style ?? other.style,
          maxLines: maxLines ?? other.maxLines,
          labelText: labelText ?? other.labelText,
          hintText: hintText ?? other.hintText,
        );
}
