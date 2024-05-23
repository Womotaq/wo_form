import 'package:intl/intl.dart' as intl;

import 'form_localizations.dart';

/// The translations for French (`fr`).
class FormLocalizationsFr extends FormLocalizations {
  FormLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get discardChanges => 'Abandonner les modifications';

  @override
  String get discardChangesQuestion => 'Abandonner les modifications ?';

  @override
  String get errorOccurred => 'Une erreur s\'est produite.';

  @override
  String formError(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Erreur inconnue.',
        'empty': 'Ce champ doit être renseigné.',
        'mailTaken': 'Cette adresse e-mail est déjà utilisée par un autre compte.',
        'notEmail': 'Ne semble pas être une adresse e-mail.',
        'notPassword': 'Trop faible. Un mot de passe doit contenir une minuscule, une majuscule, un chiffre et au moins 8 caractères.',
        'notUsername': 'Minimum 3 caractères, en alphanumérique\nSymboles acceptés : _ - .\nUn seul symbole à la suite, et uniquement au milieu',
        'invalidCredentials': 'Le mail et le mot de passe ne correspondent pas. Réessayez ou cliquez sur \"Mot de passe oublié ?\" pour le réinitialiser.',
        'tooLong': 'Trop long',
        'tooManyRequests': 'Trop de requêtes. Réessayez plus tard.',
        'usernameTaken': 'Ce nom est déjà pris.',
      },
    );
    return '$_temp0';
  }

  @override
  String get keepEditing => 'Continuer d\'éditer';

  @override
  String get save => 'Enregistrer';

  @override
  String get saved => 'Enregistré';
}
