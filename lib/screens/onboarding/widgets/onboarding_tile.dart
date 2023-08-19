import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OnboardingTile extends StatelessWidget {
  final title, subTitle, imagePath;

  const OnboardingTile({super.key, this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: getSize(context).height * 0.4,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: $constants.insets.md,
          ),
          Text(
            title,
            style: getTextTheme(context).displayMedium,
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
          Text(
            subTitle,
            style: getTextTheme(context).displayLarge,
          )
        ],
      ),
    );
  }
}
