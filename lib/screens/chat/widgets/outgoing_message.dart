import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OutgoingMessage extends StatelessWidget {
  final ChatMessage message;
  const OutgoingMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8),
                child: _buildMessageContent(context),
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
          ),
        ],
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    return _buildTextMessage(context);
  }

  Widget _buildTextMessage(BuildContext context) {
    return _buildChatBubble(
      context,
      _buildTextWidget(context),
    );
  }

  Widget _buildTextWidget(BuildContext context) {
    return Text(
      message.text,
      style: getTextTheme(context).bodySmall!.copyWith(
            color: $constants.palette.white,
            letterSpacing: 0,
          ),
      softWrap: true,
    );
  }

  Widget _buildChatBubble(BuildContext context, Widget child) {
    return Container(
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
          vertical: $constants.insets.xs,
        ),
        child: child,
      ),
    );
  }
}
