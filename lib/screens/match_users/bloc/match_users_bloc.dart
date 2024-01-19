import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/match/like_user_model/like_user_model.dart';

part 'match_users_event.dart';
part 'match_users_state.dart';

class MatchUsersBloc extends Bloc<MatchUsersEvent, MatchUsersState> {
  LikeUserModel likeUserModel = LikeUserModel.initial();
  bool hasFocusNode = false;

  TextEditingController messageController = TextEditingController();
  String message = '';

  MatchUsersBloc() : super(MatchUsersInitial()) {
    on<OnMatchUsersInitEvent>((event, emit) {
      emit(LoadingState());
      likeUserModel = event.likeUserModel;
      emit(ValidState());
    });

    on<OnChangeFocusEvent>((event, emit) {
      emit(LoadingState());
      hasFocusNode = event.hasFocusNode;
      emit(ValidState());
    });

    on<OnMessageChangedEvent>((event, emit) {
      if (messageController.text.isNotEmpty) {
        emit(ErrorState(message: TextConstants.serverError));
        emit(ValidState());
      } else {
        emit(ErrorState(message: TextConstants.serverError));
      }

      message = event.message;
    });
  }
}
