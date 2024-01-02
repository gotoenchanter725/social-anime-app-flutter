import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/widgets/incoming_message.dart';
import 'package:senpai/screens/chat/widgets/outgoing_message.dart';
import 'package:senpai/screens/chat/widgets/system_message.dart';
import 'package:senpai/utils/constants.dart';
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
    messages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return ListView.builder(
      reverse: true,
      scrollDirection: Axis.vertical,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (BlocProvider.of<FetchMessagesBloc>(context).shouldFetchMore(
            index, $constants.api.maxMessagesToBeFetchedAtOneTime)) {
          BlocProvider.of<FetchMessagesBloc>(context).fetchNextPage();
        }
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
    if (_shouldDisplayDateSeparator(messages, index)) {
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
    if (index == messages.length - 1) {
      return true; // Always display for the first message in the list
    }
    final currentMessage = messages[index];
    final nextMessage = messages[index + 1];

    return !DateFormat('yyyy-MM-dd')
        .format(currentMessage.timestamp)
        .contains(DateFormat('yyyy-MM-dd').format(nextMessage.timestamp));
  }

  Widget _buildChatMessage(ChatMessage message) {
    if (message.senderId == currentUser.id) {
      return OutgoingMessage(message: message);
    } else {
      return IncomingMessage(message: message, user: recieverUser);
    }
  }
}
