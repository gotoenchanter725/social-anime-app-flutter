import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChosenTextWidget extends StatelessWidget {
  const ChosenTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
      return Text(
        '${R.strings.chosenText} '
        '(${bloc.selectedAnimeList.length}/${bloc.maxAnimeCount})',
        style: getTextTheme(context).headlineSmall?.copyWith(),
        textAlign: TextAlign.left,
      );
    });
  }
}
