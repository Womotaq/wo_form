import 'package:wo_form/wo_form.dart';

typedef TranslateInputError = String? Function(WoFormInputError? error);

class WoFormL10n {
  const WoFormL10n({
    required this.submit,
    required this.next,
    required this.translateError,
    required this.errors,
  });

  final String submit;
  final String next;
  final TranslateInputError translateError;
  final String? Function(int) errors;
}
