import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/i18n/en/strings.g.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class VerifyPhoneContent extends StatelessWidget {
  const VerifyPhoneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: $constants.insets.xl,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SenpaiIconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    iconPath: PathConstants.backIcon,
                  )
                ],
              ),
              SizedBox(
                height: $constants.insets.lg,
              ),
              Text(
                t["auth.verify_phone.heading"],
                style: getTextTheme(context)
                    .headlineLarge
                    ?.copyWith(color: $constants.palette.white),
                textAlign: TextAlign.left,
              ),
              Text(
                t["auth.verify_phone.instruction"] +
                    " " +
                    RouteData.of(context).pathParams.get('phone'),
                style: getTextTheme(context).labelMedium?.copyWith(
                      color: $constants.palette.grey2,
                    ),
                textAlign: TextAlign.left,
              ),
            ]),
      ),
    );
  }
}
