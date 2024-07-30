import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/start_video_match_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/fetch_count_container.dart';
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
      child: FetchCountContainer(
        loadingWidget: _buildLoadingPage(context),
        child: const StartMatch(),
      ),
    );
  }

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }
}
