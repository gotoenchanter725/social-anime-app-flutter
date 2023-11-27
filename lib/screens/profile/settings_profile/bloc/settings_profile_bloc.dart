import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/profile/settings_profile/enums/settings_profile_enums.dart';

part 'settings_profile_state.dart';
part 'settings_profile_event.dart';

enum SettingsStep {
  settings,
  phoneNumber,
  language,
  deleteAccount,
  pushNotifications,
  feedback;
}

class SettingsProfileBloc
    extends Bloc<SettingsProfileEvent, SettingsProfileState> {
  SettingsStep step = SettingsStep.settings;
  UserProfileModel user = UserProfileModel.initial();
  final phoneController = TextEditingController();

  final feedbackController = TextEditingController();

  DeleteAccountOptions? deleteAccountOptions;

  bool isShowActiveStatus = true;
  bool isRecentlyActiveStatus = true;

  int feedbackStarsCount = 0;
  String feedbackText = '';

  Set<PushNotificationOptions> selectedPushNotificationOptions = Set.identity();

  SettingsProfileBloc() : super(SettingsProfileInitial()) {
    on<OnSettingsProfileInitEvent>((event, emit) {
      emit(LoadingState());
      user = event.user;
      phoneController.text = event.user.phone;
      emit(ValidState());
    });

    on<OnChangeSettingsStepEvent>((event, emit) {
      emit(LoadingState());
      step = event.step;
      emit(ValidState());
    });

    on<OnChangeActiveStatusEvent>((event, emit) {
      emit(LoadingState());
      isShowActiveStatus = event.isStatusOn;
      emit(ValidState());
    });

    on<OnChangeRecentlyActiveStatusEvent>((event, emit) {
      emit(LoadingState());
      isRecentlyActiveStatus = event.isStatusOn;
      emit(ValidState());
    });

    on<OnChangeDeleteAccointOptionEvent>((event, emit) {
      emit(LoadingState());
      deleteAccountOptions = event.option;
      emit(ValidState());
    });

    on<OnChangePushNotificationOptionsEvent>((event, emit) {
      emit(LoadingState());
      if (event.isOn) {
        selectedPushNotificationOptions.add(event.option);
      } else {
        selectedPushNotificationOptions.remove(event.option);
      }
      emit(ValidState());
    });

    on<OnChangeFeedbackTextEvent>((event, emit) {
      emit(LoadingState());
      feedbackText = event.feedback;
      emit(ValidState());
    });

    on<OnChangeFeedbackStartEvent>((event, emit) {
      emit(LoadingState());
      if (event.index == 0 && feedbackStarsCount == 1) {
        feedbackStarsCount = 0;
      } else {
        feedbackStarsCount = event.index + 1;
      }

      emit(ValidState());
    });
  }
}
