import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/anime/anime_tile.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';

class AnimeList extends StatelessWidget {
  final List<AnimeModel> animeList;
  final void Function(AnimeModel anime) onAnimeTap;
  const AnimeList(
      {super.key, required this.animeList, required this.onAnimeTap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        final anime = animeList[index];
        return AnimeTile(
          anime: anime,
          onTap: onAnimeTap,
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: $constants.insets.xs);
      },
    );
  }
}
