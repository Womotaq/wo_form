import 'package:intl/intl.dart' as intl;

import 'form_localizations.dart';

/// The translations for English (`en`).
class FormLocalizationsEn extends FormLocalizations {
  FormLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get discardChanges => 'Discard changes';

  @override
  String get discardChangesQuestion => 'Discard unsaved changes ?';

  @override
  String get errorOccurred => 'An error has occured.';

  @override
  String formError(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Unknown error.',
        'empty': 'This field is required.',
        'mailTaken': 'The email address is already in use by another account.',
        'notEmail': 'Doesn\'t appear to be an email address.',
        'notPassword': 'Too weak. A password must contain a lowercase letter, an uppercase letter, a number and at least 8 characters.',
        'notUsername': 'Minimum 3 characters, only alphanumeric\nSymbols accepted : _ - .\nOnly one symbol in a row, and only in the middle',
        'invalidCredentials': 'Email and password do not match. Try again or click \"Forgot password ?\" to reset it.',
        'tooLong': 'Too long',
        'tooManyRequests': 'Too many requests. Try again later.',
        'usernameTaken': 'This username is already taken',
      },
    );
    return '$_temp0';
  }

  @override
  String get keepEditing => 'Keep editing';

  @override
  String get save => 'Save';

  @override
  String get saved => 'Saved';
}
