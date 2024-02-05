import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onDoneTap;
  final bool hasLeading;
  final VoidCallback? onTapLeading;
  final List<Widget>? actionsList;

  const ProfileAppBar({
    super.key,
    required this.title,
    this.onDoneTap,
    this.hasLeading = false,
    this.onTapLeading,
    this.actionsList,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: $constants.insets.offset,
      backgroundColor: $constants.palette.darkBlue,
      automaticallyImplyLeading: false,
      surfaceTintColor: $constants.palette.darkBlue,
      centerTitle: true,
      leading: _buildLeading(context),
      title: Text(title),
      titleTextStyle: getTextTheme(context).titleMedium!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
      actions:
          actionsList ?? [if (onDoneTap != null) _buildAppBarAction(context)],
    );
  }

  Widget _buildLeading(BuildContext context) {
    if (hasLeading) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(
          left: $constants.insets.sm,
        ),
        height: 24,
        child: SenpaiIconButton(
          onPressed: () async {
            if (onTapLeading != null) {
              onTapLeading!();
            } else {
              await context.router.pop();
            }
          },
          iconPath: PathConstants.backIcon,
          borderColor: $constants.palette.buttonBorder,
        ),
      );
    }
    return const SizedBox();
  }

  Widget _buildAppBarAction(BuildContext context) {
    return GestureDetector(
      onTap: onDoneTap,
      child: Padding(
        padding: EdgeInsets.only(right: $constants.insets.sm),
        child: Text(
          R.strings.doneText,
          style: getTextTheme(context).bodySmall!.copyWith(letterSpacing: 0),
        ),
      ),
    );
  }
}
