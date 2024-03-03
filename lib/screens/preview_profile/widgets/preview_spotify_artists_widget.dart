import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/spotify_music_header.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/spotify_helpers.dart';
import 'package:senpai/utils/methods/utils.dart';

class PreviewSpotifyArtistsWidget extends StatelessWidget {
  final List<UserFavoriteMusicModel> favoriteMusicList;

  const PreviewSpotifyArtistsWidget({
    super.key,
    required this.favoriteMusicList,
  });

  List<UserFavoriteMusicModel> _topArtistsList(BuildContext context) {
    final List<UserFavoriteMusicModel> artistsList = [];
    for (var element in favoriteMusicList) {
      if (element.musicType == MusicType.artist.name) {
        artistsList.add(element);
      }
    }

    return artistsList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviewProfileBloc, PreviewProfileState>(
      buildWhen: (previous, current) => current is ValidSpotifyTracksState,
      builder: (context, state) {
        List<UserFavoriteMusicModel> artistsList = _topArtistsList(context);
        final bloc = BlocProvider.of<PreviewProfileBloc>(context);
        if (artistsList.isEmpty) {
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
              title: R.strings.myTopSpotifyArtistsText,
              hasIndicators: artistsList.length > 3,
              isSecondPage: bloc.isArtistsPagination,
            ),
            SizedBox(height: $constants.insets.sm),
            SizedBox(
              height: $constants.spotify.spotifyArtistsHeight,
              width: getSize(context).width,
              child: ListView.builder(
                controller: bloc.artistsListController,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: artistsList.length,
                itemBuilder: (context, index) {
                  final artist = artistsList[index];
                  return _buildItemArtist(context, artist);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildItemArtist(BuildContext context, UserFavoriteMusicModel artist) {
    return GestureDetector(
      onTap: () {
        openSpotify(artist.musicType, artist.spotifyId ?? '');
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: $constants.corners.md,
            ),
            child: ClipRect(
              child: Image.network(
                artist.coverUrl,
                height: $constants.spotify.spotifyImageSize,
                width: $constants.spotify.spotifyImageSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: $constants.insets.xs),
          SizedBox(
            width: $constants.spotify.spotifyImageSize,
            child: _buildArtistName(context, artist.artistName ?? ''),
          ),
        ],
      ),
    );
  }

  Widget _buildArtistName(BuildContext context, String artistName) {
    return Text(
      artistName,
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
}
