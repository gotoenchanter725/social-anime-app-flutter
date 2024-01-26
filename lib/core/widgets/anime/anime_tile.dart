// should be used in anime_list.dart

import 'package:flutter/material.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeTile extends StatelessWidget {
  final AnimeModel anime;
  final bool isActive;
  final bool hasBackground;
  final void Function(AnimeModel anime)? onTap;
  const AnimeTile(
      {super.key,
      required this.anime,
      this.onTap,
      this.isActive = false,
      this.hasBackground = false});

  @override
  Widget build(BuildContext context) {
    String subtitleText = '';
    if (anime.genres != null) {
      subtitleText = extractGenres(anime.genres!);
    }
    return Container(
      height: $constants.sizes.animeTileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.md),
        shape: BoxShape.rectangle,
        color: hasBackground ? $constants.palette.darkGrey : Colors.transparent,
        border: Border.all(
          color: isActive ? $constants.palette.pink : Colors.transparent,
          width: 1.0,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
        ),
        onTap: onTap != null
            ? () {
                onTap!(anime);
              }
            : null,
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
