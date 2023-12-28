import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OnboardingTile extends StatelessWidget {
  final title, subTitle, imagePath;

  const OnboardingTile({super.key, this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxHeight = constraints.maxHeight;
        return Container(
          height: maxHeight,
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildImage(),
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
      },
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final maxHeight = constraints.maxHeight;
          return Image.asset(
            imagePath,
            height: maxHeight,
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}
