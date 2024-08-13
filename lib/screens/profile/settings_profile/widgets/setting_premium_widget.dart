import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsPremiumWidget extends StatelessWidget {
  const SettingsPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final bloc = BlocProvider.of<SettingsProfileBloc>(context);
        await context.router.push(
          PremiumRoute(userId: int.parse(bloc.user.id)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: $constants.insets.md,
          left: $constants.insets.sm,
          right: $constants.insets.sm,
        ),
        padding: EdgeInsets.symmetric(vertical: $constants.insets.md),
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: $constants.palette.premiumSectionGradient,
          borderRadius: BorderRadius.circular($constants.corners.lg),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  R.strings.senpaiPremiumTitle,
                  style: getTextTheme(context)
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: $constants.insets.xs),
                SvgPicture.asset(
                  PathConstants.crownIcon,
                  width: $constants.insets.md,
                  height: $constants.insets.md,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: $constants.insets.xxs),
            Text(
              R.strings.senpaiPremiumDescription,
              textAlign: TextAlign.center,
              style: getTextTheme(context)
                  .bodySmall
                  ?.copyWith(letterSpacing: 0, height: 2),
            )
          ],
        ),
      ),
    );
  }
}
