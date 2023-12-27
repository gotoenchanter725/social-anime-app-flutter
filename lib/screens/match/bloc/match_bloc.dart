import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';

part 'match_state.dart';
part 'match_event.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  String userID = '';

  List<UserProfileModel> users = [];
  UserProfileModel userNow = UserProfileModel.initial();
  Swipe swipeUser = Swipe.none;

  int page = 1;

  MatchBloc() : super(MatchInitial()) {
    on<OnInitUserID>((event, emit) async {
      emit(LoadingState());
      final storage = getIt<TokenStorage<AuthModel>>();
      await storage.read().then((data) {
        //TODO: maybe if id is null we need to logout user
        if (data != null) {
          userID = data.user.id;
        }
        emit(ValidUserIdState());
      });
    });

    on<OnMatchInitEvent>((event, emit) {
      emit(LoadingState());
      if (page == 1) {
        users = event.users;
      } else {
        users.addAll(event.users);
      }
      if (event.users.isNotEmpty) {
        userNow = event.users.last;
      }
      emit(ValidState());
    });

    on<OnChangeViewUserEvent>((event, emit) {
      emit(LoadingState());
      if (event.index != 0) {
        userNow = users[event.index - 1];
      }
      users = users..removeAt(event.index);
      emit(ValidState());
    });

    on<OnCancelUserEvent>((event, emit) {
      emit(LoadingState());
      final selectedUserId = int.parse(userNow.id);
      users = users..remove(userNow);
      if (users.isNotEmpty) {
        userNow = users.last;
      }
      if (users.length == 2) {
        page += 1;
      }
      emit(NextUserState(swipe: Swipe.left, selectedUserId: selectedUserId));
    });

    on<OnLikeUserEvent>((event, emit) {
      emit(LoadingState());
      final selectedUserId = int.parse(userNow.id);
      users = users..remove(userNow);
      if (users.isNotEmpty) {
        userNow = users.last;
      }
      if (users.length == 2) {
        page += 1;
      }
      emit(NextUserState(swipe: Swipe.right, selectedUserId: selectedUserId));
    });

    on<OnChangeSwipeUserEvent>((event, emit) {
      swipeUser = event.swipe;
      emit(ValidSwipeState());
    });

    on<OnChangePageEvent>((event, emit) {
      emit(LoadingState());
      if (event.isRefresh) {
        page = 1;
      } else {
        page += 1;
      }
      emit(ValidChangePageState());
    });
  }
}
