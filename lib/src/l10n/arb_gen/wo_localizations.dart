import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'wo_localizations_en.dart';
import 'wo_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of WoLocalizations
/// returned by `WoLocalizations.of(context)`.
///
/// Applications need to include `WoLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb_gen/wo_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: WoLocalizations.localizationsDelegates,
///   supportedLocales: WoLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the WoLocalizations.supportedLocales
/// property.
abstract class WoLocalizations {
  WoLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static WoLocalizations of(BuildContext context) {
    return Localizations.of<WoLocalizations>(context, WoLocalizations)!;
  }

  static const LocalizationsDelegate<WoLocalizations> delegate = _WoLocalizationsDelegate();

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

  /// No description provided for @accept.
  ///
  /// In fr, this message translates to:
  /// **'Accepter'**
  String get accept;

  /// No description provided for @account.
  ///
  /// In fr, this message translates to:
  /// **'Compte'**
  String get account;

  /// No description provided for @accountCreating.
  ///
  /// In fr, this message translates to:
  /// **'Compte en cours de création'**
  String get accountCreating;

  /// No description provided for @always.
  ///
  /// In fr, this message translates to:
  /// **'Toujours'**
  String get always;

  /// No description provided for @avatarChoose.
  ///
  /// In fr, this message translates to:
  /// **'Choisir un avatar'**
  String get avatarChoose;

  /// No description provided for @avatarOrPhotoChoose.
  ///
  /// In fr, this message translates to:
  /// **'Choississez un avatar ou une de vos photo !'**
  String get avatarOrPhotoChoose;

  /// No description provided for @back.
  ///
  /// In fr, this message translates to:
  /// **'Retour'**
  String get back;

  /// No description provided for @bannerChoose.
  ///
  /// In fr, this message translates to:
  /// **'Choisir une bannière'**
  String get bannerChoose;

  /// No description provided for @block.
  ///
  /// In fr, this message translates to:
  /// **'Bloquer'**
  String get block;

  /// No description provided for @blockedUser.
  ///
  /// In fr, this message translates to:
  /// **'Utilisateur bloqué'**
  String get blockedUser;

  /// No description provided for @blockedByUser.
  ///
  /// In fr, this message translates to:
  /// **'Cet utilisateur vous a bloqué'**
  String get blockedByUser;

  /// No description provided for @blockedUserVerbose.
  ///
  /// In fr, this message translates to:
  /// **'Vous avez bloqué cet utilisateur'**
  String get blockedUserVerbose;

  /// No description provided for @blockThisUserQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Bloquer cet utilisateur ?'**
  String get blockThisUserQuestion;

  /// No description provided for @cancel.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get cancel;

  /// No description provided for @copied.
  ///
  /// In fr, this message translates to:
  /// **'Copié'**
  String get copied;

  /// No description provided for @cropping.
  ///
  /// In fr, this message translates to:
  /// **'Recadrage'**
  String get cropping;

  /// No description provided for @chooseColor.
  ///
  /// In fr, this message translates to:
  /// **'Choisis une couleur'**
  String get chooseColor;

  /// No description provided for @chooseGoodUsername.
  ///
  /// In fr, this message translates to:
  /// **'Choisissez un nom que vos amis reconnaîtront !'**
  String get chooseGoodUsername;

  /// No description provided for @continue_.
  ///
  /// In fr, this message translates to:
  /// **'Continuer'**
  String get continue_;

  /// No description provided for @deleteAccount.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer ce compte'**
  String get deleteAccount;

  /// No description provided for @deleteAccountExplanation.
  ///
  /// In fr, this message translates to:
  /// **'Êtes vous sûr de vouloir supprimer le compte lié à l\'addresse {email} ?\nCette action est irréversible.\nUne réauthentification peut être demandée.'**
  String deleteAccountExplanation(Object email);

  /// No description provided for @discardChangesQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Abandonner les modifications ?'**
  String get discardChangesQuestion;

  /// No description provided for @email.
  ///
  /// In fr, this message translates to:
  /// **'Mail'**
  String get email;

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

  /// No description provided for @friendNoneYet.
  ///
  /// In fr, this message translates to:
  /// **'Pas encore d\'ami.'**
  String get friendNoneYet;

