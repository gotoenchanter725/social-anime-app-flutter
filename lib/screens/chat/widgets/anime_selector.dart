import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeSelector extends StatelessWidget {
  final void Function(AnimeModel) onAnimeSelected;

  const AnimeSelector({super.key, required this.onAnimeSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: $constants.insets.sm),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: getSize(context).width * 0.637,
                    child: _buildSearchInput(context),
                  ),
                  SizedBox(
                    width: $constants.insets.sm,
                  ),
                  _buildCancelButton(context),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchInput(BuildContext context) {
    return SenpaiIconInput(
      iconPath: PathConstants.searchIcon,
      hintText: TextConstants.searchText,
      onChange: (_) {},
      onTapSuffix: () {
        // TODO: implement onTapSuffix
      },
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: implement onPressed
      },
      child: Text(
        TextConstants.cancelSearchText,
        style: getTextTheme(context)
            .labelMedium!
            .copyWith(color: $constants.palette.white, fontSize: 14),
      ),
    );
  }
}
