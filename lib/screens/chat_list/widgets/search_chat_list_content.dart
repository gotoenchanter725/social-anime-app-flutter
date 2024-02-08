import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/chat_list/blocs/conversations_filter/conversations_filter_bloc.dart';
import 'package:senpai/screens/chat_list/widgets/conversation_list.dart';
import 'package:senpai/screens/chat_list/widgets/empty_conversations.dart';
import 'package:senpai/screens/chat_list/widgets/match_list.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SearchChatListContent extends StatelessWidget {
  const SearchChatListContent({super.key});

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

  Widget _buildCancelButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.router.pop();
      },
      child: Text(
        R.strings.cancelText,
        style: getTextTheme(context)
            .labelMedium!
            .copyWith(color: $constants.palette.white, fontSize: 14),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    final bloc = BlocProvider.of<ConversationsFilterBloc>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc.setupSearch();
    });
    return BlocBuilder<ConversationsFilterBloc, ConversationsFilterState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Row(
            children: [
              SizedBox(
                width: getSize(context).width * 0.637,
                child: SenpaiIconInput(
                  iconPath: PathConstants.searchIcon,
                  hintText: R.strings.searchHintText,
                  controller: bloc.searchController,
                  focusNode: bloc.searchFocusNode,
                  onChange: (text) {
                    bloc.add(
                      ConversationsFilterEvent.filterChanged(text),
                    );
                  },
                  onTapSuffix: () {
                    bloc.add(
                      const ConversationsFilterEvent.filterChanged(''),
                    );
                  },
                ),
              ),
              SizedBox(
                width: $constants.insets.sm,
              ),
              _buildCancelButton(context),
            ],
          ),
        );
      },
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

  List<Widget> _buildMatchList(BuildContext context) {
    final bloc = BlocProvider.of<ConversationsFilterBloc>(context);
    final conversation = bloc.state.filteredConversations;
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

  List<Widget> _buildConversationList(BuildContext context) {
    final bloc = BlocProvider.of<ConversationsFilterBloc>(context);
    final conversation = bloc.state.filteredConversations;

    if (conversation.activeConversations.isEmpty) {
      return [];
    }
    return [
      SizedBox(
        height: $constants.insets.lg,
      ),
      _buildTitle(context, R.strings.messagesTitle),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
        child: ConversationList(chatList: conversation.activeConversations),
      )
    ];
  }

  List<Widget> _buildEmptyConversations(BuildContext context) {
    return [
      EmptyConversations(
        avatorImagePath: PathConstants.emptySearchConversationImage,
        title: R.strings.emptyConversationSearchPromptText,
        subtitle: R.strings.emptyConversationSearchText,
      )
    ];
  }

  List<Widget> _buildConversations(BuildContext context) {
    final bloc = BlocProvider.of<ConversationsFilterBloc>(context);
    final filter = bloc.state.filter;
    if (filter.isEmpty) {
      return [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Text(
            R.strings.emptySearchConversationsHintText,
            textAlign: TextAlign.left,
            style: getTextTheme(context)
                .labelMedium!
                .copyWith(color: $constants.palette.grey),
          ),
        )
      ];
    }
    final conversation = bloc.state.filteredConversations;
    if (conversation.activeConversations.isEmpty &&
        conversation.matches.isEmpty) {
      return _buildEmptyConversations(context);
    }
    return [
      ..._buildMatchList(context),
      ..._buildConversationList(context),
    ];
  }

  List<Widget> _buildCoversationContent(BuildContext context) {
    return [
      _buildSearchBar(context),
      SizedBox(
        height: $constants.insets.md,
      ),
      BlocBuilder<ConversationsFilterBloc, ConversationsFilterState>(
          builder: (context, state) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildConversations(context),
          ),
        );
      })
    ];
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
