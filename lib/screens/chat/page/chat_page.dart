import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/bloc/message_reaction_bloc/message_reaction_bloc.dart';
import 'package:senpai/screens/chat/bloc/pending_messages_bloc/pending_messages_bloc.dart';
import 'package:senpai/screens/chat/bloc/text_editing_bloc/text_editing_bloc.dart';
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
        ),
        BlocProvider<SendMessageBloc>(create: (_) => SendMessageBloc()),
        BlocProvider<TextEditingBloc>(create: (_) => TextEditingBloc()),
        BlocProvider<PendingMessagesBloc>(create: (_) => PendingMessagesBloc()),
        BlocProvider<MessageReactionBloc>(create: (_) => MessageReactionBloc()),
        BlocProvider<BottomSheetBloc>(create: (_) => BottomSheetBloc()),
      ],
      child: BlocListener<SendMessageBloc, MutationState>(
        listener: (context, state) {
          _handleSendMessageState(context, state);
        },
        child: BlocListener<PendingMessagesBloc, PendingMessagesState>(
          listener: (context, state) {
            _handlePendingMessages(context, state);
          },
          child: Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  ChatContent(
                    receipientUser: roomArgs.reciepient,
                    currentUser: roomArgs.currentUser,
                    roomCreationDate: roomArgs.createdDate,
                    roomId: roomArgs.roomId,
                  ),
                  _buildFetchMessagesListeners(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSendMessageState(BuildContext context, MutationState state) {
    final pendingMessagesBloc = BlocProvider.of<PendingMessagesBloc>(context);
    final fetchMessagesBloc = BlocProvider.of<FetchMessagesBloc>(context);

    state.when(
      initial: () {}, // Handle initial state
      loading: () {}, // Handle loading state
      succeeded: (_, data) {
        logIt.info("Message sent successfully");
        final earliestPendingMessage = pendingMessagesBloc.state
            .getEarliestPendingMessage(roomArgs.roomId);
        if (earliestPendingMessage != null) {
          pendingMessagesBloc.add(PendingMessagesEvent.removeMessage(
            channelId: roomArgs.roomId,
            messageId: earliestPendingMessage.id,
          ));
          fetchMessagesBloc.refetch();
        }
      },
      failed: (error, result) {
        logIt.error(error);
        showSnackBarError(context, TextConstants.failedToSendMessageText);
      },
    );
  }

  void _handlePendingMessages(
      BuildContext context, PendingMessagesState pendingState) {
    final sendMessageBloc = BlocProvider.of<SendMessageBloc>(context);
    final earliestPendingMessage =
        pendingState.getEarliestPendingMessage(roomArgs.roomId);

    if (earliestPendingMessage != null) {
      sendMessageBloc.sendMessage(
        message: earliestPendingMessage.text,
        conversationId: roomArgs.roomId,
        senderId: roomArgs.currentUser.id,
      );
    }
  }
}
