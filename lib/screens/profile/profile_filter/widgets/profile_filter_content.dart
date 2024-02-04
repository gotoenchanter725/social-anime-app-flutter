import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_bloc/profile_filter_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/widgets/age_range_slider.dart';
import 'package:senpai/screens/profile/profile_filter/widgets/distance_slider.dart';
import 'package:senpai/core/widgets/senpai_checkbox.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileFilterContent extends StatelessWidget {
  const ProfileFilterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFilterBloc, ProfileFilterState>(
      builder: (context, state) {
        return Column(
          children: [
            ProfileAppBar(
              title: R.strings.findsFiltersTitle,
              hasLeading: true,
              actionsList: [_buildAppBarAction(context)],
            ),
            SizedBox(height: $constants.insets.md),
            const AgeRangeSlider(),
            SizedBox(height: $constants.insets.lg),
            const DistanceSlider(),
            SizedBox(height: $constants.insets.lg),
            _buildPhotoVerified(context),
            SizedBox(height: $constants.insets.xs),
            _buildHasBio(context),
            SizedBox(height: $constants.insets.xs),
            _buildFavoriteAnime(context),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: $constants.insets.sm),
                  child: _buildSubmitButton(context),
                ),
              ),
            ),
            SizedBox(height: $constants.insets.sm),
          ],
        );
      },
    );
  }

  Widget _buildAppBarAction(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    final storageBloc = BlocProvider.of<HomeStorageBloc>(context);
    return BlocListener<HomeStorageBloc, HomeStorageState>(
      listenWhen: (_, currState) => currState is ValidSaveProfileFiltersState,
      listener: (context, state) async {
        await context.router.pop();
      },
      child: GestureDetector(
        onTap: () {
          storageBloc.add(OnApplyProfileFilters(filters: bloc.initialFilters));
        },
        child: Padding(
          padding: EdgeInsets.only(right: $constants.insets.sm),
          child: Text(
            R.strings.clearAllTitle,
            style: getTextTheme(context).bodySmall!.copyWith(letterSpacing: 0),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoVerified(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: SenpaiCheckBox(
        title: R.strings.photoVerifiedTitle,
        value: bloc.changedFilters.verified,
        onChanged: (bool? value) {
          bloc.add(OnChangePhotoVerifiedStatus(isVerified: value ?? false));
        },
      ),
    );
  }

  Widget _buildHasBio(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: SenpaiCheckBox(
        title: R.strings.hasBioTitle,
        value: bloc.changedFilters.hasBio,
        onChanged: (bool? value) {
          bloc.add(OnChangeUserHasBio(hasBio: value ?? false));
        },
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    final storageBloc = BlocProvider.of<HomeStorageBloc>(context);
    return BlocListener<HomeStorageBloc, HomeStorageState>(
      listenWhen: (_, currState) => currState is ValidSaveProfileFiltersState,
      listener: (context, state) async {
        await context.router.pop();
      },
      child: PrimaryButton(
        text: bloc.counterChangesList.isEmpty
            ? R.strings.applyTitle
            : '${R.strings.applyChangesTitle} (${bloc.counterChangesList.length})',
        onPressed: () {
          storageBloc.add(OnApplyProfileFilters(filters: bloc.changedFilters));
        },
      ),
    );
  }

  Widget _buildFavoriteAnime(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFilterBloc>(context);
    final blocFavoriteAnime = BlocProvider.of<FavoriteAnimeBloc>(context);

    final selectedAnimeLenght = bloc.changedFilters.animeIds.length.toString();
    return BlocListener<ProfileFilterBloc, ProfileFilterState>(
      listener: (context, state) {
        if (bloc.step == ProfileFilterStep.animes) {
          blocFavoriteAnime.add(OnFavoriteAnimeInitEvent(
            selectedAnimeList: bloc.changedFilters.animeIds
                .map((e) => AnimeModel(id: e))
                .toList(),
          ));
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        height: $constants.insets.xxl,
        decoration: profileBoxDecoration(),
        child: ProfileItemHeader(
          title: '${R.strings.favoriteAnimesTitle} '
              '($selectedAnimeLenght/${blocFavoriteAnime.maxAnimeCount})',
          onTap: () {
            bloc.add(OnChangeFilterStepEvent(step: ProfileFilterStep.animes));
          },
          isEmptyContent: true,
          titleButton: R.strings.chooseTitle,
        ),
      ),
    );
  }
}
