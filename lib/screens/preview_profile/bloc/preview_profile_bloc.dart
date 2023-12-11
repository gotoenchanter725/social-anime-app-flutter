import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/match/distance_between_users/distance_between_users_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'preview_profile_state.dart';
part 'preview_profile_event.dart';

class PreviewProfileBloc
    extends Bloc<PreviewProfileEvent, PreviewProfileState> {
  UserProfileModel user = UserProfileModel.initial();

  DistanceBetweenUsersModel distance = DistanceBetweenUsersModel.initial();

  PreviewProfileBloc() : super(PreviewProfileInitial()) {
    on<OnPreviewProfileInitEvent>((event, emit) {
      emit(LoadingState());
      user = event.user;
      emit(ValidState());
    });

    on<OnFetchDistanceBeetwenUsersEvent>((event, emit) {
      emit(LoadingState());
      distance = event.distance;
      emit(ValidState());
    });
  }
}
