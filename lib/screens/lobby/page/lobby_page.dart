import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/find_video_match/find_video_chat_match_bloc.dart';
import 'package:senpai/core/match/blocs/lobby_count_subscriptions/lobby_count_subscription_bloc.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/match/blocs/video_chat_subscriptions/video_chat_subscription_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/lobby/widgets/invite_lobby_dialog.dart';
import 'package:senpai/screens/lobby/widgets/lobby_page_content.dart';
import 'package:senpai/screens/match/bloc/lobby_count_cubit.dart';
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
          BlocProvider(
            create: (_) => LobbyCountSubScriptionBloc(),
          ),
          BlocProvider(create: (_) => LobbyCubit()),
        ],
        child: BlocListener<LobbyCountSubScriptionBloc, ActionCableState>(
          listener: (context, state) {
            _handleLobbyCountSubscriptions(context, state);
          },
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

                return BlocListener<VideoChatSubscriptionsBloc,
                    ActionCableState>(
                  listener: (context, state) {
                    _handleLobbySubscriptions(context, state);
                  },
                  child: Stack(
                    children: [
                      const LobbyPageContentWidget(),
                      _buildStopMatchingListeners(context),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }

  Widget _buildStopMatchingListeners(BuildContext context) {
    return BlocBuilder<StopVideoMatchBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          orElse: () {
            return const SizedBox.shrink();
          },
          succeeded: (data, result) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.replaceAll([HomeRoute()]);
            });
            return const SizedBox.shrink();
          },
          loading: () {
            return const SenpaiLoading();
          },
        );
      },
    );
  }

  _handleLobbyCountSubscriptions(BuildContext context, ActionCableState state) {
    final lobbyCubit = context.read<LobbyCubit>();
    final lobbyCountSubScriptionBloc =
        context.read<LobbyCountSubScriptionBloc>();
    state.maybeWhen(
      orElse: () {},
      connected: () {
        lobbyCountSubScriptionBloc.subscribe();
      },
      data: (data) {
        lobbyCubit.setNumberOfPeople(data['lobby_count']);
      },
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
        final matcheeID = data["matchee_id"].toString();

        final status = data["status"];

        bool shouldShowDialog = status == "pending" && matcheeID == userId;

        if (shouldShowDialog) {
          logIt.info("Received data about match invite: $data");
          // show accept/reject dialog
          showInviteLobbyDialog(context, data);
          return;
        }

        bool shouldNavigateToUnityView = status == "in_progress";

        if (shouldNavigateToUnityView) {
          logIt.info("Received data about match acceptance: $data");
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.router.push(UnityViewVideoChatRoute(matchData: data));
          });
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
