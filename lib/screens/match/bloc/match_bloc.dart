import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_event.dart';
part 'match_state.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc() : super(const MatchState()) {
    on<OnHideVerifyPrompt>((event, emit) {
      emit(const MatchState(isVerifyPromptVisible: false));
    });

    on<OnShowVerifyPrompt>((event, emit) {
      emit(const MatchState(isVerifyPromptVisible: true));
    });
  }
}
