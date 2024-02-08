import 'package:senpai/l10n/resources.dart';

enum PushNotificationOptions {
  newMatches,
  newMessages,
  superlikes,
  appSounds;
}

extension PushNotificationOptionsX on PushNotificationOptions {
  String get optionsString =>
      {
        PushNotificationOptions.newMatches: R.strings.newMatchesTitle,
        PushNotificationOptions.newMessages: R.strings.newMessagesTitle,
        PushNotificationOptions.superlikes: R.strings.superlikesTitle,
        PushNotificationOptions.appSounds: R.strings.appSoundsTitle,
      }[this] ??
      '';
}
