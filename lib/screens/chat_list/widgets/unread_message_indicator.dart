import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class UnreadMessageIndicator extends StatelessWidget {
  final int unreadMessages;

  const UnreadMessageIndicator({Key? key, required this.unreadMessages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: $constants.insets.md,
      height: $constants.insets.md,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: $constants.palette.pink,
      ),
      child: Center(
        child: Text(
          unreadMessages.toString(),
          style: getTextTheme(context)
              .labelMedium!
              .copyWith(color: $constants.palette.white),
        ),
      ),
    );
  }
}
