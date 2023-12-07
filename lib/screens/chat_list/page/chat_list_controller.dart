import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_conversations_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/chat_list/widgets/chat_list_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';

class ChatListController extends StatefulWidget {
  const ChatListController({super.key});

  @override
  State<ChatListController> createState() => _ChatListControllerState();
}

class _ChatListControllerState extends State<ChatListController> {
  final _fetchConversationsBloc = FetchConversationsBloc();

  @override
  void initState() {
    super.initState();
    _fetchConversationsBloc.fetchConversation();
    _fetchConversationsBloc.startPeriodicFetch();
  }

  @override
  void dispose() {
    _fetchConversationsBloc.stopPeriodicFetch();
    _fetchConversationsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchConversationsBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            if (_fetchConversationsBloc.hasData) {
              final conversations = _fetchConversationsBloc.conversations;
              return ChatListContent(
                conversation: conversations,
              );
            }
            return const SizedBox.shrink();
          },
          loading: (result) {
            return const SenpaiLoading();
          },
          error: (error, result) {
            showSnackBarError(context, TextConstants.serverError);
            return const SizedBox.shrink();
          },
          loaded: (data, result) {
            if (result.data == null) {
              showSnackBarError(
                  context, TextConstants.conversationsDataErrorText);
              return const SizedBox.shrink();
            } else {
              final conversations = _fetchConversationsBloc.conversations;
              return ChatListContent(
                conversation: conversations,
              );
            }
          },
        );
      },
      bloc: _fetchConversationsBloc,
    );
  }
}
