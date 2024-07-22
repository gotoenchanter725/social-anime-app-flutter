part of 'match_bloc.dart';

enum MatchStep { initial, lobby }

@immutable
class MatchState {
  final MatchStep currentStep;

  const MatchState({this.currentStep = MatchStep.initial});
}
