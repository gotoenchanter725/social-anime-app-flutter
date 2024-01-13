import 'package:flutter/cupertino.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiSwitchWithTitle extends StatelessWidget {
  final bool value;
  final String title;
  final ValueChanged<bool> onChanged;
  final String description;
  final double? height;

  const SenpaiSwitchWithTitle({
    super.key,
    required this.title,
    required this.onChanged,
    this.height,
    required this.value,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: $constants.insets.sm,
              vertical: $constants.insets.xs,
          ),
          // height: height ?? $constants.insets.xxl,
          decoration: profileBoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: getTextTheme(context)
                      .bodyMedium
                      ?.copyWith(color: $constants.palette.white,),
                ),
              ),
              CupertinoSwitch(
                value: value,
                activeColor: $constants.palette.green,
                trackColor: $constants.palette.buttonBorder,
                onChanged: (bool? value) => onChanged(value ?? false),
              ),
            ],
          ),
        ),
        if (description.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(
              left: $constants.insets.sm,
              top: $constants.insets.xs,
            ),
            child: Text(
              description,
              style: getTextTheme(context)
                  .labelMedium
                  ?.copyWith(color: $constants.palette.grey),
            ),
          ),
      ],
    );
  }
}
