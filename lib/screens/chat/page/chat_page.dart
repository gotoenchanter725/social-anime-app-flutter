import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_stickers_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/room_subscription_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/chat/blocs/update_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/routes/app_router.dart';
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

  _buildFetchMessagesListeners(BuildContext context, QueryState state) {
    final RoomSubscriptionsBloc roomSubscriptionsBloc =
        BlocProvider.of<RoomSubscriptionsBloc>(context);
    final pendingMessagesBloc = context.read<PendingMessagesBloc>();
    state.maybeWhen(
      loading: (result) => const SenpaiLoading(),
      loaded: (data, result) {
        if (result.data == null) {
          showSnackBarError(context, TextConstants.serverError);
          logIt.error("A successful empty response just got recorded");
        }
        if (pendingMessagesBloc.hasPendingMessages(roomArgs.roomId)) {
          _sendEarliestPendingMessage(context);
        }
      },
      error: (error, result) {
        showSnackBarError(context, TextConstants.serverError);
      },
      refetch: (data, result) {
        roomSubscriptionsBloc.enterRoom(roomArgs.roomId);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchMessagesBloc>(
          create: (_) => FetchMessagesBloc(roomArgs.roomId)
            ..fetchMessages(roomArgs.roomId),
        ),
        BlocProvider<SendMessageBloc>(create: (_) => SendMessageBloc()),
        BlocProvider<TextEditingBloc>(create: (_) => TextEditingBloc()),
        BlocProvider<PendingMessagesBloc>(create: (_) => PendingMessagesBloc()),
        BlocProvider<MessageReactionBloc>(create: (_) => MessageReactionBloc()),
        BlocProvider<BottomSheetBloc>(create: (_) => BottomSheetBloc()),
        BlocProvider<RoomSubscriptionsBloc>(
            create: (_) => RoomSubscriptionsBloc(roomId: roomArgs.roomId)),
        BlocProvider<UpdateMessageBloc>(create: (_) => UpdateMessageBloc()),
        BlocProvider<FetchStickersBloc>(create: (_) => FetchStickersBloc()),
        BlocProvider<FetchUserBloc>(
            create: (_) => FetchUserBloc()
              ..fetchUser(userId: int.parse(roomArgs.currentUser.id))),
        BlocProvider<FetchAnimeBloc>(create: (_) => getIt<FetchAnimeBloc>()),
      ],
      child: BlocListener<UpdateMessageBloc, MutationState>(
        listener: (context, state) {
          _handleUpdateMessageState(context, state);
        },
        child: BlocListener<RoomSubscriptionsBloc, ActionCableState>(
          listener: (context, state) {
            _handleRoomSubscriptions(context, state);
          },
          child: BlocListener<SendMessageBloc, MutationState>(
            listener: (context, state) {
              _handleSendMessageState(context, state);
            },
            child: BlocListener<PendingMessagesBloc, PendingMessagesState>(
              listener: (context, state) {
                _handlePendingMessages(context, state);
              },
              child: BlocListener<FetchMessagesBloc, QueryState>(
                listener: (context, state) {
                  _buildFetchMessagesListeners(context, state);
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
                      ],
                    ),
                  ),
                ),
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
        ChatMessage? earliestPendingMessage = pendingMessagesBloc.state
            .getEarliestPendingMessage(roomArgs.roomId);
        if (earliestPendingMessage != null) {
          earliestPendingMessage.status = MessageStatus.sent;
          fetchMessagesBloc.addMessage(earliestPendingMessage);
          pendingMessagesBloc.add(PendingMessagesEvent.removeMessage(
            channelId: roomArgs.roomId,
            messageId: earliestPendingMessage.id,
          ));
        }
      },
      failed: (error, result) {
        logIt.error(error);
        showSnackBarError(context, TextConstants.failedToSendMessageText);
        ChatMessage? earliestPendingMessage = pendingMessagesBloc.state
            .getEarliestPendingMessage(roomArgs.roomId);
        if (earliestPendingMessage != null) {
          pendingMessagesBloc.add(PendingMessagesEvent.removeMessage(
            channelId: roomArgs.roomId,
            messageId: earliestPendingMessage.id,
          ));
        }
      },
    );
  }

  void _handleUpdateMessageState(BuildContext context, MutationState state) {
    final fetchMessagesBloc = BlocProvider.of<FetchMessagesBloc>(context);

    state.when(
      initial: () {}, // Handle initial state
      loading: () {}, // Handle loading state
      succeeded: (_, data) {
        logIt.info("Message updated successfully");
        fetchMessagesBloc.refetch();
      },
      failed: (error, result) {
        logIt.error(error);
        showSnackBarError(context, TextConstants.failedToUpdateMessageText);
      },
    );
  }

  void _handlePendingMessages(
      BuildContext context, PendingMessagesState pendingState) {
    _sendEarliestPendingMessage(context);
  }

  void _sendEarliestPendingMessage(BuildContext context) {
    final pendingMessagesBloc = BlocProvider.of<PendingMessagesBloc>(context);
    final earliestPendingMessage =
        pendingMessagesBloc.state.getEarliestPendingMessage(roomArgs.roomId);
    if (earliestPendingMessage == null) {
      return;
    }
    final sendMessageBloc = BlocProvider.of<SendMessageBloc>(context);

    if (earliestPendingMessage.attachment != null) {
      sendMessageBloc.sendAttachment(
        conversationId: roomArgs.roomId,
        senderId: roomArgs.currentUser.id,
        attachmentUrl: earliestPendingMessage.attachment!,
      );
      return;
    }

    sendMessageBloc.sendMessage(
      message: earliestPendingMessage.text,
      conversationId: roomArgs.roomId,
      senderId: roomArgs.currentUser.id,
      stickerId: earliestPendingMessage.sticker?.id,
      recommendedAnimeId: earliestPendingMessage.recommendation?.animeId,
    );
  }

  void _handleRoomSubscriptions(BuildContext context, ActionCableState state) {
    final roomSubscriptionsBloc =
        BlocProvider.of<RoomSubscriptionsBloc>(context);
    final FetchMessagesBloc fetchMessagesBloc =
        BlocProvider.of<FetchMessagesBloc>(context);
    state.maybeWhen(
      orElse: () {},
      subscribed: () {
        roomSubscriptionsBloc.enterRoom(roomArgs.roomId);
      },
      connected: () {
        roomSubscriptionsBloc.subscribeToRoom();
      },
      data: (data) {
        fetchMessagesBloc.refetch();
      },
      error: (message) {
        showSnackBarError(context, message);
        if (message == TextConstants.actionCableAuthError) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.router.replaceAll([const EntryRoute()]);
          });
        }
      },
    );
  }
}
