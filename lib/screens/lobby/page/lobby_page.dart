import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/core/match/blocs/find_video_match/find_video_chat_match_bloc.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/lobby/widgets/lobby_information.dart';
import 'package:senpai/screens/lobby/widgets/lobby_page_content.dart';
import 'package:senpai/screens/match/widgets/fetch_count_container.dart';
import 'package:senpai/screens/match/widgets/start_match_texture.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';

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

              return const LobbyPageContentWidget();
            },
          ),
        ));
  }

  _buildLoadingPage(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: R.strings.lobbyAppBarTitle,
        hasLeading: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              child: Center(
                child: StartMatchTexture(),
              ),
            ),
            Column(
              children: [
                LobbyInformationWidget(),
                const SizedBox(height: 16.0),
                Expanded(child: Container()),
                const SizedBox(height: 16.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
