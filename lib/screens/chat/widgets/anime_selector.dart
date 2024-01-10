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
  final void Function(AnimeModel, String) onAnimeRecommendaytionSent;

  const AnimeSelector({super.key, required this.onAnimeRecommendaytionSent});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimeSelectorBloc>(
      create: (context) => AnimeSelectorBloc(),
      child: SizedBox.expand(
        child: _buildAnimeSelectorContent(context),
      ),
    );
  }

  Widget _buildAnimeSelectorContent(BuildContext context) {
    return BlocBuilder<AnimeSelectorBloc, AnimeSelectorState>(
      builder: (context, state) {
        return Column(
          children: [
            _buildAnimeSelectorMainContent(context, state),
          ],
        );
      },
    );
  }

  Widget _buildAnimeSelectorMainContent(
      BuildContext context, AnimeSelectorState state) {
    if (state.isSearchMode) {
      return FilterAnimeSelector(
          onAnimeRecommendaytionSent: onAnimeRecommendaytionSent);
    }

    return _buildFavouriteAnimeSelectorContent(context);
  }

  Widget _buildSearchInput(BuildContext context) {
    AnimeSelectorBloc bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    return SenpaiIconInput(
      iconPath: PathConstants.searchIcon,
      hintText: TextConstants.searchText,
      onChange: (_) {},
      onTapSuffix: () {
        bloc.add(const AnimeSelectorEvent.toggleSearchMode());
      },
    );
  }

  Widget _buildFavouriteAnimeSelectorContent(BuildContext context) {
    AnimeSelectorBloc bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    return BlocBuilder<FetchUserBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          loaded: (data, result) {
            if (result.data == null) {
              logIt.error("Data is null for the fetch user query");
              showSnackBarError(context, TextConstants.nullUser);
              return const SizedBox.shrink();
            }

            Map<String, dynamic>? activeUser = result.data!["fetchUser"];
            if (activeUser == null) {
              logIt.error("Active user is null for the fetch user query");
              showSnackBarError(context, TextConstants.nullUser);
              return const SizedBox.shrink();
            }

            List<dynamic> favoriteAnimes = activeUser["animes"];
            List<AnimeModel> animeList = favoriteAnimes
                .map((anime) => AnimeModel.fromJson(anime))
                .toList();

            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSearchInput(context),
                    SizedBox(height: $constants.insets.sm),
                    Text(
                      TextConstants.favouriteAnimeSelectionTitle,
                      style: getTextTheme(context).bodyMedium?.copyWith(
                            color: $constants.palette.white,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: $constants.insets.sm),
                    AnimeList(
                      animeList: animeList,
                      onAnimeTap: (anime) {
                        bloc.add(AnimeSelectorEvent.selectAnime(anime));
                      },
                      selectedAnime: bloc.state.selectedAnime,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
