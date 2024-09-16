import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/lobby_count_subscriptions/lobby_count_subscription_bloc.dart';
import 'package:senpai/core/match/blocs/start_video_match_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/match/bloc/lobby_count_cubit.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/fetch_count_container.dart';
import 'package:senpai/screens/match/widgets/start_match.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class MatchPage extends StatelessWidget {
  final int defaultStep;

  const MatchPage({super.key, this.defaultStep = 0});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => MatchBloc(),
        ),
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
          create: (_) => StartVideoMatchBloc(),
        ),
        BlocProvider(
          create: (_) => LobbyCountSubScriptionBloc(),
        ),
        BlocProvider(create: (_) => LobbyCubit()),
        BlocProvider(create: (_) => getIt<FetchUserBloc>()..fetchCurrentUser()),
      ],
      child: Stack(
        children: [
          BlocListener<LobbyCountSubScriptionBloc, ActionCableState>(
            listener: (context, state) {
              _handleLobbyCountSubscriptions(context, state);
            },
            child: FetchCountContainer(
              loadingWidget: _buildLoadingPage(context),
              child: const StartMatch(),
            ),
          ),
          _buildFetchUserListeners(),
        ],
      ),
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

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }

  Widget _buildFetchUserListeners() {
    return BlocListener<FetchUserBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          loaded: (data, result) {
            final response = result.data;
            if (response == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            UserProfileModel? user;
            try {
              user = UserProfileModel.fromJson(result.data!["fetchUser"]);
              final bloc = BlocProvider.of<ProfileBloc>(context);
              bloc.add(OnFetchUser(user: user));
            } catch (e) {
              logIt.error("Error accessing fetchUser from response: $e");
              user = null;
            }
            if (user == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchUserBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
