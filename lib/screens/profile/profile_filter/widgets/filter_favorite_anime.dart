import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/core/widgets/senpai_checkbox.dart';
import 'package:senpai/core/widgets/senpai_filter_chip.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_bloc/profile_filter_bloc.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/enums/anime_enums.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/empty_search_anime_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class FilterFavoriteAnime extends StatelessWidget {
  const FilterFavoriteAnime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
        return Column(
          children: [
            SizedBox(height: $constants.insets.sm),
            _buildHeader(context),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildTextInput(context),
                    SizedBox(height: $constants.insets.md),
                    _buildFilters(context),
                    SizedBox(height: $constants.insets.md),
                    Text(
                      '${R.strings.chosenText} '
                      '(${bloc.selectedAnimeList.length}/${bloc.maxAnimeCount})',
                      style: getTextTheme(context).headlineSmall?.copyWith(),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: $constants.insets.sm),
                    Expanded(child: _buildListAnime(context)),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    final favoriteAnimeBloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    return ProfileAppBar(
      title: R.strings.favoriteAnimesTitle,
      hasLeading: true,
      onTapLeading: () {
        bloc.add(OnChangeFilterStepEvent(step: ProfileFilterStep.filters));
      },
      onDoneTap: () {
        bloc.add(
          OnChangeSelectedAnimeList(
            selectedAnimeList: favoriteAnimeBloc.selectedAnimeList,
          ),
        );
      },
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        return SenpaiIconInput(
          hintText: R.strings.searchAnimesHintText,
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

  Widget _buildFilters(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: $constants.insets.xs),
            child: SenpaiFilterChip(
              title: R.strings.myAnimesText,
              isSelected: bloc.showMyAnimeList,
              onTapSelect: (bool selected) {
                bloc.add(
                  OnChangeShowMyAnimeListEvent(
                    showMyAnimeList: selected,
                  ),
                );
              },
            ),
          ),
          Row(
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
        ],
      ),
    );
  }

  Widget _buildListAnime(BuildContext context) {
    final blocFetchAnime = BlocProvider.of<FetchAnimeBloc>(context);
    return BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
      builder: (BuildContext context, ApplicationLocaleState applicationLocaleState) {
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
            if (bloc.animeList.isEmpty && !bloc.showMyAnimeList) {
              return const EmptySearchAnimeWidget();
            }
            if (bloc.showMyAnimeList) {
              return ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: bloc.myAnimeList.length,
                itemBuilder: (context, index) {
                  final anime = bloc.myAnimeList[index];
                  return _buildAnimeItem(context, anime, applicationLocaleState.locale);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                },
              );
            }
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              controller: bloc.animeListController,
              itemCount: bloc.animeList.length,
              itemBuilder: (context, index) {
                final anime = bloc.animeList[index];
                return _buildAnimeItem(context, anime, applicationLocaleState.locale);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
            );
          },
        );
      },
    );
  }

  Widget _buildAnimeItem(BuildContext context, AnimeModel anime, Locale? locale) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    final animeIds = bloc.selectedAnimeList.map((anime) => anime.id).toList();

    bool isSelectedAnime = animeIds.contains(anime.id);

    return SenpaiCheckBox(
      title: anime.getLocalizedTitle(locale),
      value: isSelectedAnime,
      onChanged: (_) {
        bloc.add(OnFavoriteAnimeSelectEvent(
          favoriteAnime: anime,
          isSelectedAnime: isSelectedAnime,
        ));
      },
      leading: UserAvatar(
        imageUrl: anime.cover!,
        size: 40,
      ),
    );
  }
}
