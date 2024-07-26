import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/match/widgets/match_header.dart';
import 'package:senpai/screens/match/widgets/match_texture.dart';
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
            child: Column(
              children: [
                const MatchHeaderWidget(isMatching: false),
                const SizedBox(height: 70),
                SizedBox(
                  height: 160,
                  child: Center(
                    child: Text(
                      "Are you ready to get started?",
                      style: getTextTheme(context)
                          .headlineSmall!
                          .copyWith(fontSize: 22.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 18.0),
                const Expanded(
                  child: MatchTextureWidget(
                    isMatching: false,
                    isMatchFound: false,
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: PrimaryButton(
                    text: "Start Matching",
                    onPressed: () {
                      appRouter.pushNamed("/lobby");
                    },
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          if (!isVerified)
            VerificationOverlayWidget(
              onClosed: () {
                setState(() {
                  isVerified = true;
                });
              },
              onStartVerification: () {
                setState(() {
                  isVerified = true;
                });
              },
            ),
        ],
      ),
    );
  }
}
