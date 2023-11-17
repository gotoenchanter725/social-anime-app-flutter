import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

class SenpaiLoading extends StatelessWidget {
  final double? radius;

  const SenpaiLoading({super.key, this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: $constants.palette.loadingBackground,
      child: Center(
        child: Theme(
          data: ThemeData(
            cupertinoOverrideTheme:
                const CupertinoThemeData(brightness: Brightness.light),
          ),
          child: CupertinoActivityIndicator(
            radius: radius ?? $constants.insets.md,
          ),
        ),
      ),
    );
  }
}
