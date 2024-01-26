part of 'match_bloc.dart';

@immutable
abstract class MatchEvent {}

class OnMatchInitEvent extends MatchEvent {
  final List<UserProfileModel> users;

  OnMatchInitEvent({required this.users});
}

class OnCancelUserEvent extends MatchEvent {}

class OnLikeUserEvent extends MatchEvent {}

class OnSuperLikeUserEvent extends MatchEvent {}

class OnUndoLikeEvent extends MatchEvent {}

class OnChangeSwipeUserEvent extends MatchEvent {
  final Swipe swipe;

  OnChangeSwipeUserEvent({required this.swipe});
}

class OnChangePageEvent extends MatchEvent {
  final bool isRefresh;
  OnChangePageEvent({this.isRefresh = false});
}

class OnInitUserID extends MatchEvent {
  OnInitUserID();
}
