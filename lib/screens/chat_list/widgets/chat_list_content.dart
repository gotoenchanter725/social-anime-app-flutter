import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                PathConstants.launcher,
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
              SvgPicture.asset(
                PathConstants.crownIcon,
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              )
            ],
          )
        ],
      ),
    );
  }
}
