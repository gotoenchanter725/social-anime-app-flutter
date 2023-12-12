import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EmptyConversations extends StatelessWidget {
  final String avatorImagePath;
  final String title;
  final String subtitle;
  const EmptyConversations(
      {super.key,
      required this.avatorImagePath,
      required this.title,
      required this.subtitle});

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
              avatorImagePath,
              width: getSize(context).width * 0.539,
              height: getSize(context).height * 0.229,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: $constants.insets.sm,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: getTextTheme(context).bodyMedium!.copyWith(
                    color: $constants.palette.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: $constants.insets.xs,
            ),
            Flexible(
              child: Text(
                subtitle,
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
