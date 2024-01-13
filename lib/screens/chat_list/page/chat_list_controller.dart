import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_conversations_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/chat_list/widgets/chat_list_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';

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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FetchConversationsBloc(),
      child: BlocConsumer<FetchConversationsBloc, QueryState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (error, result) {
              BlocProvider.of<FetchConversationsBloc>(context)
                  .stopPeriodicFetch();
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
    );
  }
}
