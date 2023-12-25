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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      reverse: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: _buildMessages(context),
      ),
    );
  }

  List<Widget> _buildMessages(BuildContext context) {
    final List<Widget> messageWidgets = [];

    DateTime? messageDate;

    for (final message in messages) {
      // Check if a system message should be displayed for the current date
      if (messageDate == null ||
          !DateFormat('yyyy-MM-dd')
              .format(message.timestamp)
              .contains(DateFormat('yyyy-MM-dd').format(messageDate))) {
        messageDate = message.timestamp;
        messageWidgets.add(SystemMessage(
            message: ChatMessage(
                id: "SYSTEM",
                senderId: "SENPAI_SYSTEM_MESSAGE",
                text: formatSystemDateTimeDisplay(message.timestamp),
                timestamp: message.timestamp)));
      }

      if (message.senderId == currentUser.id) {
        messageWidgets.add(OutgoingMessage(message: message));
      } else {
        messageWidgets
            .add(IncomingMessage(message: message, user: recieverUser));
      }
    }

    return messageWidgets;
  }
}
