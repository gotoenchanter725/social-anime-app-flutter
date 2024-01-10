// should be used in anime_list.dart

import 'package:flutter/material.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeTile extends StatelessWidget {
  final AnimeModel anime;
  final bool isActive;
  final void Function(AnimeModel anime) onTap;
  const AnimeTile(
      {super.key,
      required this.anime,
      required this.onTap,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    String subtitleText = '';
    if (anime.genres != null) {
      subtitleText = _extractGenres(anime.genres!);
    }
    return Container(
      height: $constants.sizes.animeTileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.md),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: isActive ? $constants.palette.pink : Colors.transparent,
          width: 1.0,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
        ),
        onTap: () {
          onTap(anime);
        },
        leading: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(anime.cover!),
            ),
          ),
        ),
        title: Text(
          anime.title ?? '',
          style: getTextTheme(context).bodyMedium!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          subtitleText,
          style: getTextTheme(context).labelMedium!.copyWith(
                color: $constants.palette.white,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

String _extractGenres(String input) {
  // Remove the square brackets at the start and end
  String noBrackets = input.substring(1, input.length - 1);

  // Replace double quotes and extra spaces, if any
  String formatted = noBrackets.replaceAll('\"', '').replaceAll(' ', '');

  return formatted;
}
