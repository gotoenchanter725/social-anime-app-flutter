import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
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

      if (message.senderId == currentUser.id) {
        messageWidgets.add(_buildCurrentUserMessage(context, message));
      } else {
        messageWidgets.add(_buildRecieverMessage(context, message));
      }
    }

    return messageWidgets;
  }

  Widget _buildRecieverMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAvatar(
            imageUrl: recieverUser.profileUrl,
            size: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          _buildRecieverMessageContent(context, message)
        ],
      ),
    );
  }

  Widget _buildCurrentUserMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildCurrentUserMessageContent(context, message),
        ],
      ),
    );
  }

  Widget _buildRecieverMessageContent(
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

  Widget _buildCurrentUserMessageContent(
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
