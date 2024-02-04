import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_radio_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/desired_gender/bloc/desired_gender_bloc.dart';
import 'package:senpai/screens/profile_fill/desired_gender/enums/desired_gender_enum.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

class DesiredGenderContent extends StatelessWidget {
  const DesiredGenderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildHeader(context),
          _buildRadioButtonList(context),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildSubmitButton(context),
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
      title: R.strings.youLookingForText,
      description: R.strings.youLookingDescription,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.gender,
          ),
        );
      },
    );
  }

  Widget _buildRadioButtonList(BuildContext context) {
    final bloc = BlocProvider.of<DesiredGenderBloc>(context);
    return BlocBuilder<DesiredGenderBloc, DesiredGenderState>(
      builder: (context, state) {
        return Column(
          children: DesiredGender.values.map((gender) {
            return Padding(
              padding: EdgeInsets.only(right: $constants.corners.md),
              child: SenpaiRadioButton(
                title: genderToString(gender),
                value: gender,
                isSelected: gender == bloc.desiredGender,
                onChanged: (desiredGender) {
                  bloc.add(
                    OnDesiredGenderChangedEvent(desiredGender: desiredGender),
                  );
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<DesiredGenderBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    return BlocListener<DesiredGenderBloc, DesiredGenderState>(
      listenWhen: (_, currState) => currState is DesiredGenderSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(
          OnDesiredGenderSaveEvent(
            gender: genderToServer(bloc.desiredGender!),
          ),
        );
      },
      child: PrimaryButton(
        text: R.strings.nextText,
        onPressed: () async {
          bloc.add(NextTappedEvent());
        },
      ),
    );
  }
}
