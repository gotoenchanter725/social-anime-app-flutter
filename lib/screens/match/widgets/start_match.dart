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
      body: SafeArea(
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
}
