import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/mark_avatar_as_default_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_avatar_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/local_key.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/avatar_shop/avatar_shop_model.dart';
import 'package:senpai/models/user_profile/mappers/user_profile_mapper.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/cupertino_logout_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/delete_account_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/setting_premium_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_avatar_card_item.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsContent extends StatefulWidget {
  const SettingsContent({super.key});

  @override
  State<SettingsContent> createState() => _SettingsContentState();
}

class _SettingsContentState extends State<SettingsContent> {
  String selectedAvatarId = "";
  List<AvatarsShopModel> avatarsList = [];
  var isMarking = false;
  var isLoadingAvatars = false;

  @override
  void initState() {
    super.initState();

    final fetchUserAvatarsBloc = BlocProvider.of<FetchUserAvatarsBloc>(context);
    fetchUserAvatarsBloc.fetchUserAvatars();
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (_) => BlocProvider.value(
        value: BlocProvider.of<SettingsProfileBloc>(context),
        child: const CupertinoLogoutWidget(),
      ),
    );
  }

  void _onDoneTap(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    final serverBloc = BlocProvider.of<UpdateUserBloc>(context);
    serverBloc.updateUserInfo(
      user: bloc.user.toUpdateModel(),
      verified: bloc.user.verified,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: R.strings.settingsTitle,
          onDoneTap: () => _onDoneTap(context),
        ),
        _buildSocialWidget(context),
        SizedBox(height: getWidthSize(context, 0.027)),
        _buildPremiumWidget(context),
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

  Widget _buildSocialWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                final Uri url = Uri.parse('https://discord.gg/wrACUHRyXv');
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              borderRadius: BorderRadius.circular(12), // Set border radius here
              child: Ink(
                width: double.infinity,
                height: getWidthSize(context, 0.12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(PathConstants.btnDiscord),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: getWidthSize(context, 0.027)),
          Expanded(
            child: InkWell(
              onTap: () async {
                final Uri url = Uri.parse('https://www.reddit.com/r/SenpaiApp');
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              borderRadius: BorderRadius.circular(12), // Set border radius here
              child: Ink(
                width: double.infinity,
                height: getWidthSize(context, 0.12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(PathConstants.btnReddit),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: getWidthSize(context, 0.027)),
          Expanded(
            child: InkWell(
              onTap: () async {
                final Uri url = Uri.parse('https://x.com/SENPAI_APP');
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              borderRadius: BorderRadius.circular(12), // Set border radius here
              child: Ink(
                width: double.infinity,
                height: getWidthSize(context, 0.12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(PathConstants.btnTwitter),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumWidget(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);

    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
        builder: (context, state) {
      return bloc.user.premium == true
          ? const SizedBox()
          : const SettingsPremiumWidget();
    });
  }

  Widget _buildChangeYourAvatar(BuildContext context) {
    return BlocListener<MarkAvatarAsDefaultBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(succeeded: (data, result) {
          final fetchUserAvatarsBloc =
              BlocProvider.of<FetchUserAvatarsBloc>(context);
          fetchUserAvatarsBloc.fetchUserAvatars();
          setState(() {
            isMarking = false;
          });
        }, loading: () {
          setState(() {
            isMarking = true;
          });
        }, failed: (error, result) {
          setState(() {
            isMarking = false;
          });
        });
      },
      child: BlocBuilder<FetchUserAvatarsBloc, QueryState>(
        builder: (context, state) {
          state.maybeWhen(
              loading: (result) => isLoadingAvatars = true,
              loaded: (date, result) {
                isLoadingAvatars = false;
                final response = result.data;
                if (response == null) {
                  showSnackBarError(context, R.strings.nullUser);
                  logIt.error("A successful empty response just got recorded");
                  return Container();
                }
                List<dynamic>? avatars;
                // List<AvatarsShopModel> avatarsList = [];
                try {
                  avatars = result.data!["fetchUser"]["avatars"];
                  // print("Avatars length");
                  // print(avatars?.length);

                  avatarsList = avatars!
                      .map((e) => AvatarsShopModel.fromJson(e))
                      .toList();

                  for (var avatar in avatarsList) {
                    if (avatar.isDefault) {
                      debugPrint("avatar ${avatar.name} ${avatar.isDefault}");
                    }
                  }
                } catch (e) {
                  logIt.error("Error accessing fetchAvatars from response: $e");
                  avatars = null;
                }
              },
              orElse: () {
                isLoadingAvatars = false;
              });
          if (avatarsList.isNotEmpty) {
            return Stack(
              children: [
                Positioned.fill(
                  top: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Image.asset(PathConstants.settingsAvatarHeader),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0x7D334256),
                                Colors.transparent,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              stops: [0.2, 1.4],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: getWidthSize(context, 0.037)),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: getWidthSize(context, 0.03)),
                            child: Text(
                              "Change Your Avatar",
                              style: getTextTheme(context).bodyMedium,
                            ),
                          ),
                        ),
                        Container(
                          width: getWidthSize(context, 0.112),
                          height: getWidthSize(context, 0.112),
                          margin:
                              EdgeInsets.only(top: getWidthSize(context, 0.01)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xff344256),
                              width: 2.0,
                            ),
                          ),
                          child: InkWell(
                            child: Center(
                              child: SvgPicture.asset(
                                PathConstants.searchIcon,
                                width: getWidthSize(context, 0.064),
                                height: getWidthSize(context, 0.064),
                              ),
                            ),
                            onTap: () {
                              // Handle search action
                            },
                          ),
                        ),
                        SizedBox(width: getWidthSize(context, 0.037)),
                      ],
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: avatarsList.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 100 / 174,
                      ),
                      padding: EdgeInsets.all(getWidthSize(context, 0.032)),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          setState(() {
                            if (selectedAvatarId != avatarsList[index].guid) {
                              selectedAvatarId = avatarsList[index].guid;
                            } else {
                              selectedAvatarId = "";
                            }
                          });
                        },
                        child: Stack(
                          children: [
                            SettingsAvatarCardItem(
                                data: avatarsList[index],
                                selected: avatarsList[index].guid ==
                                    selectedAvatarId),
                            if (avatarsList[index].guid == selectedAvatarId &&
                                (isLoadingAvatars || isMarking))
                              Positioned.fill(
                                  bottom: 40,
                                  child: Center(
                                      child: CupertinoActivityIndicator(
                                    radius: $constants.insets.sm,
                                  )))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          } else if (isLoadingAvatars) {
            return SizedBox(
              width: double.infinity,
              height: 60,
              child: Center(
                  child: CupertinoActivityIndicator(
                radius: $constants.insets.md,
              )),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget _buildTestAvatarButton(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(UnityViewRoute(avatorGuid: selectedAvatarId));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              $constants.palette.emoteButtonStart,
              $constants.palette.emoteButtonEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(getWidthSize(context, 0.14)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(getWidthSize(context, 0.14)),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.circular(getWidthSize(context, 0.14))),
              child: Padding(
                padding: EdgeInsets.all(getWidthSize(context, 0.003)),
                child: SizedBox(
                  height: getWidthSize(context, 0.13),
                  child: Center(
                    child: Text(
                      'Test Avatar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getWidthSize(context, 0.0372),
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSetDefaultAvatarButton(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<MarkAvatarAsDefaultBloc>().markAvatarAsDefault(
              avatarGuid: selectedAvatarId,
            );
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              $constants.palette.emoteButtonStart,
              $constants.palette.emoteButtonEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(getWidthSize(context, 0.14)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(getWidthSize(context, 0.14)),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Padding(
              padding: EdgeInsets.all(getWidthSize(context, 0.003)),
              child: SizedBox(
                height: getWidthSize(context, 0.13),
                child: Center(
                  child: Stack(
                    children: [
                      Text(
                        'Set as Default',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getWidthSize(context, 0.0372),
                            fontWeight: FontWeight.w800),
                      ),
                      if (isLoadingAvatars || isMarking)
                        Positioned.fill(
                            child: Center(
                                child: CupertinoActivityIndicator(
                          radius: $constants.insets.sm,
                        )))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
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
            SizedBox(height: $constants.insets.sm),
            _buildChangeYourAvatar(context),
            if (selectedAvatarId != "") SizedBox(height: $constants.insets.sm),
            if (selectedAvatarId != "")
              Row(
                children: [
                  Expanded(child: _buildSetDefaultAvatarButton(context)),
                  const SizedBox(width: 11),
                  Expanded(child: _buildTestAvatarButton(context)),
                ],
              ),
            // _buildFetchAvatarsShopListeners(),
            SizedBox(height: $constants.insets.sm),
            Text(
              R.strings.accountSettingsTitle,
              style: getTextTheme(context).headlineSmall,
            ),
            SizedBox(height: $constants.insets.sm),
            _buildPhoneNumberWidget(context),
            SizedBox(height: $constants.insets.sm),
            _buildLanguageWidget(context),
            SizedBox(height: $constants.insets.xs),
            Container(
              padding: EdgeInsets.all($constants.insets.sm),
              decoration: profileBoxDecoration(),
              child: ProfileItemHeader(
                title: R.strings.addLanguageTitle,
                onTap: () {
                  bloc.add(
                    OnChangeSettingsStepEvent(
                      step: SettingsStep.language,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: $constants.insets.md),
            Container(
              padding: EdgeInsets.all($constants.insets.sm),
              decoration: profileBoxDecoration(),
              child: ProfileItemHeader(
                title: R.strings.pushNotificationsTitle,
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
              R.strings.activityStatusTitle,
              style: getTextTheme(context).headlineSmall,
            ),
            SizedBox(height: $constants.insets.sm),
            SenpaiSwitchWithTitle(
              value: bloc.isShowActiveStatus,
              title: R.strings.showActiveStatusTitle,
              onChanged: (isOn) {
                bloc.add(OnChangeActiveStatusEvent(isStatusOn: isOn));
              },
              description: R.strings.showActiveStatusDescription,
            ),
            SizedBox(height: $constants.insets.sm),
            SenpaiSwitchWithTitle(
              value: bloc.isRecentlyActiveStatus,
              title: R.strings.showRecentlyActivetatusTitle,
              onChanged: (isOn) {
                bloc.add(OnChangeRecentlyActiveStatusEvent(isStatusOn: isOn));
              },
              description: R.strings.showRecentlyActivetatusDescription,
            ),
            SizedBox(height: $constants.insets.md),
            SizedBox(height: $constants.insets.sm),
            SecondaryButton(
              text: R.strings.logoutTitle,
              onPressed: () {
                _showActionSheet(context);
              },
              hasBackgroundColor: true,
            ),
            SizedBox(height: $constants.insets.xs),
            const Center(
              child: DeleteAccountWidget(),
            ),
            SizedBox(height: $constants.insets.xs),
            const Divider(),
            SizedBox(height: $constants.insets.xs),
            _buildEntryText(context),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        );
      },
    );
  }

  Widget _buildEntryText(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: getTextTheme(context).labelMedium?.copyWith(
                color: $constants.palette.white,
              ),
          children: [
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
            const TextSpan(text: ",  "),
            TextSpan(
              text: R.strings.entryActionText2,
              style: getTextTheme(context).labelMedium!.copyWith(
                    decoration: TextDecoration.underline,
                    color: $constants.palette.white,
                  ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.router.push(
                      SenpaiLicenseRoute(mdFileName: "privacy_policy.md"));
                },
            ),
            const TextSpan(text: ",  "),
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
          ],
        ),
      ),
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
            title: R.strings.phoneNumberTitle,
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
            R.strings.languageTitle,
            style: getTextTheme(context)
                .bodyMedium
                ?.copyWith(color: $constants.palette.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
                builder: (context, state) {
                  return Text(
                    LocaleKeyExtension.parse(state.locale!.languageCode).name,
                    style: getTextTheme(context)
                        .labelMedium
                        ?.copyWith(color: $constants.palette.grey),
                  );
                },
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
