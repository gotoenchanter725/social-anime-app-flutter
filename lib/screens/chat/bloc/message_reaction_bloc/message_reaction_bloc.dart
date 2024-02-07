import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_reaction_event.dart';
part 'message_reaction_state.dart';
part 'message_reaction_bloc.freezed.dart';

class MessageReactionBloc
    extends Bloc<MessageReactionEvent, MessageReactionState> {
  MessageReactionBloc() : super(const MessageReactionState()) {
    on<_ShowReactions>((event, emit) async {
      emit(MessageReactionState(
          showReactions: true, activeMessageId: event.messageId));
      await Future.delayed(const Duration(milliseconds: 300));
      emit(MessageReactionState(
          showEmojiReactions: true, showReactions: true, activeMessageId: event.messageId));
    });

    on<_HideReactions>((event, emit) {
      emit(const MessageReactionState(
          showReactions: false, activeMessageId: null));
    });
  }

  void showReactions({required String messageId}) {
    add(MessageReactionEvent.showReactions(messageId));
  }

  void hideReactions() {
    add(const MessageReactionEvent.hideReactions());
  }
}
