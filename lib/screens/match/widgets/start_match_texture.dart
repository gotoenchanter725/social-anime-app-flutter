import 'package:flutter/material.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class StartMatchTexture extends StatelessWidget {
  const StartMatchTexture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getSize(context).width,
      height: getWidthSize(context, 508 / 375),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
            width: getSize(context).width,
            height: getWidthSize(context, 508 / 375),
          ),
        ],
      ),
    );
  }
}
