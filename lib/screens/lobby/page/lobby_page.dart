import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/lobby/widgets/lobby_page_content.dart';
import 'package:senpai/screens/match/widgets/fetch_count_container.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';

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
        ],
        child: FetchCountContainer(
          loadingWidget: _buildLoadingPage(context),
          child: const LobbyPageContentWidget(),
        ));
  }

  _buildLoadingPage(BuildContext context) {
    return const Scaffold(
      body: SenpaiLoading(),
    );
  }
}
