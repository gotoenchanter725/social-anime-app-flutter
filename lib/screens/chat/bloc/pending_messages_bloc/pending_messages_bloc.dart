import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:senpai/models/chat/chat_message.dart';

part 'pending_messages_event.dart';
part 'pending_messages_state.dart';
part 'pending_messages_bloc.freezed.dart';

class PendingMessagesBloc
    extends HydratedBloc<PendingMessagesEvent, PendingMessagesState> {
  PendingMessagesBloc() : super(const PendingMessagesState()) {
    on<PendingMessagesEvent>((event, emit) {
      event.when(
        addMessage: (channelId, message) {
          final updatedMessages =
              Map<String, List<ChatMessage>>.from(state.pendingMessages);
          final messages =
              List<ChatMessage>.from(updatedMessages[channelId] ?? [])
                ..add(message);
          updatedMessages[channelId] = messages;
          emit(PendingMessagesState(pendingMessages: updatedMessages));
        },
        removeMessage: (channelId, messageId) {
          final updatedMessages =
              Map<String, List<ChatMessage>>.from(state.pendingMessages);
          updatedMessages[channelId] = updatedMessages[channelId]
                  ?.where((m) => m.id != messageId)
                  .toList() ??
              [];
          emit(PendingMessagesState(pendingMessages: updatedMessages));
        },
      );
    });
  }

  @override
  PendingMessagesState? fromJson(Map<String, dynamic> json) {
    try {
      final pendingMessages =
          (json['pendingMessages'] as Map<String, dynamic>).map(
        (channelId, messagesJson) {
          final messages = (messagesJson as List)
              .map((messageJson) => ChatMessage.fromJson(messageJson))
              .toList();
          return MapEntry(channelId, messages);
        },
      );
      return PendingMessagesState(pendingMessages: pendingMessages);
    } catch (_) {
      // Handle any exceptions
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PendingMessagesState state) {
    try {
      final pendingMessagesJson = state.pendingMessages.map(
        (channelId, messages) {
          final messagesJson =
              messages.map((message) => message.toJson()).toList();
          return MapEntry(channelId, messagesJson);
        },
      );
      return {'pendingMessages': pendingMessagesJson};
    } catch (_) {
      // Handle any exceptions
      return null;
    }
  }
}
