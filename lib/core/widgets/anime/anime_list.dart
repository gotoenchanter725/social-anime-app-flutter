import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/anime/anime_tile.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';

class AnimeList extends StatelessWidget {
  final List<AnimeModel> animeList;
  final void Function(AnimeModel anime) onAnimeTap;
  final AnimeModel? selectedAnime;
  const AnimeList(
      {super.key,
      required this.animeList,
      required this.onAnimeTap,
      this.selectedAnime});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: animeList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final anime = animeList[index];
        return AnimeTile(
          anime: anime,
          onTap: onAnimeTap,
          isActive: selectedAnime?.id == anime.id,
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: $constants.insets.xs);
      },
    );
  }
}
