import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/widgets/university_dialog.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchHelperWidget extends StatelessWidget {
  const MatchHelperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeStorageBloc, HomeStorageState>(
      buildWhen: (_, currState) => currState is ValidSaveIsFirstOpenMatchState,
      builder: (context, state) {
        final storageBloc = BlocProvider.of<HomeStorageBloc>(context);

        if (!storageBloc.isFirstOpenMatch) {
          return const SizedBox();
        }
        return GestureDetector(
          onTap: () => storageBloc.add(OnSaveFirstOpenMatch()),
          child: Container(
            decoration: BoxDecoration(
              gradient: $constants.palette.matchDislikeGradient,
            ),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: $constants.match.blur,
                    sigmaY: $constants.match.blur,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: $constants.palette.black.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            R.strings.bearWithUsTitle,
                            textAlign: TextAlign.center,
                            style: getTextTheme(context).headlineSmall?.copyWith(color: $constants.palette.white),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            R.strings.bearWithUsDescription,
                            textAlign: TextAlign.center,
                            style: getTextTheme(context).bodySmall?.copyWith(color: $constants.palette.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: $constants.insets.offset,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildItem(context),
                      Container(
                        height: $constants.insets.xl,
                        color: $constants.palette.white.withOpacity(0.5),
                        width: 1,
                      ),
                      _buildItem(context, isLike: true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildItem(BuildContext context, {bool isLike = false}) {
    return SizedBox(
      width: getSize(context).width / 2,
      child: Column(
        children: [
          Transform.scale(
            scaleX: isLike ? -1 : 1,
            child: SvgPicture.asset(
              PathConstants.catsPawIcon,
              width: $constants.corners.xxl,
              height: $constants.corners.xxl,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            isLike ? R.strings.likeWhatYouSeeTitle : R.strings.notForYouTitle,
            textAlign: TextAlign.center,
            style: getTextTheme(context).headlineSmall?.copyWith(color: $constants.palette.white),
          ),
          Text(
            isLike ? R.strings.swipeRightDescription : R.strings.swipeLeftDescription,
            textAlign: TextAlign.center,
            style: getTextTheme(context).labelMedium?.copyWith(color: $constants.palette.white),
          ),
        ],
      ),
    );
  }
}
