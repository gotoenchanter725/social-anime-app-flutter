import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';

part 'pending_messages_event.dart';
part 'pending_messages_state.dart';
part 'pending_messages_bloc.freezed.dart';

class PendingMessagesBloc
    extends HydratedBloc<PendingMessagesEvent, PendingMessagesState> {
  final _messageQueue = <String, Queue<ChatMessage>>{};
  bool _isProcessingMessage = false;
  String? _currentProcessingMessageId;

  final SendMessageBloc sendMessageBloc;
  final ChatRoomParams roomArgs;

  PendingMessagesBloc({required this.sendMessageBloc, required this.roomArgs})
      : super(const PendingMessagesState()) {
    on<AddMessage>(_onAddMessage);
    on<RemoveMessage>(_onRemoveMessage);
    sendMessageBloc.stream.listen(_onSendMessageBlocStateChanged);
  }

  Future<void> _onAddMessage(
      AddMessage event, Emitter<PendingMessagesState> emit) async {
    _addToQueue(event.channelId, event.message);
    emit(state.copyWith(messagesQueue: Map.from(_messageQueue)));
    if (!_isProcessingMessage) {
      processNextMessage(event.channelId);
    }
  }

  Future<void> _onRemoveMessage(
      RemoveMessage event, Emitter<PendingMessagesState> emit) async {
    _removeFromQueue(event.channelId, event.messageId);
    emit(state.copyWith(messagesQueue: Map.from(_messageQueue)));
    _isProcessingMessage = false;
    processNextMessage(event.channelId);
  }

  void _addToQueue(String channelId, ChatMessage message) {
    final queue =
        _messageQueue.putIfAbsent(channelId, () => Queue<ChatMessage>());
    queue.add(message);
  }

  void _removeFromQueue(String channelId, String messageId) {
    final queue = _messageQueue[channelId];
    if (queue != null) {
      queue.removeWhere((message) => message.id == messageId);
    }
  }

  void _onSendMessageBlocStateChanged(MutationState state) {
    state.maybeWhen(
      orElse: () {},
      succeeded: (data, result) {
        if (_currentProcessingMessageId != null) {
          add(RemoveMessage(
            channelId: roomArgs
                .roomId, // Assuming 'channelId' is part of the data returned upon success
            messageId: _currentProcessingMessageId!,
          ));
          _currentProcessingMessageId = null;
        }
      },
      failed: (error, result) {
        if (_currentProcessingMessageId != null) {
          add(RemoveMessage(
            channelId: roomArgs
                .roomId, // Similarly, assuming 'channelId' is part of the error data
            messageId: _currentProcessingMessageId!,
          ));
          _currentProcessingMessageId = null;
        }
      },
    );
  }

  Future<void> processNextMessage(String channelId) async {
    if (_isProcessingMessage) {
      return;
    }
    final queue = _messageQueue[channelId];
    if (queue == null || queue.isEmpty) {
      return;
    }

    _isProcessingMessage = true;
    final message = queue.first;
    // Send message logic (call SendMessageBloc with message details)
    // This can be adapted based on how SendMessageBloc is implemented
    if (message.attachment != null) {
      sendMessageBloc.sendAttachment(
        conversationId: roomArgs.roomId,
        senderId: roomArgs.currentUser.id,
        attachmentUrl: message.attachment!,
      );
    } else {
      sendMessageBloc.sendMessage(
        message: message.text,
        conversationId: roomArgs.roomId,
        senderId: roomArgs.currentUser.id,
      );
    }
  }

  @override
  PendingMessagesState? fromJson(Map<String, dynamic> json) {
    try {
      return PendingMessagesStateX.fromMap(json);
    } catch (_) {
      return null; // Return null to indicate failure to convert.
    }
  }

  @override
  Map<String, dynamic>? toJson(PendingMessagesState state) {
    try {
      return state.toMap();
    } catch (_) {
      return null; // Return null to indicate failure to convert.
    }
  }
}
