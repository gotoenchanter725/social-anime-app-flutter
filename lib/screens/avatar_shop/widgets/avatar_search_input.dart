import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';

class AvatarSearchInput extends StatelessWidget {
  const AvatarSearchInput({super.key});

  Widget _buildFilterButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        PathConstants.filterCircle,
        width: 46,
        height: 46,
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SenpaiIconInput(
            hintText: "Search",
            borderRadius: 46,
            onChange: (_) {},
            iconPath: PathConstants.searchIcon,
            onTapSuffix: () {},
          ),
        ),
        const SizedBox(
            width: 10), // replaced with a fixed size for demo purposes
        _buildFilterButton(context),
      ],
    );
  }
}
