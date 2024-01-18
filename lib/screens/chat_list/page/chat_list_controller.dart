import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_conversations_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/conversation_subscription_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/chat_list/widgets/chat_list_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class ChatListController extends StatelessWidget {
  const ChatListController({super.key});

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
        logIt.info("Conversation subscription connected");
        conversationSubscriptionBloc.subscribe();
      },
      data: (data) {
        logIt.info("Conversation subscription data: $data");
        fetchConversationsBloc.refetch();
      },
      error: (message) {
        showSnackBarError(context, message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConversationSubscriptionsBloc>(
          create: ((context) => ConversationSubscriptionsBloc()),
        ),
        BlocProvider<FetchConversationsBloc>(
          create: (context) => FetchConversationsBloc(),
        ),
      ],
      child: BlocListener<ConversationSubscriptionsBloc, ActionCableState>(
        listener: (context, state) {
          _handleConversationsSubscriptions(context, state);
        },
        child: BlocConsumer<FetchConversationsBloc, QueryState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (error, result) {
                showSnackBarError(context, TextConstants.serverError);
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
      ),
    );
  }
}
