import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String userID = '';
  UserProfileModel user = UserProfileModel.initial();
  bool isPendingUserStatus = false;

  ProfileBloc() : super(ProfileInitial()) {
    on<OnInitUserID>((event, emit) async {
      emit(LoadingProfileState());
      final storage = getIt<TokenStorage<AuthModel>>();
      await storage.read().then((data) {
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

    on<OnChangeUserStatus>((event, emit) {
      emit(LoadingProfileState());
      isPendingUserStatus = event.isPendingUserStatus;
      emit(FetchSucssesfulState());
    });
  }

  bool get isUserVerified {
    return user.verified;
  }
}