  /// No description provided for @friendRemove.
  ///
  /// In fr, this message translates to:
  /// **'Retirer des amis'**
  String get friendRemove;

  /// No description provided for @friendRemoveQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Retirer des amis ?'**
  String get friendRemoveQuestion;

  /// No description provided for @friendRemoved.
  ///
  /// In fr, this message translates to:
  /// **'Retiré des amis'**
  String get friendRemoved;

  /// No description provided for @friendRequest.
  ///
  /// In fr, this message translates to:
  /// **'Demande en ami'**
  String get friendRequest;

  /// No description provided for @friendRequests.
  ///
  /// In fr, this message translates to:
  /// **'Vous demande en ami !'**
  String get friendRequests;

  /// No description provided for @friendRequestCancelQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Annuler la demande en ami ?'**
  String get friendRequestCancelQuestion;

  /// No description provided for @friendRequestCanceled.
  ///
  /// In fr, this message translates to:
  /// **'Demande en ami annulée'**
  String get friendRequestCanceled;

  /// No description provided for @friendRequestNew.
  ///
  /// In fr, this message translates to:
  /// **'Nouvelle demande en ami !'**
  String get friendRequestNew;

  /// No description provided for @friendRequestNewShort.
  ///
  /// In fr, this message translates to:
  /// **'Demande en ami !'**
  String get friendRequestNewShort;

  /// No description provided for @friendRequestSend.
  ///
  /// In fr, this message translates to:
  /// **'Demander en ami'**
  String get friendRequestSend;

  /// No description provided for @friendRequestSent.
  ///
  /// In fr, this message translates to:
  /// **'Demande en ami envoyée'**
  String get friendRequestSent;

  /// No description provided for @friends.
  ///
  /// In fr, this message translates to:
  /// **'Amis'**
  String get friends;

  /// No description provided for @friendSuggestions.
  ///
  /// In fr, this message translates to:
  /// **'Suggestions'**
  String get friendSuggestions;

  /// No description provided for @friendSuggestionsTip.
  ///
  /// In fr, this message translates to:
  /// **'Appuyez sur le bouton refresh afin de découvrir des joueurs que vous connaissez peut-être !'**
  String get friendSuggestionsTip;

  /// No description provided for @friendsYouAre.
  ///
  /// In fr, this message translates to:
  /// **'Vous êtes amis !'**
  String get friendsYouAre;

  /// No description provided for @home.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get home;

  /// No description provided for @letsGo.
  ///
  /// In fr, this message translates to:
  /// **'C\'est parti !'**
  String get letsGo;

  /// No description provided for @message.
  ///
  /// In fr, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @messageFromSystem.
  ///
  /// In fr, this message translates to:
  /// **'{code, select, other{Message inconnu.} friendshipStart{C\'est le début de votre amitié !\nPréparez-vous à des parties de folie...\nQue le fun commence !\n♟️🎉} gameInProgress{Partie en cours.} pastGame{Partie terminée.}}'**
  String messageFromSystem(String code);

  /// No description provided for @messageFailedToSend.
  ///
  /// In fr, this message translates to:
  /// **'Échec de l\'envoi du message'**
  String get messageFailedToSend;

  /// No description provided for @messageNoneYet.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez pas encore de message.'**
  String get messageNoneYet;

  /// No description provided for @messages.
  ///
  /// In fr, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @messagesNew.
  ///
  /// In fr, this message translates to:
  /// **'Nouveaux messages'**
  String get messagesNew;

  /// No description provided for @next.
  ///
  /// In fr, this message translates to:
  /// **'Suivant'**
  String get next;

  /// No description provided for @no.
  ///
  /// In fr, this message translates to:
  /// **'Non'**
  String get no;

  /// No description provided for @ok.
  ///
  /// In fr, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @oops.
  ///
  /// In fr, this message translates to:
  /// **'Oops !'**
  String get oops;

  /// No description provided for @pageNotFound.
  ///
  /// In fr, this message translates to:
  /// **'Cette page n\'existe pas'**
  String get pageNotFound;

  /// No description provided for @password.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe'**
  String get password;

