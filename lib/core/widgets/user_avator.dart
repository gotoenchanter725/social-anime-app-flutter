import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final double size;

  const UserAvatar({
    Key? key,
    required this.imageUrl,
    this.isOnline = false,
    this.size = 72,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: size / 2,
        ),
        if (isOnline)
          Positioned(
            right: size * 0.09,
            bottom: size * 0.03,
            child: Container(
              width: $constants.insets.xs + 4,
              height: $constants.insets.xs + 4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: $constants.palette.appBackground,
              ),
              child: Center(
                child: Container(
                  width: $constants.insets.xs,
                  height: $constants.insets.xs,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: $constants.palette.green,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
