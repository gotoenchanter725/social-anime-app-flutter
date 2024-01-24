part of 'pending_messages_bloc.dart';

@freezed
class PendingMessagesState with _$PendingMessagesState {
  const factory PendingMessagesState({
    @Default({}) Map<String, Queue<ChatMessage>> messagesQueue,
  }) = _PendingMessagesState;
}

extension PendingMessagesStateX on PendingMessagesState {
  static PendingMessagesState fromMap(Map<String, dynamic> map) {
    var messagesQueue = <String, Queue<ChatMessage>>{};
    map.forEach((channelId, messagesJson) {
      var messages = Queue<ChatMessage>.from(
        (messagesJson as List).map((messageJson) =>
            ChatMessage.fromJson(messageJson as Map<String, dynamic>)),
      );
      messagesQueue[channelId] = messages;
    });
    return PendingMessagesState(messagesQueue: messagesQueue);
  }

  Map<String, dynamic> toMap() {
    return messagesQueue.map((channelId, messages) {
      return MapEntry(
          channelId, messages.map((message) => message.toJson()).toList());
    });
  }
}
