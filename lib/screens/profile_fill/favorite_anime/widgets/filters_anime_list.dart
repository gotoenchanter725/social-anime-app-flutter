import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/enums/anime_enums.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

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
                child: FilterChip(
                  showCheckmark: false,
                  label: Text(
                    genre.genresString,
                    style: getTextTheme(context).titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: bloc.genresList.contains(genre)
                              ? $constants.palette.lightBlue
                              : $constants.palette.white,
                        ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular($constants.corners.xl),
                  ),
                  side: BorderSide(
                    width: 1.0,
                    color: $constants.palette.buttonBorder,
                  ),
                  backgroundColor: $constants.palette.darkBlue,
                  selectedColor: $constants.palette.white,
                  selected: bloc.genresList.contains(genre),
                  onSelected: (bool selected) {
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
