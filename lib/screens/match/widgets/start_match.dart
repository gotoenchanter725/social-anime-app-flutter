import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/start_video_match_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/lobby/widgets/lobby_information.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/match_header.dart';
import 'package:senpai/screens/match/widgets/start_match_texture.dart';
import 'package:senpai/screens/match/widgets/verification_overlay.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:senpai/l10n/resources.dart';

class StartMatch extends StatelessWidget {
  const StartMatch({super.key});

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
                    text: R.strings.startMatchingBtn,
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
    print('------ user.verified status -- ${bloc.user.verified}');
    if (bloc.user.verified) {
      return const SizedBox.shrink();
    }

    return BlocBuilder<MatchBloc, MatchState>(
      builder: (context, state) {
        var showVerifyWarningPrompt = state.isVerifyPromptVisible;

        if (!showVerifyWarningPrompt) {
          return const SizedBox.shrink();
        }

        // final user = bloc.user;

        return VerificationOverlayWidget(
          onClosed: () {
            context.read<MatchBloc>().add(OnHideVerifyPrompt());
          },
          onStartVerification: () {
            // route to profile page
            context.router.navigate(const ProfileRoute());
            // route to profile fill page
            // context.router.push(ProfileFillRoute(
            //   id: user.id,
            //   phone: user.phone,
            // ));
          },
        );
      },
    );
  }
}
