import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/screens/chat_list/page/chat_list_controller.dart';

@RoutePage()
class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: ChatListController());
  }
}
