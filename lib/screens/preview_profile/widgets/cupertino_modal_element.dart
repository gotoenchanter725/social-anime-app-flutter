import 'package:flutter/material.dart';

import 'package:senpai/utils/constants.dart';

class CupertinoModalElement extends StatelessWidget {
  const CupertinoModalElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: $constants.insets.xs,
          bottom: $constants.insets.xxs,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.insets.xxs),
          shape: BoxShape.rectangle,
          color: $constants.palette.white,
        ),
        height: $constants.insets.xxs,
        width: $constants.corners.xxl,
      ),
    );
  }
}
