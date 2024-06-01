import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'input.freezed.dart';
part 'input.g.dart';

mixin WoFormInputMixin {
  String get id;
  // Object? get value;
  // bool get isRequired;
  // Object? get fieldSettings;

  /// Whether the input value is valid according to the method `getError`.
  ///
  /// Returns `true` if `getError` returns `null` for the
  /// current input value and `false` otherwise.
  bool get isValid => getError() == null;

  WoFormInputError? getError();

  String? getInvalidExplanation(FormLocalizations formL10n);

  Map<String, dynamic> toJson();
}

@freezed
sealed class WoFormInput with _$WoFormInput, WoFormInputMixin {
  const factory WoFormInput.boolean({
    required String id,
    @Default(false) bool value,
    @Default(false) bool isRequired,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: BooleanFieldSettings.staticToJson)
    @Default(BooleanFieldSettings())
    BooleanFieldSettings fieldSettings,
  }) = BooleanInput;

  const factory WoFormInput.string({
    required String id,
    @Default('') String value,
    @Default(false) bool isRequired,
    RegexPattern? regexPattern,
    // ignore: invalid_annotation_target
    @JsonKey(toJson: StringFieldSettings.staticToJson)
    @Default(StringFieldSettings())
    StringFieldSettings fieldSettings,
  }) = StringInput;

  const factory WoFormInput.selectString({
    required String id,
    String? value,
    @Default(false) bool isRequired,
    @Default(SelectFieldSettings<String>())
    SelectFieldSettings<String> fieldSettings,
  }) = SelectStringInput;

  const WoFormInput._();

  factory WoFormInput.fromJson(Map<String, dynamic> json) =>
      _$WoFormInputFromJson(json);

  // --

  @override
  WoFormInputError? getError() {
    switch (this) {
      case BooleanInput(value: final value):
        return isRequired && value == false
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

      case SelectStringInput(value: final value):
        return isRequired && value == null
            ? WoFormInputError.empty(inputId: id)
            : null;
    }
  }

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    switch (this) {
      case BooleanInput():
      case SelectStringInput():
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

@freezed
@JsonSerializable(genericArgumentFactories: true)
class SelectInput<T> with _$SelectInput<T>, WoFormInputMixin {
  const factory SelectInput({
    required String id,
    T? value,
    @Default(false) bool isRequired,
    SelectFieldSettings<T>? fieldSettings,
    // ignore: invalid_annotation_target
    @JsonKey(includeToJson: false, includeFromJson: false)
    Object? Function(T)? toJsonT,
  }) = _SelectInput<T>;

  const SelectInput._();

  factory SelectInput.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$SelectInputFromJson(json, fromJsonT);
  }

  @override
  Map<String, dynamic> toJson() {
    if (toJsonT == null) {
      throw UnimplementedError('No toJsonT provided for SelectInput<$T>');
    }

    return _$SelectInputToJson(this, toJsonT!);
  }

  // --

  @override
  WoFormInputError? getError() =>
      isRequired && value == null ? WoFormInputError.empty(inputId: id) : null;

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

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
