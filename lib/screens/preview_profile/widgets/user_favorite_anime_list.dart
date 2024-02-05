import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class UserFavoriteAnimeList extends StatelessWidget {
  final List<AnimeModel> animes;

  const UserFavoriteAnimeList({
    super.key,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    if (animes.isEmpty) {
      return const SizedBox();
    }
    return BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
      builder: (BuildContext context, ApplicationLocaleState state) {
        return Wrap(
          spacing: $constants.insets.xs,
          runSpacing: $constants.insets.xs,
          children: List.generate(
            animes.length,
            (i) => _buildItemAnime(
              context,
              animes[i],
              state.locale,
            ),
          ),
        );
      },
    );
  }

  Widget _buildItemAnime(BuildContext context, AnimeModel animeModel, Locale? locale) {
    return Container(
      padding: EdgeInsets.all($constants.insets.xs),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.xl),
        shape: BoxShape.rectangle,
        color: $constants.palette.buttonBorder,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (animeModel.cover != null) _buildAnimeImage(animeModel.cover!),
          SizedBox(width: $constants.insets.xs),
          _buildAnimeTitle(context, animeModel.getLocalizedTitle(locale)),
          SizedBox(width: $constants.insets.xs),
        ],
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
              fontSize: 14,
            ),
      ),
    );
  }
}
