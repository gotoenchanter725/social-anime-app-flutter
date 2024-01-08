part of 'pending_messages_bloc.dart';

@freezed
class PendingMessagesState with _$PendingMessagesState {
  const factory PendingMessagesState({
    @Default({}) Map<String, List<ChatMessage>> pendingMessages,
  }) = _PendingMessagesState;
}

extension PendingMessagesStateExtension on PendingMessagesState {
  ChatMessage? getEarliestPendingMessage(String channelId) {
    final messages = pendingMessages[channelId];
    return messages?.isNotEmpty == true ? messages?.first : null;
  }
}
