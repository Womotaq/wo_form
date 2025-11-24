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

  /// Checks whether this regex pattern has a match in the [input].
  ///
  /// ```dart
  /// var string = '@monica';
  /// var regex = RegexPattern.username;
  /// var match = regex.hasMatch(string); // true
  ///
  /// regex = RegexPattern.email;
  /// match = regex.hasMatch(string); // false
  /// ```
  bool hasMatch(String input) => RegExp(value).hasMatch(input);
}
