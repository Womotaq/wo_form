import 'package:intl/intl.dart' as intl;

import 'wo_localizations.dart';

/// The translations for French (`fr`).
class WoLocalizationsFr extends WoLocalizations {
  WoLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get accept => 'Accepter';

  @override
  String get account => 'Compte';

  @override
  String get accountCreating => 'Compte en cours de création';

  @override
  String get always => 'Toujours';

  @override
  String get avatarChoose => 'Choisir un avatar';

  @override
  String get avatarOrPhotoChoose => 'Choississez un avatar ou une de vos photo !';

  @override
  String get back => 'Retour';

  @override
  String get bannerChoose => 'Choisir une bannière';

  @override
  String get block => 'Bloquer';

  @override
  String get blockedUser => 'Utilisateur bloqué';

  @override
  String get blockedByUser => 'Cet utilisateur vous a bloqué';

  @override
  String get blockedUserVerbose => 'Vous avez bloqué cet utilisateur';

  @override
  String get blockThisUserQuestion => 'Bloquer cet utilisateur ?';

  @override
  String get cancel => 'Annuler';

  @override
  String get copied => 'Copié';

  @override
  String get cropping => 'Recadrage';

  @override
  String get chooseColor => 'Choisis une couleur';

  @override
  String get chooseGoodUsername => 'Choisissez un nom que vos amis reconnaîtront !';

  @override
  String get continue_ => 'Continuer';

  @override
  String get deleteAccount => 'Supprimer ce compte';

  @override
  String deleteAccountExplanation(Object email) {
    return 'Êtes vous sûr de vouloir supprimer le compte lié à l\'addresse $email ?\nCette action est irréversible.\nUne réauthentification peut être demandée.';
  }

  @override
  String get discardChangesQuestion => 'Abandonner les modifications ?';

  @override
  String get email => 'Mail';

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
  String get friendNoneYet => 'Pas encore d\'ami.';

  @override
  String get friendRemove => 'Retirer des amis';

  @override
  String get friendRemoveQuestion => 'Retirer des amis ?';

  @override
  String get friendRemoved => 'Retiré des amis';

  @override
  String get friendRequest => 'Demande en ami';

  @override
  String get friendRequests => 'Vous demande en ami !';

  @override
  String get friendRequestCancelQuestion => 'Annuler la demande en ami ?';

  @override
  String get friendRequestCanceled => 'Demande en ami annulée';

  @override
  String get friendRequestNew => 'Nouvelle demande en ami !';

  @override
  String get friendRequestNewShort => 'Demande en ami !';

  @override
  String get friendRequestSend => 'Demander en ami';

  @override
  String get friendRequestSent => 'Demande en ami envoyée';

  @override
  String get friends => 'Amis';

  @override
  String get friendSuggestions => 'Suggestions';

  @override
  String get friendSuggestionsTip => 'Appuyez sur le bouton refresh afin de découvrir des joueurs que vous connaissez peut-être !';

  @override
  String get friendsYouAre => 'Vous êtes amis !';

  @override
  String get home => 'Accueil';

  @override
  String get letsGo => 'C\'est parti !';

  @override
  String get message => 'Message';

