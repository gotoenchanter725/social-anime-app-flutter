import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SpotifyMusicHeader extends StatelessWidget {
  final String title;
  final bool hasIndicators;
  final bool isSecondPage;

  const SpotifyMusicHeader({
    super.key,
    required this.title,
    required this.hasIndicators,
    required this.isSecondPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: getTextTheme(context).titleMedium?.copyWith(
                  color: $constants.palette.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
        ),
        SizedBox(width: $constants.insets.xs),
        if (hasIndicators) ...{
          _buildItemIndicator(
            isSecondPage
                ? $constants.palette.white.withOpacity(0.3)
                : $constants.palette.white,
          ),
          SizedBox(width: $constants.insets.xxs),
          _buildItemIndicator(
            isSecondPage
                ? $constants.palette.white
                : $constants.palette.white.withOpacity(0.3),
          ),
        }
      ],
    );
  }

  Widget _buildItemIndicator(Color color) {
    return Container(
      height: $constants.insets.xxs,
      width: $constants.insets.xxs,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
