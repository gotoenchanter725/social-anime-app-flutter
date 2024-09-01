import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchHeaderWidget extends StatelessWidget {
  const MatchHeaderWidget({super.key, required this.isMatching});
  final bool isMatching;

  @override
  Widget build(BuildContext context) {
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
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Text(
              isMatching ? R.strings.waitingForMatch : R.strings.joinPool,
              key: ValueKey<String>(
                  isMatching ? R.strings.waitingForMatch : R.strings.joinPool),
              style: getTextTheme(context).titleMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
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
