import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/anime/anime_list.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/chat/bloc/anime_selector_bloc/anime_selector_bloc.dart';
import 'package:senpai/screens/chat/widgets/filter_anime_selector.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeSelector extends StatelessWidget {
  final void Function(AnimeModel) onAnimeSelected;

  const AnimeSelector({super.key, required this.onAnimeSelected});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimeSelectorBloc>(
      create: (context) => AnimeSelectorBloc(),
      child: Column(
        children: [
          SizedBox(height: $constants.insets.sm),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
            child: _buildAnimeSelectorContent(context),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimeSelectorContent(BuildContext context) {
    return BlocBuilder<AnimeSelectorBloc, AnimeSelectorState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          searchMode: (isInSearchMode, searchText) {
            if (isInSearchMode) {
              return FilterAnimeSelector(
                onAnimeSelected: onAnimeSelected,
              );
            } else {
              return _buildAnimeList(context);
            }
          },
        );
      },
    );
  }

  Widget _buildSearchInput(BuildContext context) {
    return SenpaiIconInput(
      iconPath: PathConstants.searchIcon,
      hintText: TextConstants.searchText,
      onChange: (_) {},
      onTapSuffix: () {
        // TODO: implement onTapSuffix
      },
    );
  }

  Widget _buildAnimeList(BuildContext context) {
    return BlocBuilder<FetchUserBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          loaded: (data, result) {
            if (result.data == null) {
              showSnackBarError(context, TextConstants.nullUser);
              logIt.error("A successful empty response just got recorded");
              return const SizedBox.shrink();
            }

            List<dynamic> animesList = result.data!["fetchUser"]["animes"];

            List<AnimeModel> parsedAnimeList =
                animesList.map((e) => AnimeModel.fromJson(e)).toList();

            return Column(
              children: [
                _buildSearchInput(context),
                Text(TextConstants.favoriteAnimesTitle,
                    style: getTextTheme(context).headlineMedium?.copyWith(
                          color: $constants.palette.white,
                        ),
                    textAlign: TextAlign.center),
                AnimeList(
                  animeList: parsedAnimeList,
                  onAnimeTap: onAnimeSelected,
                )
              ],
            );
          },
        );
      },
    );
  }
}
