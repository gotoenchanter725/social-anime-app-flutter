import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/senpai_checkbox.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_tracks/bloc/edit_spotify_tracks_bloc.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class TrackItemWidget extends StatelessWidget {
  final UserFavoriteMusicModel track;

  const TrackItemWidget({
    super.key,
    required this.track,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);

    List<String> trackIds =
        bloc.selectedTracksList.map((track) => track.spotifyId ?? '').toList();
    bool isSelectedTrack = trackIds.contains(track.spotifyId);
    return Padding(
      padding: EdgeInsets.only(bottom: $constants.insets.xs),
      child: SenpaiCheckBox(
        title: track.trackName ?? '',
        value: isSelectedTrack,
        height: $constants.spotify.spotifyCheckBoxHeight,
        onChanged: (_) {
          bloc.add(OnEditTracksChangedEvent(
            track: track,
            isSelectedTrack: isSelectedTrack,
          ));
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular($constants.insets.xs),
          child: Image.network(
            track.coverUrl,
            height: $constants.spotify.spotifyImageTrackHeight,
            width: $constants.spotify.spotifyImageTrackHeight,
            fit: BoxFit.cover,
          ),
        ),
        optionalContent: Row(
          children: [
            SvgPicture.asset(
              PathConstants.spotifyIcon,
              width: $constants.insets.sm,
              height: $constants.insets.sm,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
            SizedBox(width: $constants.insets.xxs),
            Flexible(
              child: Text(
                track.trackName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: getTextTheme(context)
                    .labelMedium
                    ?.copyWith(color: $constants.palette.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
