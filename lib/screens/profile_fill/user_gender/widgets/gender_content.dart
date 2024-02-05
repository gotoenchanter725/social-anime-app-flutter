import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_radio_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/user_gender/bloc/user_gender_bloc.dart';
import 'package:senpai/screens/profile_fill/user_gender/enums/user_gender_enum.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

class UserGenderContent extends StatelessWidget {
  const UserGenderContent({super.key});

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
      title: R.strings.youAreText,
      description: R.strings.youAreDescription,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.birthday,
          ),
        );
      },
    );
  }

  Widget _buildRadioButtonList(BuildContext context) {
    final bloc = BlocProvider.of<UserGenderBloc>(context);
    return BlocBuilder<UserGenderBloc, UserGenderState>(
      builder: (context, state) {
        return Column(
          children: UserGender.values.map((gender) {
            return Padding(
              padding: EdgeInsets.only(right: $constants.corners.md),
              child: SenpaiRadioButton(
                title: genderToString(gender),
                value: gender,
                isSelected: gender == bloc.userGender,
                onChanged: (userGender) {
                  bloc.add(OnUserGenderChangedEvent(userGender: userGender));
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<UserGenderBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    return BlocListener<UserGenderBloc, UserGenderState>(
      listenWhen: (_, currState) => currState is UserGenderSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(
          OnUserGenderSaveEvent(
            gender: genderToServer(bloc.userGender!),
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
