import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/widgets/chat_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final ChatRoomParams roomArgs;
  const ChatPage({super.key, required this.roomArgs});

  Widget _buildFetchMessagesListeners() {
    return BlocBuilder<FetchMessagesBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                showSnackBarError(context, TextConstants.serverError);
                logIt.error("A successful empty response just got recorded");
                return const SizedBox.shrink();
              }
              return const SizedBox.shrink();
            },
            error: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchMessagesBloc>(
          create: (_) => FetchMessagesBloc(conversationId: roomArgs.roomId)
            ..fetchMessages(roomArgs.roomId),
        )
      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              ChatContent(
                receipientUser: roomArgs.reciepient,
                currentUser: roomArgs.currentUser,
                roomCreationDate: roomArgs.createdDate,
              ),
              _buildFetchMessagesListeners(),
            ],
          ),
        ),
      ),
    );
  }
}
