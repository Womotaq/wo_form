import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'form_localizations_en.dart';
import 'form_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of FormLocalizations
/// returned by `FormLocalizations.of(context)`.
///
/// Applications need to include `FormLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb_gen/form_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FormLocalizations.localizationsDelegates,
///   supportedLocales: FormLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FormLocalizations.supportedLocales
/// property.
abstract class FormLocalizations {
  FormLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FormLocalizations of(BuildContext context) {
    return Localizations.of<FormLocalizations>(context, FormLocalizations)!;
  }

  static const LocalizationsDelegate<FormLocalizations> delegate = _FormLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @discardChanges.
  ///
  /// In fr, this message translates to:
  /// **'Abandonner les modifications'**
  String get discardChanges;

  /// No description provided for @discardChangesQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Abandonner les modifications ?'**
  String get discardChangesQuestion;

  /// No description provided for @errorOccurred.
  ///
  /// In fr, this message translates to:
  /// **'Une erreur s\'est produite.'**
  String get errorOccurred;

  /// No description provided for @formError.
  ///
  /// In fr, this message translates to:
  /// **'{code, select, other{Erreur inconnue.} empty{Ce champ doit être renseigné.} mailTaken{Cette adresse e-mail est déjà utilisée par un autre compte.} notEmail{Ne semble pas être une adresse e-mail.} notPassword{Trop faible. Un mot de passe doit contenir une minuscule, une majuscule, un chiffre et au moins 8 caractères.} notUsername{Minimum 3 caractères, en alphanumérique\nSymboles acceptés : _ - .\nUn seul symbole à la suite, et uniquement au milieu} invalidCredentials{Le mail et le mot de passe ne correspondent pas. Réessayez ou cliquez sur \"Mot de passe oublié ?\" pour le réinitialiser.} tooLong{Trop long} tooManyRequests{Trop de requêtes. Réessayez plus tard.} usernameTaken{Ce nom est déjà pris.}}'**
  String formError(String code);

  /// No description provided for @keepEditing.
  ///
  /// In fr, this message translates to:
  /// **'Continuer d\'éditer'**
  String get keepEditing;

  /// No description provided for @save.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer'**
  String get save;

  /// No description provided for @saved.
  ///
  /// In fr, this message translates to:
  /// **'Enregistré'**
  String get saved;
}

class _FormLocalizationsDelegate extends LocalizationsDelegate<FormLocalizations> {
  const _FormLocalizationsDelegate();

  @override
  Future<FormLocalizations> load(Locale locale) {
    return SynchronousFuture<FormLocalizations>(lookupFormLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_FormLocalizationsDelegate old) => false;
}

FormLocalizations lookupFormLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FormLocalizationsEn();
    case 'fr': return FormLocalizationsFr();
  }

  throw FlutterError(
    'FormLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
