part of 'text_editing_bloc.dart';

abstract class TextEditingEvent {}

class MessageChanged extends TextEditingEvent {
  final String message;

  MessageChanged({required this.message});
}

class MessageCleared extends TextEditingEvent {}
