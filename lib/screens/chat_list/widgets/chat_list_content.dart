import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
// import 'package:senpai/data/mock_conversation_list_data.dart';
// import 'package:senpai/data/mock_match_data.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/screens/chat_list/widgets/conversation_list.dart';
import 'package:senpai/screens/chat_list/widgets/match_list.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatListContent extends StatelessWidget {
  final CategorizedConversations conversation;

  const ChatListContent({super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: $constants.insets.sm,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                PathConstants.launcher,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              ),
              SvgPicture.asset(
                PathConstants.crownIcon,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
        SizedBox(
          height: $constants.insets.md,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: SenpaiIconInput(
            iconPath: PathConstants.searchIcon,
            hintText: TextConstants.searchHintText,
            onChange: (text) {
              print(text);
            },
          ),
        ),
        SizedBox(
          height: $constants.insets.md,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Text(
            TextConstants.matchesTitle,
            textAlign: TextAlign.left,
            style: getTextTheme(context)
                .headlineSmall!
                .copyWith(color: $constants.palette.white),
          ),
        ),
        SizedBox(
          height: $constants.insets.sm,
        ),
        Padding(
          padding: EdgeInsets.only(left: $constants.insets.lg),
          child: MatchList(users: conversation.matches),
        ),
        SizedBox(
          height: $constants.insets.lg,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Text(
            TextConstants.messagesTitle,
            textAlign: TextAlign.left,
            style: getTextTheme(context)
                .headlineSmall!
                .copyWith(color: $constants.palette.white),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
            child: ConversationList(chatList: conversation.activeConversations),
          ),
        ),
      ],
    );
  }
}
