import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiRadioButton extends StatelessWidget {
  final String title;
  final dynamic value;
  final bool isSelected;
  final Function(dynamic) onChanged;

  const SenpaiRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: $constants.insets.xs),
        padding: EdgeInsets.symmetric(vertical: $constants.insets.xxs),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: isSelected
                ? $constants.palette.pink
                : $constants.palette.buttonBorder,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            _buildRadio(),
            _buildTitle(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRadio() {
    return Radio(
      value: value,
      fillColor: MaterialStateProperty.all(
        isSelected ? $constants.palette.pink : $constants.palette.buttonBorder,
      ),
      groupValue: isSelected ? value : '',
      onChanged: (value) {
        onChanged(value ?? '');
      },
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
