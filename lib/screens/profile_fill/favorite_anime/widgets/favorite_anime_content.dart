import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/search_anime_content.dart';

import 'start_favorite_anime_content.dart';

class FavoriteAnimeContent extends StatelessWidget {
  const FavoriteAnimeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

      if (bloc.step == FavoriteAnimeStep.animeContent) {
        return const StartFavoriteAnimeContent();
      } else {
        return const SearchFavoriteAnimeContent();
      }
    });
  }
}
