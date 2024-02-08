part of 'match_users_bloc.dart';

@immutable
abstract class MatchUsersEvent {}

class OnMatchUsersInitEvent extends MatchUsersEvent {
  final LikeUserModel likeUserModel;

  OnMatchUsersInitEvent({required this.likeUserModel});
}

class OnChangeFocusEvent extends MatchUsersEvent {
  final bool hasFocusNode;

  OnChangeFocusEvent({required this.hasFocusNode});
}

class OnMessageChangedEvent extends MatchUsersEvent {
  final String message;

  OnMessageChangedEvent({required this.message});
}

class OnFinishTimerEvent extends MatchUsersEvent {
  OnFinishTimerEvent();
}
