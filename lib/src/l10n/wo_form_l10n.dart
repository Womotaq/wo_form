import 'package:wo_form/wo_form.dart';

typedef TranslateInputError = String? Function(WoFormInputError? error);

class WoFormL10n {
  const WoFormL10n({
    required this.submitText,
    required this.nextText,
    required this.translateError,
  });

  final String submitText;
  final String nextText;
  final TranslateInputError translateError;
}
