import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SelectedAnimeList extends StatelessWidget {
  const SelectedAnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
      builder: (BuildContext context, ApplicationLocaleState applicationLocaleState) {
        return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
          builder: (context, state) {
            final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: bloc.selectedAnimeList
                  .map((anime) => _buildAnimeItem(context, anime, applicationLocaleState.locale))
                  .toList(),
            );
          },
        );
      },
    );
  }

  Widget _buildAnimeItem(BuildContext context, AnimeModel animeModel, Locale? locale) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    return GestureDetector(
      onTap: () {
        bloc.add(OnFavoriteAnimeSelectEvent(
          favoriteAnime: animeModel,
          isSelectedAnime: true,
        ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: $constants.insets.xs),
        padding: EdgeInsets.all($constants.insets.xs),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.xl),
          shape: BoxShape.rectangle,
          color: $constants.palette.lightBlue,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (animeModel.cover != null) _buildAnimeImage(animeModel.cover!),
            SizedBox(width: $constants.insets.xs),
            _buildAnimeTitle(context, animeModel.getLocalizedTitle(locale)),
            SizedBox(width: $constants.insets.xs),
            _buildIconClose(),
            SizedBox(width: $constants.insets.xxs),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimeImage(String animeUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular($constants.corners.xl),
      child: Image.network(
        animeUrl,
        height: $constants.insets.lg,
        width: $constants.insets.lg,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildAnimeTitle(BuildContext context, String title) {
    return Flexible(
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: getTextTheme(context).bodyMedium?.copyWith(
              color: $constants.palette.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  Widget _buildIconClose() {
    return Icon(
      Icons.close,
      size: $constants.insets.sm,
      color: $constants.palette.white,
    );
  }
}
