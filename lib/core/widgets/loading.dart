import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

class SenpaiLoading extends StatelessWidget {
  const SenpaiLoading({super.key});

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
            radius: $constants.insets.md,
          ),
        ),
      ),
    );
  }
}
