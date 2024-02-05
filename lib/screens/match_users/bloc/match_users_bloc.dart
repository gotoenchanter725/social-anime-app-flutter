import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/match/like_user_model/like_user_model.dart';

part 'match_users_event.dart';
part 'match_users_state.dart';

class MatchUsersBloc extends Bloc<MatchUsersEvent, MatchUsersState> {
  LikeUserModel likeUserModel = LikeUserModel.initial();
  bool hasFocusNode = false;

  TextEditingController messageController = TextEditingController();
  String message = '';
  Duration animationFireworkTime = const Duration(seconds: 5);

  MatchUsersBloc() : super(MatchUsersInitial()) {
    on<OnMatchUsersInitEvent>((event, emit) async {
      emit(LoadingState());
      likeUserModel = event.likeUserModel;
      emit(StartAnimationFireworkState());
      await Future.delayed(animationFireworkTime, () {
        emit(FinishAnimationFireworkState());
      });
    });

    on<OnChangeFocusEvent>((event, emit) {
      emit(LoadingState());
      hasFocusNode = event.hasFocusNode;
      emit(ValidState());
    });

    on<OnMessageChangedEvent>((event, emit) {
      if (messageController.text.isNotEmpty) {
        emit(ErrorState(message: R.strings.serverError));
        emit(ValidState());
      } else {
        emit(ErrorState(message: R.strings.serverError));
      }

      message = event.message;
    });
    on<OnFinishTimerEvent>((event, emit) {
      emit(ValidState());
    });
  }
}
