import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const SenpaiAppBar({
    super.key,
    this.leading,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildLeading(context),
      title: _buildTitle(context),
      centerTitle: true,
      actions: actions,
      leadingWidth: 80,
    );
  }

  Widget _buildLeading(BuildContext context) {
    if (leading != null) {
      return leading!;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          SenpaiIconButton(
            onPressed: () => Navigator.of(context).pop(),
            iconPath: PathConstants.backIcon,
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: getTextTheme(context).bodyMedium,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
