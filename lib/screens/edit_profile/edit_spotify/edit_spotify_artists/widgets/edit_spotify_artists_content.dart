import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';

import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/bloc/edit_spotify_artists_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/widgets/artist_item_widget.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/widgets/disconnect_spotify_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart'
    as edit;
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditSpotifyArtistsContent extends StatelessWidget {
  const EditSpotifyArtistsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditSpotifyArtistsBloc, EditSpotifyArtistsState>(
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
                      _buildSelectedArtistList(context),
                      _buildTopArtistList(context),
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
    final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);
    final editBloc = BlocProvider.of<edit.EditProfileBloc>(context);
    final serverAddArtistsBloc = BlocProvider.of<AddFavoriteMusicBloc>(context);
    final serverDeleteArtistsBloc =
        BlocProvider.of<DeleteFavoriteMusicBloc>(context);
    int userId = int.parse(editBloc.user.id);

    return BlocListener<EditSpotifyArtistsBloc, EditSpotifyArtistsState>(
      listenWhen: (_, currState) =>
          currState is EditSpotifyArtistsAddSucssesfulState ||
          currState is EditSpotifyArtistsDeleteSucssesfulState,
      listener: (context, state) async {
        if (state is EditSpotifyArtistsDeleteSucssesfulState &&
            bloc.selectedArtistsList.isNotEmpty) {
          serverAddArtistsBloc.addFavoriteMusicList(
            userId: userId,
            listFavoriteMusic: bloc.selectedArtistsList,
          );
        } else {
          await context.router.pop();
        }
      },
      child: ProfileAppBar(
        title: R.strings.topArtistsText,
        hasLeading: true,
        onDoneTap: () {
          if (bloc.artistsList.isNotEmpty) {
            final musicIds = bloc.artistsList.map((track) => track.id).toList();
            serverDeleteArtistsBloc.deleteFavoriteMusicList(
              userId: userId,
              musicIds: musicIds,
            );
          } else if (bloc.selectedArtistsList.isNotEmpty) {
            serverAddArtistsBloc.addFavoriteMusicList(
              userId: userId,
              listFavoriteMusic: bloc.selectedArtistsList,
            );
          } else {
            bloc.add(OnUpdateFavoriteArtistsEvent());
          }
        },
      ),
    );
  }

  Widget _buildChoosenText(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);
    return Text(
      '${R.strings.chosenText} '
      '(${bloc.selectedArtistsList.length}/${bloc.maxAnimeCount})',
      style: getTextTheme(context).headlineSmall?.copyWith(),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildSelectedArtistList(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);

    if (bloc.artistsList.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
          child: Text(
            R.strings.selectedArtistsText,
            style: getTextTheme(context).headlineSmall,
          ),
        ),
        Column(
          children: bloc.artistsList
              .map((artist) => ArtistItemWidget(artist: artist))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildTopArtistList(BuildContext context) {
    final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);

    if (bloc.topArtistsList.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
          child: Text(
            R.strings.topArtistsText,
            style: getTextTheme(context).headlineSmall,
          ),
        ),
        Column(
          children: bloc.topArtistsList
              .map((artist) => ArtistItemWidget(artist: artist))
              .toList(),
        ),
      ],
    );
  }
}
