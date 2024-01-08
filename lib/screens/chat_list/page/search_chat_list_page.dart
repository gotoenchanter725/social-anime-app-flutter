import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/screens/chat_list/blocs/conversations_filter/conversations_filter_bloc.dart';
import 'package:senpai/screens/chat_list/widgets/search_chat_list_content.dart';

@RoutePage()
class SearchChatListPage extends StatelessWidget {
  final CategorizedConversations categorizedConversations;

  const SearchChatListPage({
    super.key,
    required this.categorizedConversations,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<ConversationsFilterBloc>(
          create: (_) => ConversationsFilterBloc(categorizedConversations),
          child: const SearchChatListContent(),
        ),
      ),
    );
  }
}