  /// No description provided for @passwordForgot.
  ///
  /// In fr, this message translates to:
  /// **'Mot de passe oublié ?'**
  String get passwordForgot;

  /// No description provided for @pictureTake.
  ///
  /// In fr, this message translates to:
  /// **'Prendre une photo'**
  String get pictureTake;

  /// No description provided for @pictureImport.
  ///
  /// In fr, this message translates to:
  /// **'Importer une image'**
  String get pictureImport;

  /// No description provided for @privacyPolicy.
  ///
  /// In fr, this message translates to:
  /// **'Politique de confidentialité'**
  String get privacyPolicy;

  /// No description provided for @profileSee.
  ///
  /// In fr, this message translates to:
  /// **'Voir mon profil'**
  String get profileSee;

  /// No description provided for @refuse.
  ///
  /// In fr, this message translates to:
  /// **'Refuser'**
  String get refuse;

  /// No description provided for @report.
  ///
  /// In fr, this message translates to:
  /// **'Signaler'**
  String get report;

  /// No description provided for @reportTellUsMore.
  ///
  /// In fr, this message translates to:
  /// **'Dites-en plus...'**
  String get reportTellUsMore;

  /// No description provided for @reportType.
  ///
  /// In fr, this message translates to:
  /// **'{provider, select, other{Autre} cheating{Triche} fairPlay{Fair play} verbalAbuse{Violence verbale}}'**
  String reportType(String provider);

  /// No description provided for @resetPasswordExplanation.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous réinitialiser votre mot de passe ?\n\nUn mail sera envoyé à {email}'**
  String resetPasswordExplanation(Object email);

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

  /// No description provided for @searchPlayer.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un joueur'**
  String get searchPlayer;

  /// No description provided for @send.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer'**
  String get send;

  /// No description provided for @sendEmail.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer un mail'**
  String get sendEmail;

  /// No description provided for @sendMessage.
  ///
  /// In fr, this message translates to:
  /// **'Envoyer un message'**
  String get sendMessage;

  /// No description provided for @settings.
  ///
  /// In fr, this message translates to:
  /// **'Réglages'**
  String get settings;

  /// No description provided for @settingsAppColor.
  ///
  /// In fr, this message translates to:
  /// **'Couleur de l\'app'**
  String get settingsAppColor;

  /// No description provided for @settingsBoardSettings.
  ///
  /// In fr, this message translates to:
  /// **'Thème'**
  String get settingsBoardSettings;

  /// No description provided for @settingsBrightness.
  ///
  /// In fr, this message translates to:
  /// **'Luminosité'**
  String get settingsBrightness;

  /// No description provided for @settingsGeneral.
  ///
  /// In fr, this message translates to:
  /// **'Général'**
  String get settingsGeneral;

  /// No description provided for @settingsLanguage.
  ///
  /// In fr, this message translates to:
  /// **'Langue'**
  String get settingsLanguage;

  /// No description provided for @signCreateAccount.
  ///
  /// In fr, this message translates to:
  /// **'Créer un compte'**
  String get signCreateAccount;

  /// No description provided for @signImplicitAccept1.
  ///
  /// In fr, this message translates to:
  /// **'En continuant, vous acceptez nos '**
  String get signImplicitAccept1;

  /// No description provided for @signImplicitAccept2.
  ///
  /// In fr, this message translates to:
  /// **' et notre '**
  String get signImplicitAccept2;

  /// No description provided for @signin.
  ///
  /// In fr, this message translates to:
  /// **'Connexion'**
  String get signin;

  /// No description provided for @signOrWithEmail.
  ///
  /// In fr, this message translates to:
  /// **'Ou avec une adresse mail'**
  String get signOrWithEmail;

  /// No description provided for @signout.
  ///
  /// In fr, this message translates to:
  /// **'Se déconnecter'**
  String get signout;

  /// No description provided for @signup.
  ///
  /// In fr, this message translates to:
  /// **'Inscription'**
  String get signup;

  /// No description provided for @signWithProvider.
  ///
  /// In fr, this message translates to:
  /// **'{provider, select, other{Provider inconnu} google{Se connecter avec Google}}'**
  String signWithProvider(String provider);

