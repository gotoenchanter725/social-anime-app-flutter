import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/widgets/chat_content.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final ChatRoomParams roomArgs;
  const ChatPage({super.key, required this.roomArgs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChatContent(
          roomArgs: roomArgs,
        ),
      ),
    );
  }
}
