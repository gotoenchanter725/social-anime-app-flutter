import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class AnimeStepHeaderWidget extends StatelessWidget {
  const AnimeStepHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: $constants.insets.md),
          child: Image.asset(
            PathConstants.animeHeaderImage,
            fit: BoxFit.fitWidth,
            width: getSize(context).width,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: $constants.insets.sm),
          child: _buildHeader(context),
        ),
        Positioned(
          bottom: 0,
          width: getSize(context).width,
          child: _buildTitle(context),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: '',
      description: '',
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.spotify,
          ),
        );
      },
      backBorderColor: $constants.palette.white,
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          R.strings.almostDoneText,
          style: getTextTheme(context)
              .headlineLarge
              ?.copyWith(color: $constants.palette.white),
          textAlign: TextAlign.left,
        ),
        Text(
          R.strings.nowChooseYourFavoriteAnimesText,
          style: getTextTheme(context).bodySmall?.copyWith(
                color: $constants.palette.grey,
                letterSpacing: 0,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
