import 'package:senpai/data/text_constants.dart';

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
