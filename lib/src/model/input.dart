import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/unknown_type.dart';
import 'package:wo_form/wo_form.dart';

part 'input.freezed.dart';
part 'input.g.dart';

@freezed
sealed class WoFormInput<T> with _$WoFormInput<T> {
  const factory WoFormInput.boolean({
    required String id,
    @Default(false) bool value,
    @Default(false) bool isRequired,
    @Default(BooleanFieldSettings()) BooleanFieldSettings fieldSettings,
  }) = BooleanInput;

  const factory WoFormInput.select({
    required String id,
    @UnknownTypeConverter<T>() T? value,
    @Default(false) bool isRequired,
    SelectFieldSettings<T>? fieldSettings,
  }) = SelectInput;

  const factory WoFormInput.string({
    required String id,
    @Default('') String value,
    @Default(false) bool isRequired,
    RegexPattern? regexPattern,
    @Default(StringFieldSettings()) StringFieldSettings fieldSettings,
  }) = StringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Map<String, dynamic> json) =>
      _$WoFormInputFromJson(json);

  // --

  /// Whether the [WoFormInput] value is valid according to the
  /// method `getError`.
  ///
  /// Returns `true` if `getError` returns `null` for the
  /// current [WoFormInput] value and `false` otherwise.
  bool get isValid => getError() == null;

  WoFormInputError? getError() {
    switch (this) {
      case BooleanInput(value: final value):
        return isRequired && value == false
            ? WoFormInputError.empty(inputId: id)
            : null;

      case SelectInput():
        return isRequired && value == null
            ? WoFormInputError.empty(inputId: id)
            : null;

      case StringInput(value: final value, regexPattern: final regexPattern):
        if (value.isEmpty) {
          return isRequired ? WoFormInputError.empty(inputId: id) : null;
        } else if (regexPattern != null &&
            !RegExp(regexPattern.value).hasMatch(value)) {
          return WoFormInputError.invalid(inputId: id);
        } else {
          return null;
        }
    }
  }

  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    switch (this) {
      case BooleanInput():
      case SelectInput():
        break;

      case StringInput(regexPattern: final regexPattern):
        if (error.code == WoFormInputError.invalidCode &&
            regexPattern != null) {
          return formL10n.regexPatternUnmatched(regexPattern.name);
        }
    }

    return formL10n.formError(error.code);
  }
}

enum RegexPattern {
  /// Email regex
  ///
  /// References: [RFC2822 Email Validation](https://regexr.com/2rhq7) by Tripleaxis
  email(
    r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$",
  ),

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  ///
  /// References: regex_pattern package
  password(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)\S{8,}$'),

  /// Username regex (v2)
  ///
  /// May start with @
  /// Minimum 3 characters
  /// Allowed to use aplhanumeric, underscore ("_"), dash ("-"), and period
  /// (".") characters.
  /// Has only one symbols in a row.
  /// Symbols can only be used in the middle of name.
  ///
  /// References: regex_pattern package
  username(r'^(?!.*[_\.\-]{2})@?[a-zA-Z0-9][a-zA-Z0-9_\.\-]+[a-zA-Z0-9]$');

  const RegexPattern(this.value);

  final String value;
}
