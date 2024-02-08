import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/spotify_music_header.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PreviewSpotifyTracksWidget extends StatelessWidget {
  final List<UserFavoriteMusicModel> favoriteMusicList;

  const PreviewSpotifyTracksWidget({
    super.key,
    required this.favoriteMusicList,
  });

  List<UserFavoriteMusicModel> _topTracksList(BuildContext context) {
    final List<UserFavoriteMusicModel> tracksList = [];
    for (var element in favoriteMusicList) {
      if (element.musicType == MusicType.track.name) {
        tracksList.add(element);
      }
    }

    return tracksList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviewProfileBloc, PreviewProfileState>(
      buildWhen: (previous, current) => current is ValidSpotifyTracksState,
      builder: (context, state) {
        List<UserFavoriteMusicModel> tracksList = _topTracksList(context);
        final bloc = BlocProvider.of<PreviewProfileBloc>(context);
        if (tracksList.isEmpty) {
          return const SizedBox();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: $constants.palette.buttonBorder,
              height: $constants.insets.xl,
            ),
            SpotifyMusicHeader(
              title: R.strings.myTopSpotifyListeningSongsText,
              hasIndicators: tracksList.length > 3,
              isSecondPage: bloc.isTracksPagination,
            ),
            SizedBox(height: $constants.insets.sm),
            SizedBox(
              height: $constants.spotify.spotifyTracksHeight,
              width: getSize(context).width,
              child: ListView.builder(
                controller: bloc.tracksListController,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: tracksList.length,
                itemBuilder: (context, index) {
                  final track = tracksList[index];
                  return _buildItemTrack(context, track);
                },
              ),
            ),
            SizedBox(height: $constants.insets.sm),
          ],
        );
      },
    );
  }

  Widget _buildItemTrack(BuildContext context, UserFavoriteMusicModel track) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: $constants.corners.md),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular($constants.insets.xs),
                child: Image.network(
                  track.coverUrl,
                  height: $constants.spotify.spotifyImageSize,
                  width: $constants.spotify.spotifyImageSize,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: $constants.spotify.spotifyPlayPadding,
                left: $constants.spotify.spotifyPlayPadding,
                child: _buildBackdropFilter(),
              ),
            ],
          ),
        ),
        SizedBox(height: $constants.insets.xs),
        SizedBox(
          width: $constants.spotify.spotifyImageSize,
          child: _buildTrackName(context, track.trackName ?? ''),
        ),
        SizedBox(
          width: $constants.spotify.spotifyImageSize,
          child: _buildArtistName(context, track.artistName ?? ''),
        ),
      ],
    );
  }

  Widget _buildBackdropFilter() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: $constants.match.blur,
          sigmaY: $constants.match.blur,
        ),
        child: Container(
          height: $constants.corners.xxl,
          width: $constants.corners.xxl,
          alignment: Alignment.center,
          color: $constants.palette.black.withOpacity(0.3),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildTrackName(BuildContext context, String trackName) {
    return Text(
      trackName,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: getTextTheme(context).titleMedium?.copyWith(
            color: $constants.palette.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
    );
  }

  Widget _buildArtistName(BuildContext context, String artistName) {
    return Text(
      artistName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: getTextTheme(context).labelMedium?.copyWith(
            color: $constants.palette.grey,
            letterSpacing: 0,
          ),
    );
  }
}
