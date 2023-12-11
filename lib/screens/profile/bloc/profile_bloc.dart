import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String userID = '';
  UserProfileModel user = UserProfileModel.initial();

  ProfileBloc() : super(ProfileInitial()) {
    on<OnInitUserID>((event, emit) async {
      emit(LoadingProfileState());
      final storage = getIt<TokenStorage<AuthModel>>();
      await storage.read().then((data) {
        //TODO: maybe if id is null we need to logout user
        if (data != null) {
          userID = data.user.id;
          user = user.copyWith(id: userID);
        }
      });
      emit(ProfileInitial());
    });

    on<OnFetchUser>((event, emit) {
      emit(LoadingProfileState());
      user = event.user;
      emit(FetchSucssesfulState());
    });
  }
}
