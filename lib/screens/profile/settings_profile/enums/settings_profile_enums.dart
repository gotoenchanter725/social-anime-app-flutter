import 'package:senpai/data/text_constants.dart';

enum DeleteAccountOptions {
  hideAccount,
  swithNotification,
  justLogout,
  deleteAccount;
}

extension DeleteAccountOptionsX on DeleteAccountOptions {
  String get optionsString =>
      const {
        DeleteAccountOptions.hideAccount: TextConstants.hideYourAccountTitle,
        DeleteAccountOptions.swithNotification:
            TextConstants.switchNotificationsOffTitle,
        DeleteAccountOptions.justLogout: TextConstants.justLogoutInsteadTitle,
        DeleteAccountOptions.deleteAccount:
            TextConstants.deleteYourAccountTitle,
      }[this] ??
      '';
}

enum PushNotificationOptions {
  newMatches,
  newMessages,
  superlikes,
  appSounds;
}

extension PushNotificationOptionsX on PushNotificationOptions {
  String get optionsString =>
      const {
        PushNotificationOptions.newMatches: TextConstants.newMatchesTitle,
        PushNotificationOptions.newMessages: TextConstants.newMessagesTitle,
        PushNotificationOptions.superlikes: TextConstants.superlikesTitle,
        PushNotificationOptions.appSounds: TextConstants.appSoundsTitle,
      }[this] ??
      '';
}
