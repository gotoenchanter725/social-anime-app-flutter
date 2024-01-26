import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_conversations_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/conversation_subscription_bloc.dart';
import 'package:senpai/screens/chat_list/page/chat_list_controller.dart';

@RoutePage()
class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MultiBlocProvider(providers: [
      BlocProvider<ConversationSubscriptionsBloc>(
        create: ((context) => ConversationSubscriptionsBloc()),
      ),
      BlocProvider<FetchConversationsBloc>(
        create: (context) => FetchConversationsBloc(),
      ),
    ], child: const ChatListController()));
  }
}