  /// No description provided for @skip.
  ///
  /// In fr, this message translates to:
  /// **'Passer'**
  String get skip;

  /// No description provided for @termsOfUse.
  ///
  /// In fr, this message translates to:
  /// **'Conditions d\'utilisation'**
  String get termsOfUse;

  /// No description provided for @themeMode.
  ///
  /// In fr, this message translates to:
  /// **'{code, select, other{Inconnu} light{Clair} dark{Sombre} system{Système}}'**
  String themeMode(String code);

  /// No description provided for @warning.
  ///
  /// In fr, this message translates to:
  /// **'Attention !'**
  String get warning;

  /// No description provided for @welcomeAmongUs.
  ///
  /// In fr, this message translates to:
  /// **'Bienvenue parmi nous !'**
  String get welcomeAmongUs;

  /// No description provided for @welcomeBack.
  ///
  /// In fr, this message translates to:
  /// **'Bon retour parmi nous !'**
  String get welcomeBack;

  /// No description provided for @welcomeTo.
  ///
  /// In fr, this message translates to:
  /// **'Bienvenue sur'**
  String get welcomeTo;

  /// No description provided for @update.
  ///
  /// In fr, this message translates to:
  /// **'Mettre à jour'**
  String get update;

  /// No description provided for @updateAvailible.
  ///
  /// In fr, this message translates to:
  /// **'Mise à jour disponible'**
  String get updateAvailible;

  /// No description provided for @updateAvailibleExplanation.
  ///
  /// In fr, this message translates to:
  /// **'Les dernières nouveautés sont dans le Play Store. Mettez votre application à jour afin d\'en profiter dès maintenant !'**
  String get updateAvailibleExplanation;

  /// No description provided for @username.
  ///
  /// In fr, this message translates to:
  /// **'Nom d\'utilisateur'**
  String get username;

  /// No description provided for @usernameModify.
  ///
  /// In fr, this message translates to:
  /// **'Modifier le nom d\'utilisateur'**
  String get usernameModify;

  /// No description provided for @userNotFoud.
  ///
  /// In fr, this message translates to:
  /// **'Utilisateur non trouvé'**
  String get userNotFoud;

  /// No description provided for @userUnblockQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Débloquer cet utilisateur ?'**
  String get userUnblockQuestion;

  /// No description provided for @userUnblocked.
  ///
  /// In fr, this message translates to:
  /// **'Utilisateur débloqué'**
  String get userUnblocked;

  /// No description provided for @verifyEmailExplainLink.
  ///
  /// In fr, this message translates to:
  /// **'Confirmez votre adresse e-mail en cliquant sur le lien envoyé à {email}, puis revenez à l\'application et cliquez sur Continuer.'**
  String verifyEmailExplainLink(Object email);

  /// No description provided for @verifyEmailExplanation.
  ///
  /// In fr, this message translates to:
  /// **'Un mail vous sera envoyé pour confirmer que vous êtes le propriétaire de cette adresse.'**
  String get verifyEmailExplanation;

  /// No description provided for @verifyEmailResendLink.
  ///
  /// In fr, this message translates to:
  /// **'Renvoyer le lien'**
  String get verifyEmailResendLink;

  /// No description provided for @verifyMailbox.
  ///
  /// In fr, this message translates to:
  /// **'Vérifiez votre boîte de réception !'**
  String get verifyMailbox;

  /// No description provided for @yes.
  ///
  /// In fr, this message translates to:
  /// **'Oui'**
  String get yes;

  /// No description provided for @you.
  ///
  /// In fr, this message translates to:
  /// **'Vous'**
  String get you;
}

class _WoLocalizationsDelegate extends LocalizationsDelegate<WoLocalizations> {
  const _WoLocalizationsDelegate();

  @override
  Future<WoLocalizations> load(Locale locale) {
    return SynchronousFuture<WoLocalizations>(lookupWoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_WoLocalizationsDelegate old) => false;
}

WoLocalizations lookupWoLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return WoLocalizationsEn();
    case 'fr': return WoLocalizationsFr();
  }

  throw FlutterError(
    'WoLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
