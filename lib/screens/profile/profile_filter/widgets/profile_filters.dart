import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_bloc/profile_filter_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/widgets/filter_favorite_anime.dart';
import 'package:senpai/screens/profile/profile_filter/widgets/profile_filter_content.dart';

class ProfileFilters extends StatelessWidget {
  const ProfileFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFilterBloc, ProfileFilterState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<ProfileFilterBloc>(context);

      if (bloc.step == ProfileFilterStep.filters) {
        return const ProfileFilterContent();
      } else if (bloc.step == ProfileFilterStep.animes) {
        return const FilterFavoriteAnime();
      } else {
        return const ProfileFilterContent();
      }
    });
  }
}
