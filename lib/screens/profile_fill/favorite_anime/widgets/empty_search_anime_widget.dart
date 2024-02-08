import 'package:flutter/material.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';

import 'package:senpai/utils/methods/utils.dart';

class EmptySearchAnimeWidget extends StatelessWidget {
  const EmptySearchAnimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            PathConstants.emptySearchAnimeImage,
            width: getSize(context).width / 2,
          ),
          SizedBox(height: $constants.insets.md),
          _buildTitleWidget(context),
          _buildDescriptionWidget(context),
        ],
      ),
    );
  }

  Widget _buildTitleWidget(BuildContext context) {
    return Text(
      R.strings.oopsNoAnimeFound,
      style: getTextTheme(context).headlineSmall,
    );
  }

  Widget _buildDescriptionWidget(BuildContext context) {
    return Text(
      R.strings.noAnimesFoundText,
      textAlign: TextAlign.center,
      style: getTextTheme(context).titleSmall,
    );
  }
}
