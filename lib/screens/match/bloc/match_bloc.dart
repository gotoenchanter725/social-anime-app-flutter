import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_event.dart';
part 'match_state.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc(MatchStep defaultStep)
      : super(MatchState(currentStep: defaultStep)) {
    on<OnStartMatch>((event, emit) {
      emit(MatchState(currentStep: MatchStep.initial));
    });

    on<OnEnterLobby>((event, emit) {
      emit(MatchState(currentStep: MatchStep.lobby));
    });
  }
}
