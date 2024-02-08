import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/anime/anime_list.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/chat/bloc/anime_selector_bloc/anime_selector_bloc.dart';
import 'package:senpai/screens/chat/widgets/filter_anime_selector.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeSelector extends StatelessWidget {
  final void Function(AnimeModel, String) onAnimeRecommendationSent;

  const AnimeSelector({
    super.key,
    required this.onAnimeRecommendationSent,
  });

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
        return Stack(
          children: [
            _buildAnimeSelectorMainContent(context, state),
            _buildDescriptionInput(context, state),
          ],
        );
      },
    );
  }

  Widget _buildDescriptionInput(
      BuildContext context, AnimeSelectorState state) {
    if (state.selectedAnime == null) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: getSize(context).height * 0.08867,
        padding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
          vertical: $constants.insets.sm,
        ),
        decoration: BoxDecoration(
          color: $constants.palette.buttonBorder,
          border: Border(
            top: BorderSide(
              color: $constants.palette.darkGrey,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: $constants.palette.lightBlue,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: $constants.insets.sm,
                    vertical: 0,
                  ),
                  hintText: R.strings.animeDescriptionHint,
                  hintStyle: getTextTheme(context).bodySmall?.copyWith(
                        color: $constants.palette.darkGrey,
                      ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular($constants.corners.xxl),
                    borderSide: BorderSide.none, // No border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular($constants.corners.xxl),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular($constants.corners.xxl),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: getTextTheme(context).bodyMedium?.copyWith(
                      color: $constants.palette.white,
                    ),
                onChanged: (value) {
                  BlocProvider.of<AnimeSelectorBloc>(context)
                      .add(AnimeSelectorEvent.updateDescription(value));
                },
              ),
            ),
            SizedBox(width: $constants.insets.sm),
            GestureDetector(
              onTap: () {
                // Handle button tap
                final AnimeSelectorBloc bloc =
                    BlocProvider.of<AnimeSelectorBloc>(context);
                onAnimeRecommendationSent(
                    bloc.state.selectedAnime!, bloc.state.description ?? "");
              },
              child: Container(
                width: $constants.sizes.smallButtonWidth,
                height: $constants.sizes.smallButtonHeight,
                decoration: BoxDecoration(
                  color: $constants.palette.pink,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    R.strings.sendButton,
                    style: getTextTheme(context).bodySmall?.copyWith(
                          color: $constants.palette.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAnimeSelectorMainContent(
      BuildContext context, AnimeSelectorState state) {
    if (state.isSearchMode) {
      return const FilterAnimeSelector();
    }

    return _buildFavouriteAnimeSelectorContent(context);
  }

  Widget _buildSearchInput(BuildContext context) {
    AnimeSelectorBloc bloc = BlocProvider.of<AnimeSelectorBloc>(context);
    return SenpaiIconInput(
      iconPath: PathConstants.searchIcon,
      hintText: R.strings.searchText,
      onChange: (_) {},
      onTapInput: () {
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
              showSnackBarError(context, R.strings.nullUser);
              return const SizedBox.shrink();
            }

            Map<String, dynamic>? activeUser = result.data!["fetchUser"];
            if (activeUser == null) {
              logIt.error("Active user is null for the fetch user query");
              showSnackBarError(context, R.strings.nullUser);
              return const SizedBox.shrink();
            }

            List<dynamic> favoriteAnimes = activeUser["animes"];
            List<AnimeModel> animeList = favoriteAnimes
                .map((anime) => AnimeModel.fromJson(anime))
                .toList();

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchInput(context),
                  SizedBox(height: $constants.insets.sm),
                  Text(
                    R.strings.favouriteAnimeSelectionTitle,
                    style: getTextTheme(context).bodyMedium?.copyWith(
                          color: $constants.palette.white,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: $constants.insets.sm),
                  Expanded(
                    child: AnimeList(
                      animeList: animeList,
                      onAnimeTap: (anime) {
                        bloc.add(AnimeSelectorEvent.selectAnime(anime));
                      },
                      selectedAnime: bloc.state.selectedAnime,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
