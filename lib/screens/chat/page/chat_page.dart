import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/page/chat_controller.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final ChatRoomParams roomArgs;
  const ChatPage({super.key, required this.roomArgs});

  @override
  Widget build(BuildContext context) {
    return ChatController(roomArgs: roomArgs);
  }
}
