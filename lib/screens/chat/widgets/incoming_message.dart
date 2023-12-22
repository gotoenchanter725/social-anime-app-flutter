import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:senpai/core/chat/blocs/update_message_bloc.dart';
import 'package:senpai/core/widgets/senpai_emoji.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/bloc/message_reaction_bloc/message_reaction_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class IncomingMessage extends StatelessWidget {
  final ChatMessage message;
  final User user;
  const IncomingMessage({super.key, required this.message, required this.user});

  @override
  Widget build(BuildContext context) {
    MessageReactionBloc messageReactionBloc =
        BlocProvider.of<MessageReactionBloc>(context);
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: BlocBuilder<MessageReactionBloc, MessageReactionState>(
        builder: (context, state) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onLongPress: () {
                  messageReactionBloc.showReactions(messageId: message.id);
                },
                onTap: () {
                  messageReactionBloc.hideReactions();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    UserAvatar(
                      imageUrl: user.profileUrl,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    _buildIncomingMessageContent(context)
                  ],
                ),
              ),
              Positioned(
                top: -20,
                left: 48,
                child: _buildEmojiReactionsSelector(context),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildIncomingMessageContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7),
              child: _buildMessage(context),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: _buildMessageReaction(context),
            )
          ],
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

  Widget _buildMessage(BuildContext context) {
    return _buildTextMessage(context);
  }

  Widget _buildEmojiReactionsSelector(BuildContext context) {
    final MessageReactionBloc messageReactionBloc =
        BlocProvider.of<MessageReactionBloc>(context);
    final UpdateMessageBloc updateMessageBloc =
        BlocProvider.of<UpdateMessageBloc>(context);
    bool showReactions = messageReactionBloc.state.showReactions &&
        messageReactionBloc.state.activeMessageId == message.id;
    double containerWidth = 0;
    if (showReactions) {
      containerWidth = getSize(context).width * 0.6;
    }
    final double emojiSize = getSize(context).width * 0.06;
    return BlocBuilder<MessageReactionBloc, MessageReactionState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          height: 40,
          width: containerWidth,
          decoration: BoxDecoration(
            color: $constants.palette.lightBlue,
            borderRadius: BorderRadius.circular($constants.corners.lg),
          ),
          child: ClipRect(
            child: OverflowBox(
              minWidth: 0,
              maxWidth: getSize(context).width * 0.6,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _emojis.map((item) {
                  return GestureDetector(
                    onTap: () {
                      logIt.info("Emoji tapped");
                      updateMessageBloc.updateMessage(
                        messageId: message.id,
                        reactionType: item.reactionType,
                        content: message.text,
                      );
                      messageReactionBloc.hideReactions();
                    },
                    child: SenpaiEmoji(
                      emojiName: item.emojiName,
                      size: emojiSize,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessageReaction(BuildContext context) {
    if (message.reaction == null) {
      return const SizedBox.shrink();
    }

    final Map<ReactionType, String> emojiNameMapping = {
      ReactionType.anger: $constants.emojis.anger,
      ReactionType.demon: $constants.emojis.demon,
      ReactionType.heart: $constants.emojis.heart,
      ReactionType.laughing: $constants.emojis.happy,
      ReactionType.puke: $constants.emojis.vomit,
      ReactionType.thumbsUp: $constants.emojis.like
    };

    return SenpaiEmoji(
      emojiName: emojiNameMapping[message.reaction]!,
      size: 20,
    );
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
          bottomLeft: Radius.zero,
          bottomRight: Radius.circular($constants.corners.lg),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: $constants.insets.sm, vertical: $constants.insets.xs),
        child: child,
      ),
    );
  }
}

class _EmojiItem {
  final String emojiName;
  final ReactionType reactionType;
  _EmojiItem({required this.emojiName, required this.reactionType});
}

final List<_EmojiItem> _emojis = [
  _EmojiItem(
      emojiName: $constants.emojis.happy, reactionType: ReactionType.laughing),
  _EmojiItem(
      emojiName: $constants.emojis.like, reactionType: ReactionType.thumbsUp),
  _EmojiItem(
      emojiName: $constants.emojis.heart, reactionType: ReactionType.heart),
  _EmojiItem(
      emojiName: $constants.emojis.vomit, reactionType: ReactionType.puke),
  _EmojiItem(
      emojiName: $constants.emojis.anger, reactionType: ReactionType.anger),
  _EmojiItem(
      emojiName: $constants.emojis.demon, reactionType: ReactionType.demon),
];
