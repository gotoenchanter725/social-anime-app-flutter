import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/delete_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart'
    as edit;
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/choosen_text_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditFavoriteAnimeList extends StatelessWidget {
  const EditFavoriteAnimeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: $constants.insets.md),
                _buildTextInput(context),
                SizedBox(height: $constants.insets.md),
                const ChosenTextWidget(),
                SizedBox(height: $constants.insets.sm),
                Expanded(child: _buildListAnime(context)),
              ],
            ),
          ),
        ),
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

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
    final editBloc = BlocProvider.of<edit.EditProfileBloc>(context);

    final serverAddAnimesBloc = BlocProvider.of<AddFavoriteAnimeBloc>(context);
    final serverDeleteAnimesBloc =
        BlocProvider.of<DeleteFavoriteAnimeBloc>(context);

    return BlocListener<edit.EditProfileBloc, edit.EditProfileState>(
      listenWhen: (_, currState) => currState is edit.ValidState,
      listener: (context, state) async {
        await context.router.pop();
      },
      child: ProfileAppBar(
        title: R.strings.favoriteAnimesTitle,
        hasLeading: true,
        onDoneTap: () {
          int userId = int.parse(editBloc.user.id);
          if (bloc.selectedAnimeList.isEmpty) {
            bloc.add(NextTappedEvent());
          } else if (editBloc.user.animes != null &&
              editBloc.user.animes!.isNotEmpty) {
            final userAnimeIds =
                editBloc.user.animes!.map((anime) => anime.id).toList();
            serverDeleteAnimesBloc.deleteFavoriteAnimeList(
                userId: userId, animeIds: userAnimeIds);
          } else if (bloc.selectedAnimeList.isNotEmpty) {
            final selectedAnimeIds =
                bloc.selectedAnimeList.map((anime) => anime.id).toList();

            serverAddAnimesBloc.addFavoriteAnimeList(
              userId: userId,
              animeIds: selectedAnimeIds,
            );
          } else {
            editBloc.add(edit.OnChangeAnimeListEvent(selectedAnimes: const []));
          }
        },
      ),
    );
  }

  Widget _buildListAnime(BuildContext context) {
    return BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
      builder: (BuildContext context, ApplicationLocaleState applicationLocaleState) {
        return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
          builder: (context, state) {
            final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: bloc.selectedAnimeList.length,
              itemBuilder: (context, index) {
                final anime = bloc.selectedAnimeList[index];
                return _buildAnimeItem(context, anime, applicationLocaleState.locale);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: $constants.insets.xs);
              },
            );
          },
        );
      },
    );
  }

  Widget _buildAnimeItem(BuildContext context, AnimeModel anime, Locale? locale) {
    final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);

    return Container(
      height: $constants.insets.xxl,
      decoration: profileBoxDecoration(),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
        ),
        onTap: () {
          bloc.add(OnFavoriteAnimeSelectEvent(
            favoriteAnime: anime,
            isSelectedAnime: true,
          ));
        },
        leading: UserAvatar(
          imageUrl: anime.cover!,
          size: 40,
        ),
        title: Text(
          anime.getLocalizedTitle(locale),
          style: getTextTheme(context).bodyMedium!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Icon(
          Icons.close,
          size: $constants.insets.sm,
          color: $constants.palette.white,
        ),
      ),
    );
  }
}