  @override
  String messageFromSystem(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Message inconnu.',
        'friendshipStart': 'C\'est le début de votre amitié !\nPréparez-vous à des parties de folie...\nQue le fun commence !\n♟️🎉',
        'gameInProgress': 'Partie en cours.',
        'pastGame': 'Partie terminée.',
      },
    );
    return '$_temp0';
  }

  @override
  String get messageFailedToSend => 'Échec de l\'envoi du message';

  @override
  String get messageNoneYet => 'Vous n\'avez pas encore de message.';

  @override
  String get messages => 'Messages';

  @override
  String get messagesNew => 'Nouveaux messages';

  @override
  String get next => 'Suivant';

  @override
  String get no => 'Non';

  @override
  String get ok => 'Ok';

  @override
  String get oops => 'Oops !';

  @override
  String get pageNotFound => 'Cette page n\'existe pas';

  @override
  String get password => 'Mot de passe';

  @override
  String get passwordForgot => 'Mot de passe oublié ?';

  @override
  String get pictureTake => 'Prendre une photo';

  @override
  String get pictureImport => 'Importer une image';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get profileSee => 'Voir mon profil';

  @override
  String get refuse => 'Refuser';

  @override
  String get report => 'Signaler';

  @override
  String get reportTellUsMore => 'Dites-en plus...';

  @override
  String reportType(String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'other': 'Autre',
        'cheating': 'Triche',
        'fairPlay': 'Fair play',
        'verbalAbuse': 'Violence verbale',
      },
    );
    return '$_temp0';
  }

  @override
  String resetPasswordExplanation(Object email) {
    return 'Voulez-vous réinitialiser votre mot de passe ?\n\nUn mail sera envoyé à $email';
  }

  @override
  String get save => 'Enregistrer';

  @override
  String get saved => 'Enregistré';

  @override
  String get searchPlayer => 'Rechercher un joueur';

  @override
  String get send => 'Envoyer';

  @override
  String get sendEmail => 'Envoyer un mail';

  @override
  String get sendMessage => 'Envoyer un message';

  @override
  String get settings => 'Réglages';

  @override
  String get settingsAppColor => 'Couleur de l\'app';

  @override
  String get settingsBoardSettings => 'Thème';

  @override
  String get settingsBrightness => 'Luminosité';

  @override
  String get settingsGeneral => 'Général';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get signCreateAccount => 'Créer un compte';

  @override
  String get signImplicitAccept1 => 'En continuant, vous acceptez nos ';

  @override
  String get signImplicitAccept2 => ' et notre ';

  @override
  String get signin => 'Connexion';

  @override
  String get signOrWithEmail => 'Ou avec une adresse mail';

  @override
  String get signout => 'Se déconnecter';

  @override
  String get signup => 'Inscription';

  @override
  String signWithProvider(String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'other': 'Provider inconnu',
        'google': 'Se connecter avec Google',
      },
    );
    return '$_temp0';
  }

  @override
  String get skip => 'Passer';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String themeMode(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Inconnu',
        'light': 'Clair',
        'dark': 'Sombre',
        'system': 'Système',
      },
    );
    return '$_temp0';
  }

  @override
  String get warning => 'Attention !';

  @override
  String get welcomeAmongUs => 'Bienvenue parmi nous !';

  @override
  String get welcomeBack => 'Bon retour parmi nous !';

  @override
  String get welcomeTo => 'Bienvenue sur';

  @override
  String get update => 'Mettre à jour';

  @override
  String get updateAvailible => 'Mise à jour disponible';

  @override
  String get updateAvailibleExplanation => 'Les dernières nouveautés sont dans le Play Store. Mettez votre application à jour afin d\'en profiter dès maintenant !';

  @override
  String get username => 'Nom d\'utilisateur';

  @override
  String get usernameModify => 'Modifier le nom d\'utilisateur';

  @override
  String get userNotFoud => 'Utilisateur non trouvé';

  @override
  String get userUnblockQuestion => 'Débloquer cet utilisateur ?';

  @override
  String get userUnblocked => 'Utilisateur débloqué';

  @override
  String verifyEmailExplainLink(Object email) {
    return 'Confirmez votre adresse e-mail en cliquant sur le lien envoyé à $email, puis revenez à l\'application et cliquez sur Continuer.';
  }

  @override
  String get verifyEmailExplanation => 'Un mail vous sera envoyé pour confirmer que vous êtes le propriétaire de cette adresse.';

  @override
  String get verifyEmailResendLink => 'Renvoyer le lien';

  @override
  String get verifyMailbox => 'Vérifiez votre boîte de réception !';

  @override
  String get yes => 'Oui';

  @override
  String get you => 'Vous';
}
