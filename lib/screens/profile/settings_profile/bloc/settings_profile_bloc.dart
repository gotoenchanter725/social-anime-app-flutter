import 'package:flutter/material.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/core/user/blocs/remove_device_token/remove_device_token.dart';
import 'package:senpai/data/storage_keys_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/profile/settings_profile/enums/settings_profile_enums.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

part 'settings_profile_state.dart';
part 'settings_profile_event.dart';

enum SettingsStep {
  settings,
  phoneNumber,
  verifyCode,
  language,
  deleteAccount,
  pushNotifications,
  feedback;
}

class SettingsProfileBloc
    extends Bloc<SettingsProfileEvent, SettingsProfileState>
    with HydratedMixin {
  SettingsStep step = SettingsStep.settings;
  UserProfileModel user = UserProfileModel.initial();
  final phoneController = TextEditingController();
  PhoneNumber phoneNumber = PhoneNumber();
  bool isShowPhoneInput = false;

  bool isVerifyPhone = true;

  final feedbackController = TextEditingController();

  bool isShowActiveStatus = true;
  bool isRecentlyActiveStatus = true;

  int feedbackStarsCount = 0;
  String feedbackText = '';

  Set<PushNotificationOptions> selectedPushNotificationOptions = Set.identity();

  SettingsProfileBloc() : super(SettingsProfileInitial()) {
    on<OnSettingsProfileInitEvent>((event, emit) {
      emit(LoadingState());
      user = event.user;
      isRecentlyActiveStatus = event.user.isDisplayingRecentlyActive ?? true;
      isShowActiveStatus = event.user.isDisplayingActive ?? true;
      emit(ValidState());
    });

    on<OnChangeSettingsStepEvent>((event, emit) {
      emit(LoadingState());
      step = event.step;
      if (event.step == SettingsStep.phoneNumber) {
        isShowPhoneInput = false;
        phoneController.clear();
        phoneNumber = PhoneNumber();
      }
      emit(ValidState());
    });

    on<OnChangeActiveStatusEvent>((event, emit) {
      emit(LoadingState());
      isShowActiveStatus = event.isStatusOn;
      user = user.copyWith(isDisplayingActive: isShowActiveStatus);
      emit(ValidState());
    });

    on<OnChangeRecentlyActiveStatusEvent>((event, emit) {
      emit(LoadingState());
      isRecentlyActiveStatus = event.isStatusOn;
      user = user.copyWith(isDisplayingRecentlyActive: isRecentlyActiveStatus);
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

    on<OnChangePhoneNumberEvent>((event, emit) {
      if (isValidPhoneNumber(phoneController.text)) {
        emit(ErrorState(message: '', isEnabled: false));
        emit(ValidState());
      } else {
        emit(ErrorState(
          message: R.strings.invalidPhoneError,
          isEnabled: true,
        ));
      }
      phoneNumber = event.phoneNumber;
    });

    on<OnTapUpdatePhoneEvent>((event, emit) {
      emit(LoadingState());
      isShowPhoneInput = true;
      if (phoneNumber.phoneNumber != null) {
        user = user.copyWith(phone: phoneNumber.phoneNumber!);
        isVerifyPhone = false;
        emit(ChangePhoneNumberState());
      } else {
        emit(ValidState());
      }
    });

    on<OnChangeIsVerifyPhone>((event, emit) {
      isVerifyPhone = event.isVerifyPhone;
      emit(ValidSaveIsVerifyPhoneState());
    });

    on<OnLogoutUserEvent>((event, emit) async {
      emit(LogoutLoadingState());
      final authModelStorage = getIt<TokenStorage<AuthModel>>();
      final spotifyStorage = getIt<TokenStorage<SpotifyAuthModel>>();
      await authModelStorage.delete();
      await spotifyStorage.delete();
      if (event.isDeleteStorage) {
        await HydratedBloc.storage.clear();
      }
      // remove device token
      final removeDeviceTokenBloc = getIt<RemoveDeviceTokenBloc>();
      await removeDeviceTokenBloc.checkStorageAndRemoveDeviceToken(
          userId: user.id);
      await Future.delayed($constants.times.slow);
      emit(LogoutSucssesfulState());
    });
  }

  @override
  SettingsProfileState? fromJson(Map<String, dynamic> json) {
    try {
      isVerifyPhone = json[StorageKeysConstants.isVerifyPhone];
      return ChangePhoneNumberState();
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(SettingsProfileState state) {
    if (state is ValidSaveIsVerifyPhoneState ||
        state is ChangePhoneNumberState) {
      return {StorageKeysConstants.isVerifyPhone: isVerifyPhone};
    } else {
      return null;
    }
  }
}
