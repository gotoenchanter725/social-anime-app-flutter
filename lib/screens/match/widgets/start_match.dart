import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
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
                _buildHeader(context),
                const SizedBox(height: 70.0),
                SizedBox(
                  width: 150.0,
                  child: Text(
                    "Are you ready for the match?",
                    style: getTextTheme(context)
                        .headlineSmall!
                        .copyWith(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: _buildMatchTexture(context),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: PrimaryButton(
                    text: "Start Matching",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          if (!isVerified) _buildVerificationOverlay(context),
        ],
      ),
    );
  }

  Widget _buildMatchTexture(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            PathConstants.launcher,
            width: $constants.insets.lg,
            height: $constants.insets.lg,
            fit: BoxFit.contain,
          ),
          Text(
            "Matching",
            style: getTextTheme(context).titleMedium!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SvgPicture.asset(
            PathConstants.crownIcon,
            width: $constants.insets.lg,
            height: $constants.insets.lg,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }

  Widget _buildVerificationOverlay(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration:
                BoxDecoration(color: $constants.palette.black.withOpacity(0.8)),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // height: getSize(context).height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: $constants.palette.appBackground,
              ),
              padding: const EdgeInsets.only(
                  top: 40, left: 27, right: 27, bottom: 20),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 180,
                    child: Center(
                      child: Transform.scale(
                        scaleY: 1.2,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Color(0xFFDE0BC9), // Center color
                                Color(0xFF1286F0), // Midpoint color
                                Colors.transparent, // Outer edge color
                              ],
                              stops: [
                                0.0,
                                0.2,
                                0.5
                              ], // Adjust stops to control the color transition
                              center: Alignment.center,
                              radius: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Verification Required!",
                      style: getTextTheme(context).headlineSmall!.copyWith(
                            fontSize: 20.0,
                            color: $constants.palette.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Verify your profile to enable video chat!",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: 14.0,
                            color: $constants.palette.grey,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon1,
                        "To ensure a safe and genuine experience, please verify your profile."),
                    const SizedBox(
                      height: 28.0,
                    ),
                    _buildAmenityRow(context, PathConstants.matchAmenityIcon2,
                        "Use your camera in a well-lit area for the best results"),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 42),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              PathConstants.profileVerifyBg,
                              fit: BoxFit.contain,
                              height: (MediaQuery.of(context).size.width - 80) *
                                  0.8 *
                                  263 /
                                  283, //262,
                              width: (MediaQuery.of(context).size.width - 80) *
                                  0.8, //283,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: PrimaryButton(
                            text: "Start Verification",
                            onPressed: () {
                              setState(() {
                                isVerified = true;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 2 - 355,
            right: 0,
            child: InkWell(
              onTap: () {
                setState(() {
                  isVerified = true;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: $constants.palette.appBackground,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 4, // Border width
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ))
      ],
    );
  }

  Widget _buildAmenityRow(
      BuildContext context, String iconPath, String amenityText) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: $constants.insets.lg,
          height: $constants.insets.lg,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Flexible(
          child: Text(
            amenityText,
            style: getTextTheme(context).titleMedium!.copyWith(
                  fontSize: 14.0,
                  color: $constants.palette.white,
                ),
          ),
        )
      ],
    );
  }
}
