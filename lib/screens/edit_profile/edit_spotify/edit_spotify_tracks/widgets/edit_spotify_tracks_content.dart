import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';

import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_tracks/bloc/edit_spotify_tracks_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_tracks/widgets/track_item_widget.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart'
    as edit;
import 'package:senpai/screens/edit_profile/edit_spotify/widgets/disconnect_spotify_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditSpotifyTracksContent extends StatelessWidget {
  const EditSpotifyTracksContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditSpotifyTracksBloc, EditSpotifyTracksState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: $constants.insets.sm),
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: $constants.insets.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildChoosenText(context),
                      _buildSelectedTracksList(context),
                      _buildTopTracksList(context),
                    ],
                  ),
                ),
              ),
            ),
            const DisconnectSpotifyWidget(),
            SizedBox(height: $constants.insets.sm),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);
    final editBloc = BlocProvider.of<edit.EditProfileBloc>(context);
    final serverAddTracksBloc = BlocProvider.of<AddFavoriteMusicBloc>(context);
    final serverDeleteTracksBloc =
        BlocProvider.of<DeleteFavoriteMusicBloc>(context);
    int userId = int.parse(editBloc.user.id);

    return BlocListener<EditSpotifyTracksBloc, EditSpotifyTracksState>(
      listenWhen: (_, currState) =>
          currState is EditSpotifyTracksAddSucssesfulState ||
          currState is EditSpotifyTracksDeleteSucssesfulState,
      listener: (context, state) async {
        if (state is EditSpotifyTracksDeleteSucssesfulState &&
            bloc.selectedTracksList.isNotEmpty) {
          serverAddTracksBloc.addFavoriteMusicList(
            userId: userId,
            listFavoriteMusic: bloc.selectedTracksList,
          );
        } else {
          await context.router.pop();
        }
      },
      child: ProfileAppBar(
        title: R.strings.topListeningSongText,
        hasLeading: true,
        onDoneTap: () {
          if (bloc.tracksList.isNotEmpty) {
            final musicIds = bloc.tracksList.map((track) => track.id).toList();
            serverDeleteTracksBloc.deleteFavoriteMusicList(
              userId: userId,
              musicIds: musicIds,
            );
          } else if (bloc.selectedTracksList.isNotEmpty) {
            serverAddTracksBloc.addFavoriteMusicList(
              userId: userId,
              listFavoriteMusic: bloc.selectedTracksList,
            );
          } else {
            bloc.add(OnUpdateFavoriteTracksEvent());
          }
        },
      ),
    );
  }

  Widget _buildChoosenText(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);
    return Text(
      '${R.strings.chosenText} '
      '(${bloc.selectedTracksList.length}/${bloc.maxAnimeCount})',
      style: getTextTheme(context).headlineSmall?.copyWith(),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildSelectedTracksList(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);

    if (bloc.tracksList.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
          child: Text(
            R.strings.selectedTracksText,
            style: getTextTheme(context).headlineSmall,
          ),
        ),
        Column(
          children: bloc.tracksList
              .map((track) => TrackItemWidget(track: track))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildTopTracksList(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);

    if (bloc.topTracksList.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
          child: Text(
            R.strings.topListeningSongText,
            style: getTextTheme(context).headlineSmall,
          ),
        ),
        Column(
          children: bloc.topTracksList
              .map((track) => TrackItemWidget(track: track))
              .toList(),
        ),
      ],
    );
  }
}
