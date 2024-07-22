import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
// import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class StartMatch extends StatelessWidget {
  const StartMatch({super.key});

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
          _buildVerificationOverlay(context),
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
              height: getSize(context).height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: $constants.palette.dialogBackground,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
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
                  height: 16.0,
                ),
                _buildAmenityRow(context, PathConstants.matchAmenityIcon2,
                    "Use your camera in a well-lit area for the best results"),
                const SizedBox(
                  height: 16.0,
                ),
                Expanded(
                  child: Image.asset(
                    PathConstants.profileVerifyBg,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                PrimaryButton(
                  text: "Start Verification",
                  onPressed: () {},
                ),
              ]),
            ),
          ),
        )
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
          width: 4.0,
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
