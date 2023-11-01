import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SearchAnimeList extends StatelessWidget {
  const SearchAnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
        return Column(
          children: bloc.animeList
              .map((anime) => _buildAnimeItem(context, anime))
              .toList(),
        );
      },
    );
  }

  Widget _buildAnimeItem(BuildContext context, AnimeModel animeModel) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    bool isSelectedAnime = bloc.selectedAnimeList.contains(animeModel);
    return GestureDetector(
      onTap: () {
        bloc.add(OnFavoriteAnimeSelectEvent(favoriteAnime: animeModel));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: $constants.insets.xs),
        padding: EdgeInsets.all($constants.insets.xs),
        decoration: _boxDecoration(isSelectedAnime),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildAnimeImage(animeModel.cover!),
            SizedBox(width: $constants.insets.sm),
            _buildTitle(
              context,
              title: animeModel.title ?? '',
              description: animeModel.id,
            ),
            SizedBox(width: $constants.insets.xs),
            _buildIcon(isSelectedAnime),
            SizedBox(width: $constants.insets.xs),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimeImage(String animeUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular($constants.corners.sm),
      child: Image.network(
        animeUrl,
        height: $constants.insets.xxl,
        width: $constants.insets.xxl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTitle(
    BuildContext context, {
    required String title,
    String? description,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: getTextTheme(context).bodyMedium?.copyWith(
                  color: $constants.palette.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Text(
            description ?? '',
            overflow: TextOverflow.ellipsis,
            style: getTextTheme(context).bodyMedium?.copyWith(
                  color: $constants.palette.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(bool isSelectedAnime) {
    final iconColor =
        isSelectedAnime ? $constants.palette.green : $constants.palette.pink;
    return Icon(
      isSelectedAnime ? Icons.done : Icons.add,
      size: $constants.insets.sm,
      color: iconColor,
    );
  }

  BoxDecoration _boxDecoration(bool isSelectedAnime) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular($constants.corners.md),
      shape: BoxShape.rectangle,
      color: $constants.palette.lightBlue,
      border: Border.all(
        color: isSelectedAnime
            ? $constants.palette.green
            : $constants.palette.lightBlue,
        width: 1.0,
      ),
    );
  }
}
