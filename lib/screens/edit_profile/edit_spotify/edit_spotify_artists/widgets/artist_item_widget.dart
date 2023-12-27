import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/senpai_checkbox.dart';

import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/bloc/edit_spotify_artists_bloc.dart';

import 'package:senpai/utils/constants.dart';

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

    return Padding(
      padding: EdgeInsets.only(bottom: $constants.insets.xs),
      child: SenpaiCheckBox(
        title: artist.artistName ?? '',
        value: isSelectedArtist,
        onChanged: (_) {
          bloc.add(OnEditArtistsChangedEvent(
            artist: artist,
            isSelectedArtist: isSelectedArtist,
          ));
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular($constants.insets.xs),
          child: Image.network(
            artist.coverUrl,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
