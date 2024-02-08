import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_conversations_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/conversation_subscription_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/chat_list/widgets/chat_list_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class ChatListController extends StatefulWidget {
  const ChatListController({super.key});
  @override
  State<ChatListController> createState() => _ChatListControllerState();
}

class _ChatListControllerState extends State<ChatListController>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      logIt.debug("Chat List page resumed");
      final fetchConversationsBloc =
          BlocProvider.of<FetchConversationsBloc>(context, listen: false);
      fetchConversationsBloc.refetch();
      final conversationSubscriptionBloc =
          BlocProvider.of<ConversationSubscriptionsBloc>(context,
              listen: false);
      conversationSubscriptionBloc.reconnect();
    }
  }

  Widget _buildChatListContent(BuildContext context) {
    final conversationsBloc = BlocProvider.of<FetchConversationsBloc>(context);
    if (conversationsBloc.hasData) {
      return ChatListContent(
        conversation: conversationsBloc.conversations,
      );
    }
    return const SizedBox.shrink();
  }

  void _handleConversationsSubscriptions(
      BuildContext context, ActionCableState state) {
    final FetchConversationsBloc fetchConversationsBloc =
        BlocProvider.of<FetchConversationsBloc>(context);
    final conversationSubscriptionBloc =
        BlocProvider.of<ConversationSubscriptionsBloc>(context);
    state.maybeWhen(
      orElse: () {},
      connected: () {
        conversationSubscriptionBloc.subscribe();
      },
      data: (data) {
        fetchConversationsBloc.refetch();
      },
      error: (message) {
        showSnackBarError(context, message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConversationSubscriptionsBloc, ActionCableState>(
      listener: (context, state) {
        _handleConversationsSubscriptions(context, state);
      },
      child: BlocConsumer<FetchConversationsBloc, QueryState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (error, result) {
              showSnackBarError(context, R.strings.serverError);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: (result) => const SenpaiLoading(),
            orElse: () => _buildChatListContent(context),
          );
        },
      ),
    );
  }
}
