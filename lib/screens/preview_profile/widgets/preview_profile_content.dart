import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/preview_profile/widgets/active_status_widget.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/cupertino_modal_element.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_bottom_buttons.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_spotify_artists_widget.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_spotify_tracks_widget.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_title_info_widget.dart';
import 'package:senpai/screens/preview_profile/widgets/user_favorite_anime_list.dart';
import 'package:senpai/screens/preview_profile/widgets/carousel_photo.dart';
import 'package:senpai/screens/profile/widgets/profile_name_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class DesiredPreviewProfileContent extends StatelessWidget {
  final bool isShowBottomButtons;
  final VoidCallback? onTapClose;
  final VoidCallback? onTapLike;
  final bool isShowDistance;

  const DesiredPreviewProfileContent({
    Key? key,
    this.isShowBottomButtons = false,
    this.isShowDistance = false,
    this.onTapClose,
    this.onTapLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviewProfileBloc, PreviewProfileState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PreviewProfileBloc>(context);
        List<String> listImages = [];
        if (bloc.user.gallery != null && bloc.user.gallery!.photos.isNotEmpty) {
          listImages =
              bloc.user.gallery!.photos.map((e) => e.url ?? '').toList();
        }
        return Stack(
          children: <Widget>[
            CarouselPhoto(
              listImages: listImages,
              isShowProfileInfo: false,
              isAdmin: bloc.user.role == 'admin',
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                minChildSize: isShowBottomButtons ? 0.4 : 0.2,
                builder: (
                  BuildContext context,
                  ScrollController scrollController,
                ) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: $constants.insets.sm,
                    ),
                    decoration: BoxDecoration(
                      color: $constants.palette.appBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular($constants.insets.md),
                        topRight: Radius.circular($constants.insets.md),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: $constants.insets.md,
                          child: const CupertinoModalElement(),
                        ),
                        Flexible(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            physics: const ClampingScrollPhysics(),
                            child: Padding(
                              padding: EdgeInsets.all($constants.insets.xs),
                              child: _buildSlidingPanelContent(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (isShowBottomButtons)
              Positioned(
                bottom: 0,
                child: PreviewBottomButtons(
                  onTapClose: onTapClose,
                  onTapLike: onTapLike,
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildSlidingPanelContent(BuildContext context) {
    final bloc = BlocProvider.of<PreviewProfileBloc>(context);
    final bio = bloc.user.bio ?? '';
    final school = bloc.user.school ?? '';
    final occupation = bloc.user.occupation ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: $constants.insets.md),
        ActiveStatusWidget(activeStatus: bloc.user.onlineStatus),
        ProfileNameHeader(
          name: bloc.user.firstName ?? '',
          birthday: bloc.user.birthday,
          verified: bloc.user.verified,
          isCenter: false,
          isAdmin: bloc.user.role == 'admin',
        ),
        if (isShowDistance && bloc.user.hasLocationHidden != true)
          ..._buildLocation(context),
        if (bio.isNotEmpty || school.isNotEmpty || occupation.isNotEmpty)
          Divider(
            color: $constants.palette.buttonBorder,
            height: $constants.insets.xl,
          ),
        ..._buildBio(context, bio),
        ..._buildSchool(school),
        _buildOccupation(occupation),
        if (bloc.user.animes != null && bloc.user.animes!.isNotEmpty) ...{
          Divider(
            color: $constants.palette.buttonBorder,
            height: $constants.insets.xl,
          ),
          _buildTitle(context, R.strings.favoriteAnimesTitle),
          SizedBox(height: $constants.insets.sm),
          UserFavoriteAnimeList(animes: bloc.user.animes ?? []),
        },
        PreviewSpotifyArtistsWidget(
          favoriteMusicList: bloc.user.favoriteMusic ?? [],
        ),
        PreviewSpotifyTracksWidget(
          favoriteMusicList: bloc.user.favoriteMusic ?? [],
        ),
        if (isShowBottomButtons) SizedBox(height: $constants.insets.offset),
      ],
    );
  }

  List<Widget> _buildBio(BuildContext context, String bio) {
    if (bio.isNotEmpty) {
      return [
        _buildTitle(context, R.strings.aboutMeTitle),
        Text(
          bio,
          style: getTextTheme(context)
              .bodyMedium
              ?.copyWith(color: $constants.palette.white),
        ),
        SizedBox(height: $constants.insets.md),
      ];
    }
    return [];
  }

  List<Widget> _buildSchool(String school) {
    if (school.isNotEmpty) {
      return [
        PreviewTitleInfoWidget(
          title: R.strings.studiedAtTitle,
          icon: PathConstants.universityIcon,
          text: school,
        ),
        SizedBox(height: $constants.insets.sm),
      ];
    }
    return [];
  }

  Widget _buildOccupation(String occupation) {
    if (occupation.isNotEmpty) {
      return PreviewTitleInfoWidget(
        title: R.strings.workingAsTitle,
        icon: PathConstants.jobIcon,
        text: occupation,
      );
    }
    return const SizedBox();
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title,
      style: getTextTheme(context).titleMedium?.copyWith(
            color: $constants.palette.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
    );
  }

  List<Widget> _buildLocation(BuildContext context) {
    final bloc = BlocProvider.of<PreviewProfileBloc>(context);
    final displayCity = bloc.user.displayCity ?? '';
    final displayState = bloc.user.displayState ?? '';
    return [
      SizedBox(height: $constants.insets.xs),
      if (displayCity.isNotEmpty || displayState.isNotEmpty)
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: getTextTheme(context)
                .bodyMedium
                ?.copyWith(color: $constants.palette.white),
            children: [
              TextSpan(
                text: displayCity,
              ),
              if (displayCity.isNotEmpty && displayState.isNotEmpty)
                const TextSpan(text: ', '),
              TextSpan(
                text: displayState,
              ),
            ],
          ),
        ),
      SizedBox(height: $constants.insets.xs),
      PreviewTitleInfoWidget(
        title: '${bloc.distance.mi} ${R.strings.milesAwayText}',
        icon: PathConstants.locationMarkerIcon,
      ),
    ];
  }
}
