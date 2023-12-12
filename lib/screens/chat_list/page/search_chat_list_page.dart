import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';

@RoutePage()
class SearchChatListPage extends StatelessWidget {
  final CategorizedConversations categorizedConversations;

  const SearchChatListPage({
    super.key,
    required this.categorizedConversations,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
