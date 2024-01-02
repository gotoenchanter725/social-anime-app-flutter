import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/widgets/incoming_message.dart';
import 'package:senpai/screens/chat/widgets/outgoing_message.dart';
import 'package:senpai/screens/chat/widgets/system_message.dart';
import 'package:senpai/utils/methods/utils.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({
    super.key,
    required this.messages,
    required this.currentUser,
    required this.recieverUser,
  });

  final List<ChatMessage> messages;

  final User currentUser;

  final User recieverUser;

  @override
  Widget build(BuildContext context) {
    messages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return _buildMessageItem(context, message, index);
      },
    );
  }

  Widget _buildMessageItem(
    BuildContext context,
    ChatMessage message,
    int index,
  ) {
    DateTime messageDate;

    // Check for system message (date change)
    if (index == 0 || _shouldDisplayDateSeparator(messages, index)) {
      messageDate = message.timestamp;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SystemMessage(
            message: ChatMessage(
              id: "SYSTEM",
              senderId: "SENPAI_SYSTEM_MESSAGE",
              text: formatSystemDateTimeDisplay(messageDate),
              timestamp: messageDate,
            ),
          ),
          _buildChatMessage(message),
        ],
      );
    } else {
      return _buildChatMessage(message);
    }
  }

  bool _shouldDisplayDateSeparator(List<ChatMessage> messages, int index) {
    if (index == 0) return false;
    final previousMessage = messages[index - 1];
    final currentMessage = messages[index];
    return !DateFormat('yyyy-MM-dd')
        .format(currentMessage.timestamp)
        .contains(DateFormat('yyyy-MM-dd').format(previousMessage.timestamp));
  }

  Widget _buildChatMessage(ChatMessage message) {
    if (message.senderId == currentUser.id) {
      return OutgoingMessage(message: message);
    } else {
      return IncomingMessage(message: message, user: recieverUser);
    }
  }
}
