import 'package:intl/intl.dart' as intl;

import 'wo_localizations.dart';

/// The translations for English (`en`).
class WoLocalizationsEn extends WoLocalizations {
  WoLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get accept => 'Accept';

  @override
  String get account => 'Account';

  @override
  String get accountCreating => 'Creating your account';

  @override
  String get always => 'Always';

  @override
  String get avatarChoose => 'Choose an avatar';

  @override
  String get avatarOrPhotoChoose => 'Choose an avatar or one of your photos !';

  @override
  String get back => 'Back';

  @override
  String get bannerChoose => 'Choose a banner';

  @override
  String get block => 'Block';

  @override
  String get blockedUser => 'Blocked user';

  @override
  String get blockedByUser => 'This user blocked you';

  @override
  String get blockedUserVerbose => 'You blocked this user';

  @override
  String get blockThisUserQuestion => 'Block this user ?';

  @override
  String get cancel => 'Cancel';

  @override
  String get copied => 'Copied';

  @override
  String get cropping => 'Cropping';

  @override
  String get chooseColor => 'Choose a color';

  @override
  String get chooseGoodUsername => 'Choose a name your friends will recognize !';

  @override
  String get continue_ => 'Continue';

  @override
  String get deleteAccount => 'Delete this account';

  @override
  String deleteAccountExplanation(Object email) {
    return 'Are you sure you want to delete the account linked to $email ?\nThis action is irreversible.\nRe-authentication may be requested.';
  }

  @override
  String get discardChangesQuestion => 'Discard changes ?';

  @override
  String get email => 'Email';

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
  String get friendNoneYet => 'No friend yet.';

  @override
  String get friendRemove => 'Remove from friends';

  @override
  String get friendRemoveQuestion => 'Remove from friends ?';

  @override
  String get friendRemoved => 'Removed from friends';

  @override
  String get friendRequest => 'Friend request';

  @override
  String get friendRequests => 'Wants to be your friend !';

  @override
  String get friendRequestCancelQuestion => 'Cancel the friend request ?';

  @override
  String get friendRequestCanceled => 'Canceled friend request';

  @override
  String get friendRequestNew => 'New friend request !';

  @override
  String get friendRequestNewShort => 'Friend request !';

  @override
  String get friendRequestSend => 'Send friend request';

  @override
  String get friendRequestSent => 'Friend request sent';

  @override
  String get friends => 'Friends';

  @override
  String get friendSuggestions => 'Suggestions';

  @override
  String get friendSuggestionsTip => 'Press the refresh button to discover players you may know !';

  @override
  String get friendsYouAre => 'You are friends !';

  @override
  String get home => 'Home';

  @override
  String get letsGo => 'Let\'s go !';

  @override
  String get message => 'Message';

  @override
  String messageFromSystem(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Unknown message.',
        'friendshipStart': 'Welcome to your new friendship !\nGet ready to have fun on the chessboard together.\nLet the games begin !\n♟️🎉',
        'gameInProgress': 'Game in progress.',
        'pastGame': 'Game is over.',
      },
    );
    return '$_temp0';
  }

  @override
  String get messageFailedToSend => 'Failed to send message';

  @override
  String get messageNoneYet => 'No message here yet.';

  @override
  String get messages => 'Messages';

  @override
  String get messagesNew => 'New messages';

  @override
  String get next => 'Next';

  @override
  String get no => 'No';

  @override
  String get ok => 'Ok';

  @override
  String get oops => 'Oops !';

  @override
  String get pageNotFound => 'Page not found';

  @override
  String get password => 'Password';

  @override
  String get passwordForgot => 'Forgot password ?';

  @override
  String get pictureTake => 'Take a picture';

  @override
  String get pictureImport => 'Import a picture';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get profileSee => 'See my profile';

  @override
  String get refuse => 'Refuse';

  @override
  String get report => 'Report';

  @override
  String get reportTellUsMore => 'Tell us more...';

  @override
  String reportType(String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'other': 'Other',
        'cheating': 'Cheating',
        'fairPlay': 'Fair play',
        'verbalAbuse': 'Verbal abuse',
      },
    );
    return '$_temp0';
  }

  @override
  String resetPasswordExplanation(Object email) {
    return 'Do you want to reset your password ?\n\nAn email will be sent to $email';
  }

  @override
  String get save => 'Save';

  @override
  String get saved => 'Saved';

  @override
  String get searchPlayer => 'Search a player';

  @override
  String get send => 'Send';

  @override
  String get sendEmail => 'Send email';

  @override
  String get sendMessage => 'Send message';

  @override
  String get settings => 'Settings';

  @override
  String get settingsAppColor => 'App color';

  @override
  String get settingsBoardSettings => 'Settings';

  @override
  String get settingsBrightness => 'Brightness';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get signCreateAccount => 'Create an account';

  @override
  String get signImplicitAccept1 => 'By continuing, you accept our ';

  @override
  String get signImplicitAccept2 => ' and our ';

  @override
  String get signin => 'Log in';

  @override
  String get signOrWithEmail => 'Or with an email address';

  @override
  String get signout => 'Sign out';

  @override
  String get signup => 'Sign up';

  @override
  String signWithProvider(String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'other': 'Unknown provider',
        'google': 'Sign in with Google',
      },
    );
    return '$_temp0';
  }

  @override
  String get skip => 'Skip';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String themeMode(String code) {
    String _temp0 = intl.Intl.selectLogic(
      code,
      {
        'other': 'Unknown',
        'light': 'Light',
        'dark': 'Dark',
        'system': 'System',
      },
    );
    return '$_temp0';
  }

  @override
  String get warning => 'Attention !';

  @override
  String get welcomeAmongUs => 'Welcome among us !';

  @override
  String get welcomeBack => 'Welcome back !';

  @override
  String get welcomeTo => 'Welcome to';

  @override
  String get update => 'Update';

  @override
  String get updateAvailible => 'Update availible';

  @override
  String get updateAvailibleExplanation => 'The latest features are in the Play Store. Update your app to take advantage of it now !';

  @override
  String get username => 'Username';

  @override
  String get usernameModify => 'Modify username';

  @override
  String get userNotFoud => 'User not found';

  @override
  String get userUnblockQuestion => 'Unblock this user ?';

  @override
  String get userUnblocked => 'Unblocked user';

  @override
  String verifyEmailExplainLink(Object email) {
    return 'Confirm your email by clicking the link sent to $email, then return to the app and click Continue.';
  }

  @override
  String get verifyEmailExplanation => 'An email will be sent to you to confirm that you are the owner of this address.';

  @override
  String get verifyEmailResendLink => 'Resend link';

  @override
  String get verifyMailbox => 'Check your mailbox !';

  @override
  String get yes => 'Yes';

  @override
  String get you => 'You';
}
