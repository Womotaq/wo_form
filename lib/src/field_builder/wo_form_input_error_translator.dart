import 'package:wo_form/wo_form.dart';

typedef TranslateInputError = String? Function(WoFormInputError error);

class WoFormInputErrorTranslator {
  const WoFormInputErrorTranslator({required this.translateError});

  final TranslateInputError translateError;

  String? getTranslatedError(WoFormInputError? error) {
    if (error == null) return null;

    return translateError.call(error);
  }
}
