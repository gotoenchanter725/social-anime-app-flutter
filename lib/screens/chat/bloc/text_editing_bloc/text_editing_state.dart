part of 'text_editing_bloc.dart';

class TextEditingState {
  final String message;

  const TextEditingState({required this.message});

  TextEditingState copyWith({String? message}) {
    return TextEditingState(
      message: message ?? this.message,
    );
  }
}
