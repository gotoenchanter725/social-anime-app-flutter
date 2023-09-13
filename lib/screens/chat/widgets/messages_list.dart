import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/mock_chat_messages_data.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MessagesList extends StatelessWidget {
  MessagesList({super.key});

  final List<ChatMessage> messages = mockConversation;

  final String currentUserId = 'user1';

  final String recieverUserId = 'user2';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: messages.map((message) {
          if (message.senderId == currentUserId) {
            return _buildCurrentUserMessage(context, message);
          }
          return _buildRecieverMessage(context, message);
        }).toList(),
      ),
    );
  }

  Widget _buildCurrentUserMessage(BuildContext context, ChatMessage message) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
          formatDateTime(message.timestamp),
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
          formatDateTime(message.timestamp),
          style: getTextTheme(context)
              .labelMedium!
              .copyWith(color: $constants.palette.grey),
        )
      ],
    );
  }
}
