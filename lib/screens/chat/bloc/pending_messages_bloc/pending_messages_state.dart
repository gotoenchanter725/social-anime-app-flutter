part of 'pending_messages_bloc.dart';

@freezed
class PendingMessagesState with _$PendingMessagesState {
  const factory PendingMessagesState({
    @Default({}) Map<String, List<ChatMessage>> pendingMessages,
  }) = _PendingMessagesState;
}
