import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/search_anime_content.dart';
import 'package:senpai/utils/constants.dart';

import 'edit_favorite_anime_list.dart';

class EditFavoriteAnimeContent extends StatelessWidget {
  const EditFavoriteAnimeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

        if (bloc.step == FavoriteAnimeStep.animeContent) {
          return const EditFavoriteAnimeList();
        } else {
          return Column(
            children: [
              SizedBox(height: $constants.insets.sm),
              const Expanded(child: SearchFavoriteAnimeContent()),
            ],
          );
        }
      },
    );
  }
}
