import 'package:flutter/material.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EmptyConversations extends StatelessWidget {
  const EmptyConversations({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              PathConstants.emptyConversationsImage,
              width: getSize(context).width * 0.539,
              height: getSize(context).height * 0.229,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: $constants.insets.sm,
            ),
            Text(
              TextConstants.emptyConversationsPromptText,
              textAlign: TextAlign.center,
              style: getTextTheme(context).bodyMedium!.copyWith(
                    color: $constants.palette.white,
                  ),
            ),
            SizedBox(
              height: $constants.insets.xs,
            ),
            Flexible(
              child: Text(
                TextConstants.emptyConversationsText,
                textAlign: TextAlign.center,
                style: getTextTheme(context).bodySmall!.copyWith(
                      color: $constants.palette.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
