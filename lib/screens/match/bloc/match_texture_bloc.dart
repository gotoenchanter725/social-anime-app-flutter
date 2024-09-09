import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:senpai/l10n/resources.dart';

// Events
abstract class MatchTextureEvent extends Equatable {
  const MatchTextureEvent();

  @override
  List<Object?> get props => [];
}

class StartMatchingEvent extends MatchTextureEvent {}

class MatchFoundEvent extends MatchTextureEvent {}

// States
abstract class MatchTextureState extends Equatable {
  const MatchTextureState();

  @override
  List<Object?> get props => [];
}

class FindingMatchState extends MatchTextureState {
  final String findingText;

  const FindingMatchState(this.findingText);

  @override
  List<Object?> get props => [findingText];
}

class MatchFoundState extends MatchTextureState {}

final String findingMatchBaseText = R.strings.findingMatch;
// const String findingMatchBaseText = 'Finding a Match';

// Bloc
class MatchTextureBloc extends Bloc<MatchTextureEvent, MatchTextureState> {
  MatchTextureBloc() : super(FindingMatchState(findingMatchBaseText)) {
    _startTimer();
    on<StartMatchingEvent>(_onStartMatching);
    on<MatchFoundEvent>(_onMatchFound);
  }

  Timer? _timer;
  int _dotCount = 0;

  String text = findingMatchBaseText;

  void _onStartMatching(
      StartMatchingEvent event, Emitter<MatchTextureState> emit) {
    emit(FindingMatchState(text));
  }

  void _onMatchFound(MatchFoundEvent event, Emitter<MatchTextureState> emit) {
    _stopTimer();
    emit(MatchFoundState());
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      _dotCount = (_dotCount + 1) % 4; // Cycle through 0 to 3
      text = findingMatchBaseText + '.' * _dotCount;
      add(StartMatchingEvent());
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> close() {
    _stopTimer();
    return super.close();
  }
}
