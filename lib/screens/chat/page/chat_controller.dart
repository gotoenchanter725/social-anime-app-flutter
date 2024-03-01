import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/room_subscription_bloc.dart';
import 'package:senpai/core/chat/blocs/update_message_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/unmatch_user/unmatch_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/chat/widgets/chat_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class ChatController extends StatelessWidget {
  final ChatRoomParams roomArgs;

  const ChatController({super.key, required this.roomArgs});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateMessageBloc, MutationState>(
      listener: (context, state) {
        _handleUpdateMessageState(context, state);
      },
      child: BlocListener<RoomSubscriptionsBloc, ActionCableState>(
        listener: (context, state) {
          _handleRoomSubscriptions(context, state);
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
                  _buildUnmatchUserListeners(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _buildFetchMessagesListeners(BuildContext context, QueryState state) {
    final RoomSubscriptionsBloc roomSubscriptionsBloc =
        BlocProvider.of<RoomSubscriptionsBloc>(context);
    state.maybeWhen(
      loading: (result) => const SenpaiLoading(),
      loaded: (data, result) {
        if (result.data == null) {
          showSnackBarError(context, R.strings.serverError);
          logIt.error("A successful empty response just got recorded");
        }
      },
      error: (error, result) {
        showSnackBarError(context, R.strings.serverError);
      },
      refetch: (data, result) {
        roomSubscriptionsBloc.enterRoom(roomArgs.roomId);
      },
      orElse: () {},
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
        showSnackBarError(context, R.strings.failedToUpdateMessageText);
      },
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
        try {
          logIt.info("Received data from action cable ${data["sender"]["id"]}");
          if (data["sender"] != null &&
              data["sender"]["id"] == int.parse(roomArgs.currentUser.id)) {
            logIt.info("This should ideally add the message to the sent list");
            return;
          }
          logIt.info(
              "Sender is not the current user ${data["sender"]["id"]} !== ${roomArgs.currentUser.id}");
        } catch (e) {
          logIt.error(e);
        }

        fetchMessagesBloc.refetch();
      },
      error: (message) {
        showSnackBarError(context, message);
        if (message == R.strings.actionCableAuthError) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.router.replaceAll([const EntryRoute()]);
          });
        }
      },
    );
  }

  Widget _buildUnmatchUserListeners() {
    return BlocListener<UnmatchUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["unmatchUser"]["user"];
              if (model != null) {
                context.router.replaceAll([HomeRoute()]);
              }
            } catch (e) {
              logIt.error(
                  "Error accessing unmatchUser or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<UnmatchUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
