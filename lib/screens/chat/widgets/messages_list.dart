import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({
    super.key,
    required this.messages,
    required this.currentUserId,
    required this.recieverUserId,
  });

  final List<ChatMessage> messages;

  final String currentUserId;

  final String recieverUserId;

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
        messageWidgets.add(_buildSystemMessage(
            context,
            ChatMessage(
                id: "SYSTEM",
                senderId: "SENPAI_SYSTEM_MESSAGE",
                text: formatSystemDateTimeDisplay(message.timestamp),
                timestamp: message.timestamp)));
      }

      if (message.senderId == currentUserId) {
        messageWidgets.add(_buildCurrentUserMessage(context, message));
      } else {
        messageWidgets.add(_buildRecieverMessage(context, message));
      }
    }

    return messageWidgets;
  }

  Widget _buildCurrentUserMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const UserAvatar(
            imageUrl:
                "https://images.pexels.com/photos/6426224/pexels-photo-6426224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            size: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          _buildCurrentUserMessageContent(context, message)
        ],
      ),
    );
  }

  Widget _buildRecieverMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildRecieverMessageContent(context, message),
          const SizedBox(
            width: 8,
          ),
          const UserAvatar(
            imageUrl:
                "https://images.pexels.com/photos/5226193/pexels-photo-5226193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            size: 40,
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentUserMessageContent(
      BuildContext context, ChatMessage message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: $constants.palette.lightBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular($constants.corners.lg),
              topRight: Radius.circular($constants.corners.lg),
              bottomLeft: Radius.zero,
              bottomRight: Radius.circular($constants.corners.lg),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: $constants.insets.sm,
                vertical: $constants.insets.xs),
            child: Text(
              message.text,
              style: getTextTheme(context).bodySmall!.copyWith(
                    color: $constants.palette.white,
                    letterSpacing: 0,
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          DateFormat('hh:mm').format(message.timestamp),
          style: getTextTheme(context)
              .labelMedium!
              .copyWith(color: $constants.palette.grey),
        )
      ],
    );
  }

  Widget _buildRecieverMessageContent(
      BuildContext context, ChatMessage message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: $constants.palette.lightBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular($constants.corners.lg),
              topRight: Radius.circular($constants.corners.lg),
              bottomRight: Radius.zero,
              bottomLeft: Radius.circular($constants.corners.lg),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: $constants.insets.sm,
                vertical: $constants.insets.xs),
            child: Text(
              message.text,
              style: getTextTheme(context).bodySmall!.copyWith(
                    color: $constants.palette.white,
                    letterSpacing: 0,
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          DateFormat('hh:mm').format(message.timestamp),
          style: getTextTheme(context)
              .labelMedium!
              .copyWith(color: $constants.palette.grey),
        )
      ],
    );
  }

  Widget _buildSystemMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: $constants.palette.lightBlue,
              borderRadius: BorderRadius.circular($constants.corners.lg),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: $constants.insets.sm,
                  vertical: $constants.insets.xs),
              child: Text(
                message.text,
                style: getTextTheme(context).labelMedium!.copyWith(
                      color: $constants.palette.grey,
                      letterSpacing: 0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
