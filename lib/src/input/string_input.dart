import 'package:wo_form/wo_form.dart';
import 'package:recase/recase.dart';

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

class StringInput extends WoFormInput<String> {
  const StringInput({
    required super.id,
    String? value,
    this.isRequired = false,
    this.regexPattern,
    this.fieldTheme,
  }) : super(value: value ?? '');

  const StringInput.email({
    super.id = 'email',
    String? value,
    this.isRequired = true,
    this.fieldTheme,
  })  : regexPattern = RegexPattern.email,
        super(value: value ?? '');

  const StringInput.password({
    super.id = 'password',
    String? value,
    this.isRequired = true,
    this.fieldTheme,
  })  : regexPattern = RegexPattern.password,
        super(value: value ?? '');

  const StringInput.username({
    super.id = 'username',
    String? value,
    this.isRequired = true,
    this.fieldTheme,
  })  : regexPattern = RegexPattern.username,
        super(value: value ?? '');

  final bool isRequired;
  final RegexPattern? regexPattern;
  final StringFieldTheme? fieldTheme;

  StringInput copyWith({String? value}) => StringInput(
        id: id,
        value: value ?? this.value,
        isRequired: isRequired,
        regexPattern: regexPattern,
        fieldTheme: fieldTheme,
      );

  @override
  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;

    if (error.code == WoFormInputError.invalidCode && regexPattern != null) {
      return formL10n.formError('not${regexPattern!.name.sentenceCase}');
    }

    return formL10n.formError(error.code);
  }

  @override
  WoFormInputError? getError() => validator(value);

  @override
  WoFormInputError? validator(String value) {
    if (value.isEmpty) {
      return isRequired ? WoFormInputError.empty(inputId: id) : null;
    }

    if (regexPattern != null && !RegExp(regexPattern!.value).hasMatch(value)) {
      return WoFormInputError.invalid(inputId: id);
    }

    return null;
  }
}
