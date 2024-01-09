part of 'settings_profile_bloc.dart';

@immutable
abstract class SettingsProfileEvent {}

class OnSettingsProfileInitEvent extends SettingsProfileEvent {
  final UserProfileModel user;

  OnSettingsProfileInitEvent({required this.user});
}

class OnChangeSettingsStepEvent extends SettingsProfileEvent {
  final SettingsStep step;

  OnChangeSettingsStepEvent({required this.step});
}

class OnChangeActiveStatusEvent extends SettingsProfileEvent {
  final bool isStatusOn;

  OnChangeActiveStatusEvent({required this.isStatusOn});
}

class OnChangeRecentlyActiveStatusEvent extends SettingsProfileEvent {
  final bool isStatusOn;

  OnChangeRecentlyActiveStatusEvent({required this.isStatusOn});
}

class OnChangePushNotificationOptionsEvent extends SettingsProfileEvent {
  final PushNotificationOptions option;
  final bool isOn;

  OnChangePushNotificationOptionsEvent({
    required this.option,
    required this.isOn,
  });
}

class OnChangeFeedbackTextEvent extends SettingsProfileEvent {
  final String feedback;
  OnChangeFeedbackTextEvent({required this.feedback});
}

class OnChangeFeedbackStartEvent extends SettingsProfileEvent {
  final int index;
  OnChangeFeedbackStartEvent({required this.index});
}

class OnChangePhoneNumberEvent extends SettingsProfileEvent {
  final PhoneNumber phoneNumber;
  OnChangePhoneNumberEvent({required this.phoneNumber});
}

class OnChangeIsVerifyPhone extends SettingsProfileEvent {
  final bool isVerifyPhone;
  OnChangeIsVerifyPhone({required this.isVerifyPhone});
}

class OnTapUpdatePhoneEvent extends SettingsProfileEvent {
  OnTapUpdatePhoneEvent();
}

class OnLogoutUserEvent extends SettingsProfileEvent {
  final bool isDeleteStorage;
  OnLogoutUserEvent({required this.isDeleteStorage});
}
