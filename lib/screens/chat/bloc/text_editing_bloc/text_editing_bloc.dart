import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_editing_event.dart';
part 'text_editing_state.dart';

class TextEditingBloc extends Bloc<TextEditingEvent, TextEditingState> {
  TextEditingController controller = TextEditingController();

  TextEditingBloc() : super(const TextEditingState(message: '')) {
    on<MessageChanged>((event, emit) {
      emit(state.copyWith(message: event.message));
      controller.text = event.message;
    });

    on<MessageCleared>((event, emit) {
      emit(state.copyWith(message: ''));
      controller.clear();
    });
  }
}
