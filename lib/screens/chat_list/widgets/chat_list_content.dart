import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
// import 'package:senpai/data/mock_conversation_list_data.dart';
// import 'package:senpai/data/mock_match_data.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/chat_list/widgets/conversation_list.dart';
import 'package:senpai/screens/chat_list/widgets/empty_conversations.dart';
import 'package:senpai/screens/chat_list/widgets/match_list.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatListContent extends StatelessWidget {
  final CategorizedConversations conversation;

  const ChatListContent({super.key, required this.conversation});

  Widget _buildHeader() {
    return Padding(
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
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: SenpaiIconInput(
        iconPath: PathConstants.searchIcon,
        hintText: R.strings.searchHintText,
        onChange: (text) {
          print(text);
        },
        onTapInput: () {
          context.router.push(SearchChatListRoute(
            categorizedConversations: conversation,
          ));
        },
      ),
    );
  }

  _buildTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: getTextTheme(context)
            .headlineSmall!
            .copyWith(color: $constants.palette.white),
      ),
    );
  }

  _buildMatchList(BuildContext context) {
    if (conversation.matches.isEmpty) {
      return [];
    }
    return [
      _buildTitle(context, R.strings.matchesTitle),
      SizedBox(
        height: $constants.insets.sm,
      ),
      Padding(
        padding: EdgeInsets.only(left: $constants.insets.lg),
        child: MatchList(matches: conversation.matches),
      )
    ];
  }

  _buildConversationList(BuildContext context) {
    if (conversation.activeConversations.isEmpty) {
      return [];
    }
    return [
      SizedBox(
        height: $constants.insets.lg,
      ),
      _buildTitle(context, R.strings.messagesTitle),
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            left: $constants.insets.lg,
            right: $constants.insets.lg,
            top: $constants.insets.sm,
          ),
          child: ConversationList(chatList: conversation.activeConversations),
        ),
      )
    ];
  }

  List<Widget> _buildConversationsContent(BuildContext context) {
    return [
      _buildSearchBar(context),
      SizedBox(
        height: $constants.insets.md,
      ),
      ..._buildMatchList(context),
      ..._buildConversationList(context),
    ];
  }

  List<Widget> _buildEmptyConversationContent(BuildContext context) {
    return [
      EmptyConversations(
        avatorImagePath: PathConstants.emptyConversationsImage,
        title: R.strings.emptyConversationsPromptText,
        subtitle: R.strings.emptyConversationsText,
      )
    ];
  }

  List<Widget> _buildCoversationContent(BuildContext context) {
    if (conversation.activeConversations.isEmpty &&
        conversation.matches.isEmpty) {
      return _buildEmptyConversationContent(context);
    } else {
      return _buildConversationsContent(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: $constants.insets.sm,
        ),
        _buildHeader(),
        SizedBox(
          height: $constants.insets.md,
        ),
        ..._buildCoversationContent(context),
      ],
    );
  }
}
