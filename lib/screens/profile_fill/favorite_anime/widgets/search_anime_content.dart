import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/enums/anime_enums.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/choosen_text_widget.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/empty_search_anime_widget.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/filters_anime_list.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/search_anime_list.dart';
import 'package:senpai/utils/constants.dart';

class SearchFavoriteAnimeContent extends StatelessWidget {
  const SearchFavoriteAnimeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: $constants.insets.md),
          _buildTextInput(context),
          SizedBox(height: $constants.insets.md),
          const FiltersAnimeList(),
          SizedBox(height: $constants.insets.md),
          const ChosenTextWidget(),
          SizedBox(height: $constants.insets.sm),
          _buildAnimeList(context),
          SizedBox(height: $constants.insets.sm),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildSubmitButton(context),
          ),
          SizedBox(height: $constants.insets.sm),
        ],
      ),
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        return SenpaiIconInput(
          hintText: R.strings.searchText,
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

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    return PrimaryButton(
      text: R.strings.saveText,
      onPressed: () {
        bloc.add(OnChangeAnimeStepEvent(step: FavoriteAnimeStep.animeContent));
      },
    );
  }

  Widget _buildAnimeList(BuildContext context) {
    final blocFetchAnime = BlocProvider.of<FetchAnimeBloc>(context);
    return BlocConsumer<FavoriteAnimeBloc, FavoriteAnimeState>(
      listenWhen: (_, currState) => currState is FavoriteAnimeFetchState,
      listener: (context, state) {
        final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
        blocFetchAnime.add(blocFetchAnime.fetchAnime(
          genres: bloc.genresList.map((genre) => genre.englishGenresString).toList(),
          page: bloc.page,
          title: bloc.searchText,
        ));
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

        return Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: bloc.animeListController,
            child: bloc.animeList.isEmpty && bloc.searchText.isNotEmpty
                ? const EmptySearchAnimeWidget()
                : const SearchAnimeList(),
          ),
        );
      },
    );
  }
}
