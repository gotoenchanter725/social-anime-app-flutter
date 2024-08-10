import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/find_video_match/find_video_chat_match_bloc.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/match/blocs/video_chat_subscriptions/video_chat_subscription_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/lobby/widgets/lobby_page_content.dart';
import 'package:senpai/screens/match/widgets/fetch_count_container.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ProfileBloc()
              ..add(
                OnInitUserID(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<FetchLobbyCountBloc>(),
          ),
          BlocProvider(
            create: (_) => StopVideoMatchBloc(),
          ),
          BlocProvider(
            create: (_) => FindVideoChatMatchBloc(),
          ),
          BlocProvider(
            create: (_) => VideoChatSubscriptionsBloc(),
          ),
        ],
        child: FetchCountContainer(
          loadingWidget: _buildLoadingPage(context),
          child: BlocBuilder<FindVideoChatMatchBloc, MutationState>(
            builder: (context, state) {
              state.whenOrNull(initial: () {
                final userId = (context.read<ProfileBloc>().userID);
                if (userId.isNotEmpty) {
                  context
                      .read<FindVideoChatMatchBloc>()
                      .findVideoChatMatch(userId: userId);
                }
              });

              return BlocListener<VideoChatSubscriptionsBloc, ActionCableState>(
                listener: (context, state) {
                  _handleLobbySubscriptions(context, state);
                },
                child: const LobbyPageContentWidget(),
              );
            },
          ),
        ));
  }

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }

  void _handleLobbySubscriptions(BuildContext context, ActionCableState state) {
    final lobbySubscriptionsBloc =
        BlocProvider.of<VideoChatSubscriptionsBloc>(context);
    final userId = (context.read<ProfileBloc>().userID);
    state.maybeWhen(
      orElse: () {},
      subscribed: () {},
      connected: () {
        logIt.info("Connected to lobby subscriptions");
        lobbySubscriptionsBloc.subscribe();
      },
      data: (data) {
        // if the data is for involves the current user:
        logIt.info("Received data from lobby subscriptions: $data");
        final matcheeID = data["matchee_id"];
        final status = data["status"];

        bool shouldShowDialog = matcheeID == userId && status == "pending";
        if (shouldShowDialog) {
          // show accept/reject dialog
        }
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
}
