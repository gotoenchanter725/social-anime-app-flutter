part of 'match_users_bloc.dart';

@immutable
abstract class MatchUsersState {}

class MatchUsersInitial extends MatchUsersState {}

class ErrorState extends MatchUsersState {
  final String message;

  ErrorState({required this.message});
}

class ValidState extends MatchUsersState {}

class LoadingState extends MatchUsersState {}

class StartAnimationFireworkState extends MatchUsersState {}

class FinishAnimationFireworkState extends MatchUsersState {}
