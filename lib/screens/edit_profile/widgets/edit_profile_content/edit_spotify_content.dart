import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditSpotifyContent extends StatelessWidget {
  const EditSpotifyContent({super.key});

  String _songsName(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    final List<String> songsNames = [];
    bloc.user.favoriteMusic?.forEach((element) {
      if (element.musicType == MusicType.track.name) {
        songsNames.add(element.trackName ?? '');
      }
    });

    return songsNames.isNotEmpty ? songsNames.join(", ") : '';
  }

  String _artistsName(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    final List<String> songsNames = [];
    bloc.user.favoriteMusic?.forEach((element) {
      if (element.musicType == MusicType.artist.name) {
        songsNames.add(element.artistName ?? '');
      }
    });

    return songsNames.isNotEmpty ? songsNames.join(", ") : '';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<EditProfileBloc>(context);
      return Column(
        children: [
          _buildTopArtistsButton(context),
          SizedBox(height: $constants.insets.sm),
          SenpaiSwitchWithTitle(
            value: bloc.shareTopArtists,
            title: R.strings.shareInFeedText,
            height: $constants.insets.xl,
            onChanged: (isShareTopArtists) {
              bloc.add(OnChangeShareTopArtistsEvent(
                isShareTopArtists: isShareTopArtists,
              ));
            },
          ),
          SizedBox(height: $constants.insets.sm),
          _buildTopSongsButton(context),
          SizedBox(height: $constants.insets.xs),
          SenpaiSwitchWithTitle(
            value: bloc.shareTopSongs,
            title: R.strings.shareInFeedText,
            height: $constants.insets.xl,
            onChanged: (isShareTopSongs) {
              bloc.add(OnChangeShareTopSongsEvent(
                isShareTopSongs: isShareTopSongs,
              ));
            },
          ),
        ],
      );
    });
  }

  Widget _buildTopArtistsButton(BuildContext context) {
    final editBloc = BlocProvider.of<EditProfileBloc>(context);
    final artists = _artistsName(context);
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: R.strings.topSpotifyArtistsText,
            onTap: () async {
              await context.router
                  .push(EditSpotifyMusicRoute(editBloc: editBloc))
                  .then((value) {
                final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
                fetchUserBloc.fetchUser(userId: int.parse(editBloc.user.id));
              });
            },
            isEmptyContent: artists.isEmpty,
          ),
          if (artists.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: $constants.insets.xxs),
              child: Row(
                children: [
                  Image.asset(
                    PathConstants.spotifyImage,
                    width: $constants.insets.md,
                    height: $constants.insets.md,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(width: $constants.insets.xs),
                  Flexible(
                    child: Text(
                      artists,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: getTextTheme(context)
                          .bodyMedium
                          ?.copyWith(color: $constants.palette.grey),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTopSongsButton(BuildContext context) {
    final songs = _songsName(context);
    final editBloc = BlocProvider.of<EditProfileBloc>(context);

    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: R.strings.topSpotifyListeningSongsText,
            onTap: () async {
              await context.router
                  .push(EditSpotifyMusicRoute(
                      isSpotifyArtists: false, editBloc: editBloc))
                  .then((value) {
                final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
                fetchUserBloc.fetchUser(userId: int.parse(editBloc.user.id));
              });
            },
            isEmptyContent: songs.isEmpty,
          ),
          if (songs.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: $constants.insets.xxs),
              child: Row(
                children: [
                  Image.asset(
                    PathConstants.spotifyImage,
                    width: $constants.insets.md,
                    height: $constants.insets.md,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(width: $constants.insets.xs),
                  Flexible(
                    child: Text(
                      songs,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: getTextTheme(context)
                          .bodyMedium
                          ?.copyWith(color: $constants.palette.grey),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
