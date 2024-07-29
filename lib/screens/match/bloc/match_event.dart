part of 'match_bloc.dart';

@immutable
abstract class MatchEvent {}

class OnStartMatch extends MatchEvent {}

class OnEnterLobby extends MatchEvent {}
