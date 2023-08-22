import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EntryContent extends StatelessWidget {
  const EntryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: $constants.insets.lg,
              ),
              child: Column(children: [
                Image.asset(
                  PathConstants.logo,
                  width: getSize(context).width * 0.6,
                ),
                SizedBox(
                  height: getSize(context).height * 0.15,
                ),
                Text(
                  TextConstants.entryText,
                  style: getTextTheme(context)
                      .labelMedium
                      ?.copyWith(color: $constants.palette.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: $constants.insets.lg,
                ),
                PrimaryButton(text: TextConstants.signUp, onPressed: () {}),
                SizedBox(
                  height: $constants.insets.lg,
                ),
                SecondaryButton(text: TextConstants.signIn, onPressed: () {}),
                SizedBox(
                  height: $constants.insets.lg,
                ),
              ]),
            ),
          ]),
    );
  }
}
