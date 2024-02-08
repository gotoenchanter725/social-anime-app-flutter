import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/core/widgets/anime/anime_tile.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';

class AnimeList extends StatelessWidget {
  final List<AnimeModel> animeList;
  final void Function(AnimeModel anime) onAnimeTap;
  final AnimeModel? selectedAnime;
  final ScrollController? scrollController;

  const AnimeList({
    super.key,
    required this.animeList,
    required this.onAnimeTap,
    this.selectedAnime,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
      builder: (BuildContext context, ApplicationLocaleState state) {
        return ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          itemCount: animeList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final anime = animeList[index];
            return AnimeTile(
              anime: anime,
              onTap: onAnimeTap,
              isActive: selectedAnime?.id == anime.id,
              locale: state.locale,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: $constants.insets.xs);
          },
        );
      },
    );
  }
}
