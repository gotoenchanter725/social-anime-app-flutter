import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/utils/constants.dart';

class SearchSuffixIcon extends StatelessWidget {
  const SearchSuffixIcon({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: $constants.palette.buttonBorder,
        ),
        child: SvgPicture.asset(
          PathConstants.closeIcon,
          width: $constants.insets.md,
          height: $constants.insets.md,
        ),
      ),
    );
  }
}
