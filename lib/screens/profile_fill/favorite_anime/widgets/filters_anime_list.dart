import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/senpai_filter_chip.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/enums/anime_enums.dart';
import 'package:senpai/utils/constants.dart';

class FiltersAnimeList extends StatelessWidget {
  const FiltersAnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: AnimeGenresEnums.values.map((AnimeGenresEnums genre) {
              return Padding(
                padding: EdgeInsets.only(right: $constants.insets.xs),
                child: SenpaiFilterChip(
                  title: genre.genresString,
                  isSelected: bloc.genresList.contains(genre),
                  onTapSelect: (bool selected) {
                    bloc.add(
                      OnSelectGenreAnimesEvent(
                        genre: genre,
                        selected: selected,
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
