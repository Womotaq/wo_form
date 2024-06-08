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
        'EmptyInputError': 'Ce champ doit être renseigné.',
        'InvalidInputError': 'Cette valeur est incorrecte.',
        'MaxBoundInputError': 'Au dessus de la limite maximale.',
        'MinBoundInputError': 'En dessous du minimum requis.',
      },
    );
    return '$_temp0';
  }

  @override
  String get keepEditing => 'Continuer d\'éditer';

  @override
  String regexPatternUnmatched(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Regex inconnu.',
        'email': 'Ne semble pas être une adresse e-mail.',
        'password': 'Trop faible. Un mot de passe doit contenir une minuscule, une majuscule, un chiffre et au moins 8 caractères.',
        'username': 'Minimum 3 caractères, en alphanumérique\nSymboles acceptés : _ - .\nUn seul symbole à la suite, et uniquement au milieu.',
      },
    );
    return '$_temp0';
  }

  @override
  String get save => 'Enregistrer';

  @override
  String get saved => 'Enregistré';
}
