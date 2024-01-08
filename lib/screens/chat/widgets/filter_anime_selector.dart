// This is shown when the search input is tapped on the anime selector screen.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/anime/anime_list.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class FilterAnimeSelector extends StatelessWidget {
  final void Function(AnimeModel) onAnimeSelected;

  const FilterAnimeSelector({super.key, required this.onAnimeSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: getSize(context).width * 0.637,
              child: _buildSearchInput(context),
            ),
            SizedBox(
              width: $constants.insets.sm,
            ),
            _buildCancelButton(context),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchInput(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        return SenpaiIconInput(
          hintText: TextConstants.searchAnimesHintText,
          controller: bloc.searchController,
          onChange: (String search) {
            bloc.add(OnSearchAnimesEvent(searchText: search));
          },
          iconPath: PathConstants.searchIcon,
          onTapSuffix: () {
            final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
            bloc.searchController.clear();
            bloc.add(OnSearchAnimesEvent(searchText: ''));
          },
        );
      },
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: implement onPressed
      },
      child: Text(
        TextConstants.cancelSearchText,
        style: getTextTheme(context)
            .labelMedium!
            .copyWith(color: $constants.palette.white, fontSize: 14),
      ),
    );
  }

  Widget _buildAnimeList(BuildContext context) {
    return BlocBuilder<FetchUserBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox.shrink();
        }, loaded: (data, result) {
          return AnimeList(
            animeList: bloc.animeList,
            onAnimeTap: (anime) {
              // TODO: implement onAnimeTap
            },
          );
        });
      },
    );
  }
}
