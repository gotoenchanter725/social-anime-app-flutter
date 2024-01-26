import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';
import 'package:swipable_stack/swipable_stack.dart';

part 'match_state.dart';
part 'match_event.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  String userID = '';

  List<UserProfileModel> users = [];
  UserProfileModel userNow = UserProfileModel.initial();
  UserProfileModel previewUser = UserProfileModel.initial();
  Swipe swipeUser = Swipe.none;

  List<FlipCardController> flipCardController = [];
  SwipableStackController cardsSwipeController = SwipableStackController();

  int currentProfileIndex = 0;

  int superLikeCount = 0;

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
      users = event.users;
      if (event.users.isNotEmpty) {
        userNow = event.users.first;
      }
      flipCardController = [];
      swipeUser = Swipe.none;
      cardsSwipeController = SwipableStackController();
      users.forEach((element) {
        flipCardController = flipCardController..add(FlipCardController());
      });

      emit(ValidState());
    });

    on<OnCancelUserEvent>((event, emit) {
      emit(LoadingState());
      currentProfileIndex = cardsSwipeController.currentIndex;
      final selectedUserId = int.parse(userNow.id);

      if (users.isNotEmpty && currentProfileIndex != users.length) {
        previewUser = userNow;

        userNow = users[currentProfileIndex];
      }
      emit(NextUserState(swipe: Swipe.left, selectedUserId: selectedUserId));
    });

    on<OnLikeUserEvent>((event, emit) {
      emit(LoadingState());
      currentProfileIndex = cardsSwipeController.currentIndex;

      final selectedUserId = int.parse(userNow.id);
      if (users.isNotEmpty && currentProfileIndex != users.length) {
        previewUser = userNow;
        userNow = users[currentProfileIndex];
      }
      emit(NextUserState(swipe: Swipe.right, selectedUserId: selectedUserId));
    });

    on<OnSuperLikeUserEvent>((event, emit) {
      emit(LoadingState());
      currentProfileIndex = cardsSwipeController.currentIndex;
      final selectedUserId = int.parse(userNow.id);
      if (superLikeCount > 0) {
        superLikeCount--;
      }
      if (users.isNotEmpty && currentProfileIndex != users.length) {
        previewUser = userNow;
        userNow = users[currentProfileIndex];
      }
      emit(NextUserState(swipe: Swipe.up, selectedUserId: selectedUserId));
    });

    on<OnUndoLikeEvent>((event, emit) {
      cardsSwipeController.rewind();
      currentProfileIndex = cardsSwipeController.currentIndex;
      final selectedUserId = int.parse(previewUser.id);
      userNow = previewUser;
      swipeUser = Swipe.rewind;
      emit(ValidUndoLikeState(selectedUserId: selectedUserId));
    });

    on<OnChangeSwipeUserEvent>((event, emit) {
      swipeUser = event.swipe;
      emit(ValidSwipeState());
    });

    on<OnChangePageEvent>((event, emit) {
      emit(LoadingState());
      emit(ValidChangePageState(isRefresh: event.isRefresh));
    });
  }
}
