import 'package:wo_form/wo_form.dart';

String Function(WoFormInputError) localizeInputError(
  FormLocalizations formL10n,
) {
  return (WoFormInputError error) {
    final errorType = error.runtimeType.toString();
    return formL10n.formError(errorType.substring(2, errorType.length - 4));
  };
}
