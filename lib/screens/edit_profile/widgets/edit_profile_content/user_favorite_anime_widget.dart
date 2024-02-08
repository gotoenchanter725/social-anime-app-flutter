import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/user_favorite_anime_list.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class UserFavoriteAnimeWidget extends StatelessWidget {
  final List<AnimeModel> animes;

  const UserFavoriteAnimeWidget({
    super.key,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: R.strings.favoriteAnimesTitle,
            onTap: () async {
              await context.router.push(
                EditFavoriteAnimeRoute(
                  editBloc: BlocProvider.of<EditProfileBloc>(context),
                ),
              );
            },
            isEmptyContent: animes.isEmpty,
          ),
          if (animes.isNotEmpty) ...{
            SizedBox(height: $constants.insets.sm),
            UserFavoriteAnimeList(animes: animes),
          }
        ],
      ),
    );
  }
}
