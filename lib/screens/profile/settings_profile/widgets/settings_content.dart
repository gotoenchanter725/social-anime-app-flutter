import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/local_key.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/mappers/user_profile_mapper.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/cupertino_logout_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/delete_account_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/setting_premium_widget.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_avatar_card_item.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsContent extends StatefulWidget {
  const SettingsContent({super.key});

  @override
  State<SettingsContent> createState() => _SettingsContentState();
}

class _SettingsContentState extends State<SettingsContent> {
  final List<Map<String, dynamic>> avatarSkins = [
    {
      "name": "Yumeko Jabami",
      "status": "Emote",
      "profile":
          "https://th.bing.com/th/id/OIP.r5Y8R7yn6-0A_mbijVucnQHaHZ?rs=1&pid=ImgDetMain",
      "image": "https://wallpapercave.com/wp/wp7152064.jpg",
      "isNew": true,
      "product_id": 1,
    },
    {
      "product_id": 2,
      "name": "Satoru Gojo",
      "status": "Buy",
      "profile":
          "https://cdna.artstation.com/p/assets/images/images/053/054/138/large/avetetsuya-studios-alien.jpg?1661309922",
      "image":
          "https://th.bing.com/th/id/OIP.t2-WUEoELg8LjksAZ8dJrgAAAA?rs=1&pid=ImgDetMain",
      "isNew": true,
    },
    {
      "product_id": 3,
      "name": "Monkey D. Luffy",
      "status": "Premium",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.edf5a7600628b4500e94d4e404af407b?rik=POg5zdgXd%2bxSVg&riu=http%3a%2f%2fm.gettywallpapers.com%2fwp-content%2fuploads%2f2023%2f05%2fJapanese-Anime-Boy-Profile-Picture.jpg&ehk=zq6b58zWRPs0qH%2bo32Us8NSSP%2ba4aFfr7uXTP9lUmHY%3d&risl=&pid=ImgRaw&r=0",
      "isNew": false,
    },
    {
      "product_id": 4,
      "name": "Levi Ackerman",
      "status": "Emote",
      "profile":
          "https://i.pinimg.com/originals/21/f4/46/21f4466cdcd1f132aa5cf9fe4c8b529d.jpg",
      "image":
          "https://i.pinimg.com/originals/36/95/71/369571e6e7e38b37750edfa91c22a3cc.jpg",
      "isNew": false,
    },
    {
      "product_id": 5,
      "name": "Drakken Joe",
      "status": "Premium",
      "profile":
          "https://i.pinimg.com/736x/c8/d1/db/c8d1dbd23718b07d374b8b891970117a.jpg",
      "image":
          "https://wallpapers.com/images/hd/matching-anime-profile-pictures-1080-x-1080-diw0d7jbom3sn7o3.jpg",
      "isNew": false,
    },
    {
      "product_id": 6,
      "name": "Tsunade",
      "status": "Buy",
      "profile":
          "https://th.bing.com/th/id/OIP.rFtW3ETt5PdoNgBaKTHLyQHaF7?rs=1&pid=ImgDetMain",
      "image": "https://cdn.wallpapersafari.com/6/86/JAvgzR.jpg",
      "isNew": false,
    },
  ];
  var removeLocationSlider = true;
  var selectedAvatarIndex = -1;

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
                    image: AssetImage(PathConstants
                        .btnReddit), // Replace with your image path
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
                    image: AssetImage(PathConstants
                        .btnTwitter), // Replace with your image path
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
                          Color(0x7D334256), // Start color
                          Colors.transparent, // End color
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomLeft,
                        stops: [0.2, 1.4]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
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
                    padding: EdgeInsets.only(top: getWidthSize(context, 0.03)),
                    child: Text(
                      "Change Your Avatar",
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ),
                ),
                Container(
                  width: getWidthSize(context, 0.112),
                  height: getWidthSize(context, 0.112),
                  margin: EdgeInsets.only(top: getWidthSize(context, 0.01)),
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
              itemCount: avatarSkins.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 100 / 174,
              ),
              padding: EdgeInsets.all(getWidthSize(context, 0.032)),
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      if (selectedAvatarIndex == index) {
                        selectedAvatarIndex = -1;
                      } else {
                        selectedAvatarIndex = index;
                      }
                    });
                  },
                  child: SettingsAvatarCardItem(
                      data: avatarSkins[index],
                      selected: index == selectedAvatarIndex)),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildTestAvatarButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
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

  Widget _buildSettingsContent(BuildContext context) {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<SettingsProfileBloc>(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // SenpaiSwitchWithTitle(
            //   value: avatarEnabled,
            //   title: "Avatar",
            //   onChanged: (isOn) {
            //     avatarEnabled = isOn;
            //   },
            // ),
            SizedBox(height: $constants.insets.sm),
            _buildChangeYourAvatar(context),
            if (selectedAvatarIndex != -1)
              SizedBox(height: $constants.insets.sm),
            if (selectedAvatarIndex != -1) _buildTestAvatarButton(context),
            SizedBox(height: $constants.insets.sm),
            SenpaiSwitchWithTitle(
              value: removeLocationSlider,
              title: "Remove Location slider",
              onChanged: (isOn) {
                removeLocationSlider = isOn;
              },
            ),
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
            // 24.01 Herbert Joseph: Let's remove/hide for now.
            // Container(
            //   padding: EdgeInsets.all($constants.insets.sm),
            //   decoration: profileBoxDecoration(),
            //   child: ProfileItemHeader(
            //     title: R.strings.feedbackOnSenpaiTitle,
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
            //   text: R.strings.restorePurchasesButton,
            //   onPressed: () {},
            //   hasBackgroundColor: true,
            // ),
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
            SizedBox(height: MediaQuery.of(context).padding.bottom),
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
