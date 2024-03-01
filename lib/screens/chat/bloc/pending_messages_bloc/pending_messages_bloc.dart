import 'dart:async';
import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/utils/methods/aliases.dart';

part 'pending_messages_event.dart';
part 'pending_messages_state.dart';
part 'pending_messages_bloc.freezed.dart';

class PendingMessagesBloc
    extends Bloc<PendingMessagesEvent, PendingMessagesState> {
  final messageQueueMap = <String, Queue<ChatMessage>>{};
  bool _isProcessingMessage = false;
  String? _currentProcessingMessageId;

  final SendMessageBloc sendMessageBloc;
  final FetchMessagesBloc fetchMessagesBloc;
  final ChatRoomParams roomArgs;

  Timer? _processingTimer;

  PendingMessagesBloc(
      {required this.sendMessageBloc,
      required this.roomArgs,
      required this.fetchMessagesBloc})
      : super(const PendingMessagesState()) {
    on<AddMessage>(_onAddMessage);
    on<RemoveMessage>(_onRemoveMessage);
    sendMessageBloc.stream.listen(_onSendMessageBlocStateChanged);
    _startProcessingTimer();
  }

  void _startProcessingTimer() {
    _processingTimer?.cancel();
    _processingTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!_isProcessingMessage &&
          messageQueueMap[roomArgs.roomId]!.isNotEmpty) {
        processNextMessage(roomArgs.roomId);
      }
    });
  }

  @override
  Future<void> close() {
    _processingTimer?.cancel(); // Stop the timer when bloc is closed
    return super.close();
  }

  Future<void> _onAddMessage(
      AddMessage event, Emitter<PendingMessagesState> emit) async {
    _addToQueue(event.channelId, event.message);
    emit(state.copyWith(messagesQueue: Map.from(messageQueueMap)));
  }

  Future<void> _onRemoveMessage(
      RemoveMessage event, Emitter<PendingMessagesState> emit) async {
    _removeFromQueue(event.channelId, event.messageId);
    emit(state.copyWith(messagesQueue: Map.from(messageQueueMap)));
    _isProcessingMessage = false;
  }

  void _addToQueue(String channelId, ChatMessage message) {
    final queue =
        messageQueueMap.putIfAbsent(channelId, () => Queue<ChatMessage>());
    Queue<ChatMessage> newQueue = Queue<ChatMessage>.from(queue);
    newQueue.add(message);
    messageQueueMap[channelId] = newQueue;
    logIt.info('Added message to queue with id: ${message.id}');
  }

  void _removeFromQueue(String channelId, String messageId) {
    final queue = messageQueueMap[channelId];
    if (queue != null) {
      logIt.info('Removing message from queue with id: $messageId');
      Queue<ChatMessage> newQueue = Queue<ChatMessage>.from(queue);
      newQueue.removeWhere((message) => message.id == messageId);
      messageQueueMap[channelId] = newQueue;
    }
  }

  void _onSendMessageBlocStateChanged(MutationState state) {
    state.maybeWhen(
      orElse: () {},
      succeeded: (data, result) => _handleMessageSentSuccess(),
      failed: (error, result) => _handleMessageSendFailure(),
    );
  }

  void _handleMessageSentSuccess() {
    if (_currentProcessingMessageId != null) {
      logIt.info(
          'Message sent successfully, removing from queue with id: $_currentProcessingMessageId');
      ChatMessage message = messageQueueMap[roomArgs.roomId]!
          .firstWhere((message) => message.id == _currentProcessingMessageId);
      // this adds the message to the sent list without causing a re-render
      fetchMessagesBloc.addMessage(message);

      // this event removes the message from the queue and causes a re-render
      add(RemoveMessage(
        channelId: roomArgs.roomId,
        messageId: _currentProcessingMessageId!,
      ));
      _currentProcessingMessageId = null;
    }
    _isProcessingMessage = false;
  }

  void _handleMessageSendFailure() {
    if (_currentProcessingMessageId != null) {
      logIt.error(
          'Message failed to send, removing from queue with id: $_currentProcessingMessageId');
      add(RemoveMessage(
        channelId: roomArgs.roomId,
        messageId: _currentProcessingMessageId!,
      ));
      _currentProcessingMessageId = null;
    }
    _isProcessingMessage = false;
  }

  Future<void> processNextMessage(String channelId) async {
    if (_isProcessingMessage) {
      logIt.info('Already processing a message, skipping...');
      return;
    }
    final queue = messageQueueMap[channelId];
    if (queue == null || queue.isEmpty) {
      logIt.info('Queue is empty, skipping...');
      return;
    }

    final message = queue.first;
    _isProcessingMessage = true;
    _currentProcessingMessageId = message.id;
    logIt.info('Processing message with id: ${message.id}');
    // Send message logic (call SendMessageBloc with message details)
    // This can be adapted based on how SendMessageBloc is implemented
    try {
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
          recommendedAnimeId: message.recommendation?.animeId,
          stickerId: message.sticker?.id,
        );
      }
    } catch (e) {
      logIt.error(e);
      _handleMessageSendFailure();
    }
  }
}
