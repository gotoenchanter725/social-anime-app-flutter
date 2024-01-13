// This is shown when the search input is tapped on the anime selector screen.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/anime/anime_list.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/chat/bloc/anime_selector_bloc/anime_selector_bloc.dart';
import 'package:senpai/screens/chat/widgets/empty_messages.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class FilterAnimeSelector extends StatelessWidget {
  const FilterAnimeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: $constants.insets.lg,
        ),
        child: Column(
          children: [
            _buildSearchInput(context),
            SizedBox(height: $constants.insets.sm),
            _buildFilterdAnimeContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchInput(BuildContext context) {
    final bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    final fetchAnimeBloc = BlocProvider.of<FetchAnimeBloc>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc.setupSearch();
    });

    return Row(
      children: [
        SizedBox(
          width: getSize(context).width * 0.637,
          child: SenpaiIconInput(
            hintText: TextConstants.searchAnimesHintText,
            controller: bloc.searchTextController,
            onChange: (_) {
              bloc.performSideEffects((query) {
                fetchAnimeBloc.fetchAnime(
                  page: 1,
                  title: query,
                );
              });
            },
            iconPath: PathConstants.searchIcon,
            onTapSuffix: () {
              bloc.searchTextController.clear();
            },
          ),
        ),
        SizedBox(
          width: $constants.insets.sm,
        ),
        _buildCancelButton(context),
      ],
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    final bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    return TextButton(
      onPressed: () {
        bloc.add(const AnimeSelectorEvent.toggleSearchMode());
      },
      child: Text(
        TextConstants.cancelSearchText,
        style: getTextTheme(context)
            .labelMedium!
            .copyWith(color: $constants.palette.white, fontSize: 14),
      ),
    );
  }

  Widget _buildFilterdAnimeContent(BuildContext context) {
    AnimeSelectorBloc bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    return BlocBuilder<FetchAnimeBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: (result) => const Expanded(child: SenpaiLoading()),
          loaded: (data, result) {
            if (result.data == null) {
              showSnackBarError(context, TextConstants.serverError);
              logIt.error("A successful empty response just got recorded");
              return const EmptyMessages(
                avatorImagePath: PathConstants.emptyChatAnimeSearch,
                title: TextConstants.emptyChatAnimationsSearchTitle,
                subtitle: TextConstants.emptyChatAnimationsSearchText,
              );
            }

            List<dynamic>? animes = result.data!["fetchAnime"];
            final animeList =
                animes!.map((e) => AnimeModel.fromJson(e)).toList();
            if (animeList.isEmpty) {
              return const EmptyMessages(
                avatorImagePath: PathConstants.emptyChatAnimeSearch,
                title: TextConstants.emptyChatAnimationsSearchTitle,
                subtitle: TextConstants.emptyChatAnimationsSearchText,
                isLocalImage: true,
              );
            }

            return BlocBuilder<AnimeSelectorBloc, AnimeSelectorState>(
              builder: (context, state) {
                return Expanded(
                  child: AnimeList(
                    animeList: animeList,
                    onAnimeTap: (anime) {
                      bloc.add(AnimeSelectorEvent.selectAnime(anime));
                    },
                    selectedAnime: bloc.state.selectedAnime,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
