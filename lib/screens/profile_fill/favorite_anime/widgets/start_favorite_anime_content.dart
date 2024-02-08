import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/anime_step_header_widget.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/selected_anime_list.dart';
import 'package:senpai/utils/constants.dart';

class StartFavoriteAnimeContent extends StatelessWidget {
  const StartFavoriteAnimeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AnimeStepHeaderWidget(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: Column(
              children: [
                SizedBox(height: $constants.insets.md),
                _buildTextInput(context),
                _buildAnimeList(context),
              ],
            ),
          ),
        ),
        SizedBox(height: $constants.insets.sm),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: _buildSubmitButton(context),
          ),
        ),
        SizedBox(height: $constants.insets.sm),
      ],
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    final blocFetchAnime = BlocProvider.of<FetchAnimeBloc>(context);

    return SenpaiIconInput(
      onTapInput: () {
        bloc.add(OnChangeAnimeStepEvent(step: FavoriteAnimeStep.searchContent));
        blocFetchAnime.fetchAnime(page: bloc.page);
      },
      hintText: R.strings.searchText,
      controller: bloc.searchController,
      onChange: (String search) {},
      iconPath: PathConstants.searchIcon,
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocConsumer<FavoriteAnimeBloc, FavoriteAnimeState>(
      listenWhen: (_, currState) => currState is FavoriteAnimeSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(
          OnFavoriteAnimeSaveEvent(animeList: bloc.selectedAnimeList),
        );
      },
      builder: (context, state) {
        return PrimaryButton(
          text: '${R.strings.doneText} '
              '(${bloc.selectedAnimeList.length}/${bloc.maxAnimeCount})',
          onPressed: () {
            bloc.add(NextTappedEvent());
          },
        );
      },
    );
  }

  Widget _buildAnimeList(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SelectedAnimeList(),
      ),
    );
  }
}
