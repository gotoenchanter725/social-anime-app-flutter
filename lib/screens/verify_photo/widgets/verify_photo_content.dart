import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class VerifyPhotoContent extends StatelessWidget {
  const VerifyPhotoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: $constants.palette.mainGradient,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: $constants.insets.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  ),
                  TextButton(
                    child: Text(
                      TextConstants.skipStep,
                      style: getTextTheme(context).labelMedium!.copyWith(
                            color: $constants.palette.white,
                          ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: $constants.insets.xl,
              ),
              Text(
                TextConstants.verifyPhotoHeading,
                textAlign: TextAlign.center,
                style: getTextTheme(context)
                    .headlineLarge!
                    .copyWith(color: $constants.palette.white),
              ),
              SizedBox(
                height: $constants.insets.sm,
              ),
              Text(
                TextConstants.verifyPhotoDescription,
                textAlign: TextAlign.center,
                style: getTextTheme(context)
                    .bodySmall!
                    .copyWith(color: $constants.palette.grey),
              ),
              SizedBox(
                height: $constants.insets.xl,
              ),
              Image.asset(
                PathConstants.profileBg,
                height: getSize(context).height * 0.3,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: $constants.insets.xl,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: PrimaryButton(
                text: TextConstants.verifyPhotoButtonText,
                onPressed: () {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: $constants.insets.md,
        ),
      ],
    );
  }
}
