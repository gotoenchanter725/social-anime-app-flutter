import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SpotifyContent extends StatelessWidget {
  const SpotifyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          _buildHeader(context),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Image.asset(
            PathConstants.spotifyBg,
            height: getSize(context).height * 0.3,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildLocationButton(context),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: TextConstants.connectYourSpotifyText,
      description: TextConstants.connectYourSpotifyDescription,
      isCenterTitle: true,
      onTapSkipkButton: () {
        bloc.add(
          OnChangeStepEvent(step: ProfileFillStep.verify),
        );
      },
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(step: ProfileFillStep.location),
        );
      },
    );
  }

  Widget _buildLocationButton(BuildContext context) {
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return PrimaryButton(
      text: TextConstants.connectSpotifyText,
      onPressed: () async {
        blocProfileFill.add(OnChangeStepEvent(step: ProfileFillStep.verify));
      },
    );
  }
}
