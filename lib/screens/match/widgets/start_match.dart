import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/start_video_match_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/screens/lobby/widgets/lobby_information.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/match_header.dart';
import 'package:senpai/screens/match/widgets/start_match_texture.dart';
import 'package:senpai/screens/match/widgets/verification_overlay.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class StartMatch extends StatefulWidget {
  const StartMatch({super.key});

  @override
  State<StartMatch> createState() => _StartMatchState();
}

class _StartMatchState extends State<StartMatch> {
  bool isVerified = false;

  @override
  void initState() {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    isVerified = bloc.isUserVerified;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              children: [
                const Positioned(
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: kBottomNavigationBarHeight + 60),
                      child: StartMatchTexture(),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const MatchHeaderWidget(isMatching: false),
                    SizedBox(
                      height: getWidthSize(context, 0.058),
                    ),
                    LobbyInformationWidget(),
                  ],
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: PrimaryButton(
                    text: "Start Matching",
                    onPressed: () {
                      final userId = (context.read<ProfileBloc>().userID);
                      context
                          .read<StartVideoMatchBloc>()
                          .startVideoMatch(userId);
                      appRouter.pushNamed("/lobby");
                    },
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) => _buildVerifyProfilePrompt(context),
          ),
        ],
      ),
    );
  }

  _buildVerifyProfilePrompt(BuildContext context) {
    ProfileBloc bloc = BlocProvider.of<ProfileBloc>(context);

    if (bloc.isUserVerified) {
      return const SizedBox.shrink();
    }

    return BlocBuilder<MatchBloc, MatchState>(
      builder: (context, state) {
        var isVerified = state.isVerifyPromptVisible;

        if (!isVerified) {
          return const SizedBox.shrink();
        }

        return VerificationOverlayWidget(
          onClosed: () {
            context.read<MatchBloc>().add(OnHideVerifyPrompt());
          },
          onStartVerification: () {
            // route to profile fill page
            appRouter.pushNamed("/profile_fill");
          },
        );
      },
    );
  }
}
