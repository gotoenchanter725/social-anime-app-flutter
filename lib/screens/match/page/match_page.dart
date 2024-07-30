import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/start_video_match_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/start_match.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';

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
      ],
      child: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        if (state is LoadingProfileState) {
          return _buildLoadingPage(context);
        }

        if (state is ProfileInitial) {
          final userId = (context.read<ProfileBloc>().userID);
          if (userId.isNotEmpty) {
            context
                .read<FetchLobbyCountBloc>()
                .fetchLobbyCount(int.tryParse(userId) ?? 0);
          }
        }

        return BlocBuilder<FetchLobbyCountBloc, QueryState>(
            builder: (context, state) {
          return state.maybeWhen<Widget>(
            orElse: () => const StartMatch(),
            loading: (result) => _buildLoadingPage(context),
            initial: () => _buildLoadingPage(context),
          );
        });
      }),
    );
  }

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }
}
