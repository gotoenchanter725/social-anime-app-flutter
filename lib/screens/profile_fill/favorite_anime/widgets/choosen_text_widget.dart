import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';

import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChossenTextWidget extends StatelessWidget {
  const ChossenTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
      return Text(
        '${TextConstants.choosenText} '
        '(${bloc.selectedAnimeList.length}/${bloc.maxAnimeCount})',
        style: getTextTheme(context).headlineSmall?.copyWith(),
        textAlign: TextAlign.left,
      );
    });
  }
}
