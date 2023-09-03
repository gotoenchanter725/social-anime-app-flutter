import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: $constants.insets.sm,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                PathConstants.launcher,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              ),
              SvgPicture.asset(
                PathConstants.crownIcon,
                width: $constants.insets.lg,
                height: $constants.insets.lg,
                fit: BoxFit.contain,
              )
            ],
          ),
          SizedBox(
            height: $constants.insets.md,
          ),
          SenpaiIconInput(
            iconPath: PathConstants.searchIcon,
            hintText: TextConstants.searchHintText,
            onChange: (text) {
              print(text);
            },
          ),
          SizedBox(
            height: $constants.insets.md,
          ),
          Text(
            TextConstants.matchesTitle,
            textAlign: TextAlign.left,
            style: getTextTheme(context)
                .headlineSmall!
                .copyWith(color: $constants.palette.white),
          )
        ],
      ),
    );
  }
}
