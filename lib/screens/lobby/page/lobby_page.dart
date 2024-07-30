import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/lobby/page/lobby_page_content.dart';
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
          create: (context) => ProfileBloc(),
        ),
        BlocProvider(
          create: (_) => getIt<FetchLobbyCountBloc>(),
        ),
      ],
      child: const LobbyPageContentWidget(),
    );
  }
}
