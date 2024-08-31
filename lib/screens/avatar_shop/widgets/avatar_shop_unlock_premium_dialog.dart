import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

void showAvatarShopUnlockPremiumDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AvatarShopUnlockPremiumDialog(
          child: AvatarShopUnlockPremiumContents());
    },
  );
}

class AvatarShopUnlockPremiumDialog extends StatelessWidget {
  final Widget child;

  const AvatarShopUnlockPremiumDialog({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: child,
      ),
    );
  }
}

class AvatarShopUnlockPremiumContents extends StatefulWidget {
  const AvatarShopUnlockPremiumContents({super.key});

  @override
  State<AvatarShopUnlockPremiumContents> createState() =>
      _AvatarShopUnlockPremiumContentsState();
}

class _AvatarShopUnlockPremiumContentsState
    extends State<AvatarShopUnlockPremiumContents> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.all(getWidthSize(context, 0.037)),
            child: Container(
              // height: getSize(context).height * 0.6,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getWidthSize(context, 0.046)),
                color: $constants.palette.appBackground,
              ),
              padding: EdgeInsets.only(
                top: getWidthSize(context, 0.063),
                left: getWidthSize(context, 0.063),
                right: getWidthSize(context, 0.063),
                bottom: getWidthSize(context, 0.063),
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Stack(
                  children: [
                    Image.asset(PathConstants.avatarShopPremiumFrame),
                    Positioned.fill(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Unlock Premium Skins",
                              style: TextStyle(
                                fontSize: getWidthSize(context, 0.0589),
                                color: $constants.palette.white,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: getWidthSize(context, 0.061)),
                            SvgPicture.asset(
                              PathConstants.crownIcon,
                              width: getWidthSize(context, 0.0533),
                              height: getWidthSize(context, 0.0533),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.189),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(PathConstants.shineHeartIcon,
                        width: getWidthSize(context, 0.0427),
                        height: getWidthSize(context, 0.0427)),
                    SizedBox(
                      width: getWidthSize(context, 0.0123),
                    ),
                    Text(
                      "Higher visibility rates",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: getWidthSize(context, 0.0427),
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.032),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(PathConstants.shineHeartIcon,
                        width: getWidthSize(context, 0.0427),
                        height: getWidthSize(context, 0.0427)),
                    SizedBox(
                      width: getWidthSize(context, 0.0123),
                    ),
                    Text(
                      "Higher visibility rates",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: getWidthSize(context, 0.0427),
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.032),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(PathConstants.shineHeartIcon,
                        width: getWidthSize(context, 0.0427),
                        height: getWidthSize(context, 0.0427)),
                    SizedBox(
                      width: getWidthSize(context, 0.0123),
                    ),
                    Text(
                      "30 Super Likes",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: getWidthSize(context, 0.0427),
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.032),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(PathConstants.shineHeartIcon,
                        width: getWidthSize(context, 0.0427),
                        height: getWidthSize(context, 0.0427)),
                    SizedBox(
                      width: getWidthSize(context, 0.0123),
                    ),
                    Text(
                      "Ability to add up to 15 animes",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: getWidthSize(context, 0.0427),
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.032),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(PathConstants.shineHeartIcon,
                        width: getWidthSize(context, 0.0427),
                        height: getWidthSize(context, 0.0427)),
                    SizedBox(
                      width: getWidthSize(context, 0.0123),
                    ),
                    Text(
                      "Cancel Anytime",
                      style: getTextTheme(context).titleMedium!.copyWith(
                            fontSize: getWidthSize(context, 0.0427),
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: getWidthSize(context, 0.127),
                ),
                PrimaryButton(
                  text: "Upgrade for \$19.99/monthly",
                  buttonGradient: $constants.palette.verificationButtonGradient,
                  onPressed: () {},
                ),
                SizedBox(
                  height: getWidthSize(context, 0.0427),
                ),
                InkWell(onTap: () {}, child: const Text("Restore purchases")),
                SizedBox(
                  height: getWidthSize(context, 0.01),
                ),
              ]),
            ),
          ),
        ),
        Positioned(
            top: getSize(context).height / 2 - getWidthSize(context, 0.98),
            right: -getWidthSize(context, 0.0046),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: getWidthSize(context, 0.093),
                height: getWidthSize(context, 0.093),
                decoration: BoxDecoration(
                  color: $constants.palette.appBackground,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 4, // Border width
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: getWidthSize(context, 0.037),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
