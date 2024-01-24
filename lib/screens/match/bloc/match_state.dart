part of 'match_bloc.dart';

@immutable
abstract class MatchState {}

class MatchInitial extends MatchState {}

class ErrorState extends MatchState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidUserIdState extends MatchState {}

class ValidState extends MatchState {}

class LoadingState extends MatchState {}

class MatchSucssesfulState extends MatchState {}

class NextUserState extends MatchState {
  final Swipe swipe;
  final int selectedUserId;
  NextUserState({required this.swipe, required this.selectedUserId});
}

class ValidSwipeState extends MatchState {}

class ValidChangePageState extends MatchState {
  final bool? isRefresh;
  ValidChangePageState({this.isRefresh});
}

class ValidUndoLikeState extends MatchState {
  final int selectedUserId;
  ValidUndoLikeState({required this.selectedUserId});
}
