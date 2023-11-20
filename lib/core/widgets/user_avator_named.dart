import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class UserAvatarWithName extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final bool isOnline;
  final double avatarSize;

  const UserAvatarWithName({
    Key? key,
    required this.imageUrl,
    required this.userName,
    this.isOnline = false,
    this.avatarSize = 72,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAvatar(imageUrl: imageUrl, isOnline: isOnline, size: avatarSize),
        SizedBox(height: $constants.insets.xs),
        Text(
          userName,
          style: getTextTheme(context).labelMedium!.copyWith(
                color: $constants.palette.white,
              ),
        ),
      ],
    );
  }
}
