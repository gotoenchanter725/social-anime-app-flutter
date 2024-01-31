import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileNameHeader extends StatelessWidget {
  final String name;
  final DateTime? birthday;
  final bool verified;
  final bool isCenter;
  final Color? birthdayColor;
  final bool hasBackground;
  final bool isAdmin;

  const ProfileNameHeader({
    super.key,
    required this.name,
    this.birthday,
    required this.verified,
    this.isCenter = true,
    this.birthdayColor,
    this.hasBackground = false,
    required this.isAdmin,
  });

  String _ageUser() {
    if (birthday != null) {
      return calculateAge(birthday!);
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: hasBackground ? MainAxisSize.min : MainAxisSize.max,
      mainAxisAlignment:
          isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Text(
            name,
            softWrap: true,
            style: getTextTheme(context).headlineLarge?.copyWith(
                color: $constants.palette.white,
                fontSize: hasBackground ? 26 : 32),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        const SizedBox(width: 8),
        if (birthday != null)
          Text(
            _ageUser(),
            style: getTextTheme(context).headlineLarge?.copyWith(
                  color: birthdayColor ?? $constants.palette.grey,
                  fontSize: hasBackground ? 26 : 32,
                ),
          ),
        if (verified || isAdmin)
          Padding(
            padding: EdgeInsets.only(left: 4, bottom: hasBackground ? 0 : 4),
            child: SvgPicture.asset(
              isAdmin ? PathConstants.crownIcon : PathConstants.verifyUserIcon,
              width: $constants.insets.lg,
              height: $constants.insets.lg,
              fit: BoxFit.contain,
              colorFilter: isAdmin
                  ? ColorFilter.mode(
                      $constants.palette.yellow,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
          ),
      ],
    );
  }
}
