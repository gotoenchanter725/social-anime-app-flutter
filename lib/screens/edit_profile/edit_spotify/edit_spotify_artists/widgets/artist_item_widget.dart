import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/senpai_checkbox.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/bloc/edit_spotify_artists_bloc.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/spotify_helpers.dart';
import 'package:senpai/utils/methods/utils.dart';

class ArtistItemWidget extends StatelessWidget {
  final UserFavoriteMusicModel artist;

  const ArtistItemWidget({
    super.key,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);
    List<String> artistIds = bloc.selectedArtistsList
        .map((artist) => artist.spotifyId ?? '')
        .toList();
    bool isSelectedArtist = artistIds.contains(artist.spotifyId);

    return GestureDetector(
      onTap: () {
        openSpotify(artist.musicType, artist.spotifyId ?? '');
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: $constants.insets.xs),
        child: SenpaiCheckBox(
          title: '',
          value: isSelectedArtist,
          onChanged: (_) {
            bloc.add(OnEditArtistsChangedEvent(
              artist: artist,
              isSelectedArtist: isSelectedArtist,
            ));
          },
          leading: ClipRect(
            child: Image.network(
              artist.coverUrl,
              height: $constants.spotify.spotifyImageTrackHeight,
              width: $constants.spotify.spotifyImageTrackHeight,
              fit: BoxFit.cover,
            ),
          ),
          height: $constants.spotify.spotifyCheckBoxHeight,
          optionalContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                PathConstants.spotifyLogoImage,
                width: $constants.insets.offset,
              ),
              SizedBox(height: $constants.insets.xs),
              Text(
                artist.artistName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: getTextTheme(context).bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
