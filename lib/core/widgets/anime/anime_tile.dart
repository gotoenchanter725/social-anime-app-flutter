// should be used in anime_list.dart

import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeTile extends StatelessWidget {
  final AnimeModel anime;
  final void Function(AnimeModel anime) onTap;
  const AnimeTile({super.key, required this.anime, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: $constants.insets.xxl,
      decoration: profileBoxDecoration(),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
        ),
        onTap: () {
          onTap(anime);
        },
        leading: UserAvatar(
          imageUrl: anime.cover!,
          size: 40,
        ),
        title: Text(
          anime.title ?? '',
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
