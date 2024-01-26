part of 'pending_messages_bloc.dart';

@freezed
class PendingMessagesEvent with _$PendingMessagesEvent {
  const factory PendingMessagesEvent.addMessage({
    required String channelId,
    required ChatMessage message,
  }) = AddMessage;

  const factory PendingMessagesEvent.removeMessage({
    required String channelId,
    required String messageId,
  }) = RemoveMessage;
}
