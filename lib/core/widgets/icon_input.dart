import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/search_suffix_icon.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiIconInput extends StatelessWidget {
  const SenpaiIconInput({
    super.key,
    required this.iconPath,
    required this.hintText,
    required this.onChange,
    this.controller,
    this.onTapSuffix,
    this.onTapInput,
    this.focusNode,
    this.borderRadius,
  });

  final String iconPath;
  final String hintText;
  final Function(String) onChange;
  final TextEditingController? controller;
  final VoidCallback? onTapSuffix;
  final VoidCallback? onTapInput;
  final FocusNode? focusNode;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            borderRadius == null ? $constants.corners.md : borderRadius!),
        border: Border.all(
          color: $constants.palette.buttonBorder,
          width: 1,
        ),
        color: $constants.palette.buttonBackground,
      ),
      child: TextFormField(
        readOnly: onTapInput != null,
        onTap: onTapInput,
        focusNode: focusNode,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: $constants.insets.xs),
            child: SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 28,
            maxHeight: 20,
          ),
          suffix: onTapSuffix != null
              ? SearchSuffixIcon(
                  onTap: onTapSuffix!,
                )
              : null,
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 28,
            maxHeight: 20,
          ),
          hintText: hintText,
          hintStyle: getTextTheme(context).bodyMedium!.copyWith(
                color: $constants.palette.darkGrey,
              ),
          border: InputBorder.none,
        ),
        onChanged: onChange,
        controller: controller,
      ),
    );
  }
}
