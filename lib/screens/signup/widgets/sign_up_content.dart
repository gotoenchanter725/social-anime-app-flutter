import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SignupContent extends StatelessWidget {
  const SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SenpaiIconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  iconPath: PathConstants.backIcon,
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              TextConstants.hello,
              style: getTextTheme(context)
                  .headlineLarge
                  ?.copyWith(color: $constants.palette.white),
              textAlign: TextAlign.left,
            ),
            Text(
              TextConstants.createUserPrompt,
              style: getTextTheme(context).headlineLarge?.copyWith(
                    color: $constants.palette.white,
                  ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}
