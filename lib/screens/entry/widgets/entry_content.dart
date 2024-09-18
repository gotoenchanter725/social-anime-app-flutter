import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/entry/bloc/entry_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EntryContent extends StatelessWidget {
  const EntryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntryBloc, EntryState>(
      builder: (context, state) {
        return SafeArea(
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: $constants.insets.lg,
                  ),
                  child: Column(children: [
                    Image.asset(
                      PathConstants.logo,
                      width: getSize(context).width * 0.6,
                    ),
                    SizedBox(
                      height: getSize(context).height * 0.15,
                    ),
                    _buildEntryText(context),
                    SizedBox(
                      height: $constants.insets.lg,
                    ),
                    PrimaryButton(
                        text: R.strings.signUp,
                        onPressed: () {
                          context.router.push(SignUpRoute(isExistingUser: false));
                        }),
                    SizedBox(
                      height: $constants.insets.lg,
                    ),
                    SecondaryButton(
                        text: R.strings.signIn,
                        onPressed: () {
                          context.router.push(SignUpRoute(isExistingUser: true));
                        }),
                    SizedBox(
                      height: $constants.insets.lg,
                    ),
                  ]),
                ),
              ]),
        );
      },
    );
  }

  Widget _buildEntryText(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: getTextTheme(context).labelMedium?.copyWith(
              color: $constants.palette.white,
            ),
        children: [
          TextSpan(text: R.strings.entrySpanText1),
          TextSpan(
            text: R.strings.entryActionText1,
            style: getTextTheme(context).labelMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  color: $constants.palette.white,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router.push(SenpaiLicenseRoute(mdFileName: "tos.md"));
              },
          ),
          TextSpan(text: R.strings.entrySpanText2),
          TextSpan(
            text: R.strings.entryActionText2,
            style: getTextTheme(context).labelMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  color: $constants.palette.white,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router
                    .push(SenpaiLicenseRoute(mdFileName: "privacy_policy.md"));
              },
          ),
          TextSpan(text: R.strings.entrySpanText3),
          TextSpan(
            text: R.strings.entryActionText3,
            style: getTextTheme(context).labelMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  color: $constants.palette.white,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router
                    .push(SenpaiLicenseRoute(mdFileName: "cookie_policy.md"));
              },
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
