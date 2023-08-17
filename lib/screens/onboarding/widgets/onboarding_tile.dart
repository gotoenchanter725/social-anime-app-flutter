import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

class OnboardingTile extends StatelessWidget {
  final title, imagePath;

  const OnboardingTile({super.key, this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
            ),
          ),
          const SizedBox(height: 65),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
