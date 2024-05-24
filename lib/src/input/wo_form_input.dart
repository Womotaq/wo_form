import 'package:wo_form/wo_form.dart';

abstract class WoFormInputOLD<T> {
  const WoFormInputOLD({
    required this.id,
    required this.value,
  });

  final String id;
  final T value;

  /// Returns a validation error if the [WoFormInput] is invalid.
  /// Returns `null` if the [WoFormInput] is valid.
  WoFormInputError? get error => validator(value);

  /// Whether the [WoFormInput] value is valid according to the
  /// overridden `validator`.
  ///
  /// Returns `true` if `validator` returns `null` for the
  /// current [WoFormInput] value and `false` otherwise.
  bool get hasError => getError() != null;

  /// Whether the [WoFormInput] value is valid according to the
  /// method `validator`.
  ///
  /// Returns `true` if `validator` returns `null` for the
  /// current [WoFormInput] value and `false` otherwise.
  bool get isValid => validator(value) == null;

  /// A function that must return a validation error if the provided
  /// [value] is invalid and `null` otherwise.
  WoFormInputError? getError();

  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;
    return formL10n
        .formError(error.code); // LATER : formInputError & signupError
  }

  /// A function that must return a validation error if the provided
  /// [value] is invalid and `null` otherwise.
  WoFormInputError? validator(T value);

  @override
  String toString() =>
      '''WoFormInput<$T>(value: $value, isValid: $isValid, error: $error)''';
}
