import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiRadioButton extends StatelessWidget {
  final String title;
  final dynamic value;
  final Color backgroundColor;
  final bool isSelected;
  final bool hasBorder;
  final Function(dynamic) onChanged;
  final double? height;

  const SenpaiRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.isSelected,
    this.height,
    this.hasBorder = true,
    this.backgroundColor = Colors.transparent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        height: height ?? $constants.insets.xxl,
        margin: EdgeInsets.symmetric(vertical: $constants.insets.xs),
        padding: EdgeInsets.fromLTRB(
          0,
          $constants.insets.sm,
          $constants.insets.sm,
          $constants.insets.sm,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: hasBorder
                ? isSelected
                    ? $constants.palette.pink
                    : $constants.palette.buttonBorder
                : Colors.transparent,
            width: 1.0,
          ),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            _buildRadio(),
            Flexible(child: _buildTitle(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildRadio() {
    return Transform.scale(
      scale: 1.2,
      child: Radio(
        value: value,
        fillColor: MaterialStateProperty.all(
          isSelected
              ? $constants.palette.pink
              : $constants.palette.buttonBorder,
        ),
        groupValue: isSelected ? value : '',
        onChanged: (value) {
          onChanged(value ?? '');
        },
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: getTextTheme(context)
          .titleMedium
          ?.copyWith(color: $constants.palette.white),
    );
  }
}
