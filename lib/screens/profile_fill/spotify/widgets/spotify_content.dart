import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/spotify/bloc/spotify_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SpotifyContent extends StatelessWidget {
  const SpotifyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          _buildHeader(context),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Image.asset(
            PathConstants.spotifyBg,
            height: getSize(context).height * 0.3,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildSpotifyButton(context),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: R.strings.connectYourSpotifyText,
      description: R.strings.connectYourSpotifyDescription,
      isCenterTitle: true,
      onTapSkipkButton: () {
        bloc.add(
          OnChangeStepEvent(step: ProfileFillStep.animes),
        );
      },
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(step: ProfileFillStep.location),
        );
      },
    );
  }

  Widget _buildSpotifyButton(BuildContext context) {
    final bloc = BlocProvider.of<SpotifyBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    final serviceBloc = BlocProvider.of<AddFavoriteMusicBloc>(context);
    final serverFetchUserBloc = BlocProvider.of<FetchUserBloc>(context);

    return BlocListener<SpotifyBloc, SpotifyState>(
      listener: (context, state) {
        if (state is SpotifyFetchArtistsSucssesfulState) {
          bloc.add(OnSpotifyFetchTracksEvent());
        }
        if (state is SpotifyTracksSucssesfulState) {
          if (bloc.favoriteMusicList.isNotEmpty) {
            serviceBloc.addFavoriteMusicList(
              userId: blocProfileFill.userId,
              listFavoriteMusic: bloc.favoriteMusicList,
            );
          } else {
            blocProfileFill.add(
              OnChangeStepEvent(step: ProfileFillStep.animes),
            );
          }
        }
      },
      child: PrimaryButton(
        text: R.strings.connectSpotifyText,
        onPressed: () async {
          if (bloc.selectedFavoriteMusicList.isNotEmpty) {
            blocProfileFill.add(
              OnChangeStepEvent(step: ProfileFillStep.animes),
            );
          } else {
            serverFetchUserBloc.fetchUser(userId: blocProfileFill.userId);
          }
        },
      ),
    );
  }
}
