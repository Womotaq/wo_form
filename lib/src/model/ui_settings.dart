import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

part 'ui_settings.freezed.dart';
part 'ui_settings.g.dart';

enum BooleanFieldControlType { checkbox, switchButton }

typedef BooleanFieldBuilderDef = Widget Function(
  WoFieldData<bool, BooleanInputUiSettings> data,
);

@freezed
class BooleanInputUiSettings with _$BooleanInputUiSettings {
  const factory BooleanInputUiSettings({
    String? labelText,
    String? helperText,
    BooleanFieldControlType? controlType,
    ListTileControlAffinity? controlAffinity,
    @JsonKey(includeToJson: false, includeFromJson: false)
    BooleanFieldBuilderDef? widgetBuilder,
  }) = _BooleanInputUiSettings;

  const BooleanInputUiSettings._();

  factory BooleanInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$BooleanInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(BooleanInputUiSettings object) =>
      object.toJson();

  BooleanInputUiSettings merge(BooleanInputUiSettings? other) => other == null
      ? this
      : BooleanInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          controlType: controlType ?? other.controlType,
          controlAffinity: controlAffinity ?? other.controlAffinity,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

enum NodeDisplayMode { card, tile }

@freezed
class InputsNodeUiSettings with _$InputsNodeUiSettings {
  const factory InputsNodeUiSettings({
    String? labelText,
    String? helperText,
    NodeDisplayMode? displayMode,
  }) = _InputsNodeUiSettings;

  const InputsNodeUiSettings._();

  factory InputsNodeUiSettings.fromJson(Map<String, dynamic> json) =>
      _$InputsNodeUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(InputsNodeUiSettings object) =>
      object.toJson();

  InputsNodeUiSettings merge(InputsNodeUiSettings? other) => other == null
      ? this
      : InputsNodeUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          displayMode: displayMode ?? other.displayMode,
        );
}

typedef NumFieldBuilderDef = Widget Function(
  WoFieldData<num, NumInputUiSettings> data,
);

@freezed
class NumInputUiSettings with _$NumInputUiSettings {
  const factory NumInputUiSettings({
    String? labelText,
    String? helperText,
    @JsonKey(includeToJson: false, includeFromJson: false)
    NumFieldBuilderDef? widgetBuilder,
  }) = _NumInputUiSettings;

  const NumInputUiSettings._();

  factory NumInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$NumInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(NumInputUiSettings object) =>
      object.toJson();

  NumInputUiSettings merge(NumInputUiSettings? other) => other == null
      ? this
      : NumInputUiSettings(
          labelText: labelText ?? other.labelText,
          helperText: helperText ?? other.helperText,
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

enum SelectFieldDisplayMode { tile, chip }

typedef SelectFieldBuilderDef<T> = Widget Function(
  WoFieldData<List<T>, SelectInputUiSettings<T>> data,
);

@freezed
class SelectInputUiSettings<T> with _$SelectInputUiSettings<T> {
  const factory SelectInputUiSettings({
    String? labelText,
    String? helperText,
    SelectFieldDisplayMode? displayMode,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget Function(T?)? valueBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Widget? Function(T)? helpValueBuilder,
    @JsonKey(includeFromJson: false, includeToJson: false)
    double Function(String query, T value)? searcher,
    @JsonKey(includeToJson: false, includeFromJson: false)
    SelectFieldBuilderDef<T>? widgetBuilder,
  }) = _SelectInputUiSettings<T>;

  const SelectInputUiSettings._();

  factory SelectInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$SelectInputUiSettingsFromJson(json);

  SelectInputUiSettings<T> merge(SelectInputUiSettings<T>? other) =>
      other == null
          ? this
          : SelectInputUiSettings(
              labelText: labelText ?? other.labelText,
              helperText: helperText ?? other.helperText,
              displayMode: displayMode ?? other.displayMode,
              valueBuilder: valueBuilder ?? other.valueBuilder,
              helpValueBuilder: helpValueBuilder ?? other.helpValueBuilder,
              widgetBuilder: widgetBuilder ?? other.widgetBuilder,
            );
}

enum StringFieldAction { clear, obscure }

typedef StringFieldBuilderDef = Widget Function(
  WoFieldData<String, StringInputUiSettings> data,
);

@freezed
class StringInputUiSettings with _$StringInputUiSettings {
  const factory StringInputUiSettings({
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
    @JsonKey(includeToJson: false, includeFromJson: false)
    StringFieldBuilderDef? widgetBuilder,
  }) = _StringInputUiSettings;

  factory StringInputUiSettings.email({
    String? labelText,
    String? hintText,
    String? helperText,
    bool? submitFormOnFieldSubmitted,
    bool? autofocus,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    StringFieldBuilderDef? widgetBuilder,
  }) =>
      StringInputUiSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        autofocus: autofocus,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        widgetBuilder: widgetBuilder,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        autofillHints: const [AutofillHints.email],
        maxLines: 1,
      );

  factory StringInputUiSettings.password({
    String? labelText,
    String? hintText,
    String? helperText,
    bool? submitFormOnFieldSubmitted,
    TextInputAction? textInputAction,
    String? invalidRegexMessage,
    StringFieldBuilderDef? widgetBuilder,
  }) =>
      StringInputUiSettings(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        submitFormOnFieldSubmitted: submitFormOnFieldSubmitted,
        textInputAction: textInputAction,
        invalidRegexMessage: invalidRegexMessage,
        widgetBuilder: widgetBuilder,
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

  const StringInputUiSettings._();

  factory StringInputUiSettings.fromJson(Map<String, dynamic> json) =>
      _$StringInputUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(StringInputUiSettings object) =>
      object.toJson();

  StringInputUiSettings merge(StringInputUiSettings? other) => other == null
      ? this
      : StringInputUiSettings(
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
          widgetBuilder: widgetBuilder ?? other.widgetBuilder,
        );
}

@freezed
sealed class WoFormDisplayMode with _$WoFormDisplayMode {
  const factory WoFormDisplayMode.card() = WoFormDisplayedInCard;
  const factory WoFormDisplayMode.page() = WoFormDisplayedInPage;
  const factory WoFormDisplayMode.pages({
    String? nextText,
  }) = WoFormDisplayedInPages;

  factory WoFormDisplayMode.fromJson(Map<String, dynamic> json) =>
      _$WoFormDisplayModeFromJson(json);

  static Map<String, dynamic>? staticToJson(WoFormDisplayMode? object) =>
      object?.toJson();
}

enum WoFormSubmitMode { submit, submitIfValid, save }

@freezed
class WoFormUiSettings with _$WoFormUiSettings {
  const factory WoFormUiSettings({
    String? titleText,
    String? submitText,
    String? submittedText,
    @JsonKey(toJson: WoFormDisplayMode.staticToJson)
    WoFormDisplayMode? displayMode,
    WoFormSubmitMode? submitMode,
  }) = _WoFormUiSettings;

  const WoFormUiSettings._();

  factory WoFormUiSettings.fromJson(Map<String, dynamic> json) =>
      _$WoFormUiSettingsFromJson(json);

  static Map<String, dynamic> staticToJson(WoFormUiSettings object) =>
      object.toJson();

  WoFormUiSettings merge(WoFormUiSettings? other) => other == null
      ? this
      : WoFormUiSettings(
          titleText: titleText ?? other.titleText,
          submitText: submitText ?? other.submitText,
          submittedText: submittedText ?? other.submittedText,
          displayMode: displayMode ?? other.displayMode,
          submitMode: submitMode ?? other.submitMode,
        );
}
