import 'package:formz/formz.dart';
import 'package:wo_form/wo_form.dart';

abstract class WoFormInput<T> extends FormzInput<T, WoFormInputError> {
  const WoFormInput({
    required this.id,
    required T value,
  }) : super.dirty(value);

  final String id;

  /// Whether the [WoFormInput] value is valid according to the
  /// overridden `validator`.
  ///
  /// Returns `true` if `validator` returns `null` for the
  /// current [WoFormInput] value and `false` otherwise.
  bool get hasError => getError() != null;

  /// A function that must return a validation error if the provided
  /// [value] is invalid and `null` otherwise.
  WoFormInputError? getError();

  String? getInvalidExplanation(FormLocalizations formL10n) {
    final error = getError();

    if (error == null) return null;
    return formL10n
        .formError(error.code); // LATER : formInputError & signupError
  }
}
