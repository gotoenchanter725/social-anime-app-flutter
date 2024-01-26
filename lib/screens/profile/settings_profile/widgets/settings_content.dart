import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/secondary_button.dart';

import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/cupertino_logout_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/setting_premium_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({
    super.key,
  });

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) => BlocProvider.value(
        value: BlocProvider.of<SettingsProfileBloc>(context),
        child: const CupertinoLogoutWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: TextConstants.settingsTitle,
          onDoneTap: () => context.router.pop(),
        ),
        const SettingsPremiumWidget(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: _buildSettingsContent(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsContent(BuildContext context) {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<SettingsProfileBloc>(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              TextConstants.accountSettingsTitle,
              style: getTextTheme(context).headlineSmall,
            ),
            SizedBox(height: $constants.insets.sm),
            _buildPhoneNumberWidget(context),

            SizedBox(height: $constants.insets.sm),
            // 24.01 Herbert Joseph: Let's remove/hide for now.
            // _buildLanguageWidget(context),
            // SizedBox(height: $constants.insets.xs),
            // Container(
            //   padding: EdgeInsets.all($constants.insets.sm),
            //   decoration: profileBoxDecoration(),
            //   child: ProfileItemHeader(
            //     title: TextConstants.addLanguageTitle,
            //     onTap: () {
            //       bloc.add(
            //         OnChangeSettingsStepEvent(
            //           step: SettingsStep.language,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // SizedBox(height: $constants.insets.md),
            Container(
              padding: EdgeInsets.all($constants.insets.sm),
              decoration: profileBoxDecoration(),
              child: ProfileItemHeader(
                title: TextConstants.pushNotificationsTitle,
                onTap: () {
                  bloc.add(
                    OnChangeSettingsStepEvent(
                      step: SettingsStep.pushNotifications,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: $constants.insets.md),
            Text(
              TextConstants.activityStatusTitle,
              style: getTextTheme(context).headlineSmall,
            ),
            SizedBox(height: $constants.insets.sm),
            SenpaiSwitchWithTitle(
              value: bloc.isShowActiveStatus,
              title: TextConstants.showActiveStatusTitle,
              onChanged: (isOn) {
                bloc.add(OnChangeActiveStatusEvent(isStatusOn: isOn));
              },
              description: TextConstants.showActiveStatusDescription,
            ),
            SizedBox(height: $constants.insets.sm),
            SenpaiSwitchWithTitle(
              value: bloc.isRecentlyActiveStatus,
              title: TextConstants.showRecentlyActivetatusTitle,
              onChanged: (isOn) {
                bloc.add(OnChangeRecentlyActiveStatusEvent(isStatusOn: isOn));
              },
              description: TextConstants.showRecentlyActivetatusDescription,
            ),
            SizedBox(height: $constants.insets.md),
            // 24.01 Herbert Joseph: Let's remove/hide for now.
            // Container(
            //   padding: EdgeInsets.all($constants.insets.sm),
            //   decoration: profileBoxDecoration(),
            //   child: ProfileItemHeader(
            //     title: TextConstants.feedbackOnSenpaiTitle,
            //     onTap: () {
            //       bloc.add(
            //         OnChangeSettingsStepEvent(
            //           step: SettingsStep.feedback,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // 24.01 Herbert Joseph: Let's remove/hide for now.
            // SizedBox(height: $constants.insets.xxl),
            // SecondaryButton(
            //   text: TextConstants.restorePurchasesButton,
            //   onPressed: () {},
            //   hasBackgroundColor: true,
            // ),
            SizedBox(height: $constants.insets.sm),
            SecondaryButton(
              text: TextConstants.logoutTitle,
              onPressed: () {
                _showActionSheet(context);
              },
              hasBackgroundColor: true,
            ),
            SizedBox(height: $constants.insets.xs),
            // 22.01 Herbert Joseph: Let's remove/hide delete account for now.
            // const Center(
            //   child: DeleteAccountWidget(),
            // ),
          ],
        );
      },
    );
  }

  Widget _buildPhoneNumberWidget(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);

    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: TextConstants.phoneNumberTitle,
            onTap: () {
              bloc.add(
                OnChangeSettingsStepEvent(
                  step: SettingsStep.phoneNumber,
                ),
              );
            },
          ),
          Text(
            bloc.user.phone,
            style: getTextTheme(context)
                .labelMedium
                ?.copyWith(color: $constants.palette.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextConstants.languageTitle,
            style: getTextTheme(context)
                .bodyMedium
                ?.copyWith(color: $constants.palette.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'English',
                style: getTextTheme(context)
                    .labelMedium
                    ?.copyWith(color: $constants.palette.grey),
              ),
              Icon(
                Icons.done,
                color: $constants.palette.white,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
