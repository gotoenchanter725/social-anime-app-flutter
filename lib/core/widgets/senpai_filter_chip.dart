import 'package:flutter/material.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiFilterChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  final ValueChanged<bool> onTapSelect;

  const SenpaiFilterChip({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTapSelect,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      label: Text(
        title,
        style: getTextTheme(context).titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? $constants.palette.lightBlue
                  : $constants.palette.white,
            ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular($constants.corners.xl),
      ),
      side: BorderSide(
        width: 1.0,
        color: $constants.palette.buttonBorder,
      ),
      backgroundColor: $constants.palette.darkBlue,
      selectedColor: $constants.palette.white,
      selected: isSelected,
      onSelected: onTapSelect,
    );
  }
}
