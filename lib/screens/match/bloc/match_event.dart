part of 'match_bloc.dart';

@immutable
abstract class MatchEvent {}

class OnHideVerifyPrompt extends MatchEvent {}

class OnShowVerifyPrompt extends MatchEvent {}
