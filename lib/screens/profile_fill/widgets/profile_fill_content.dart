import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/desired_gender/page/desired_gender_page.dart';
import 'package:senpai/screens/profile_fill/first_name/page/first_name_page.dart';
import 'package:senpai/screens/profile_fill/user_gender/page/gender_page.dart';
import 'package:senpai/screens/profile_fill/widgets/progress_line_widget.dart';
import 'package:senpai/utils/constants.dart';

import 'welcome_senpai_content.dart';

class ProfileFillContent extends StatelessWidget {
  const ProfileFillContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFillBloc, ProfileFillState>(
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: $constants.insets.sm,
              ),
              _buildProgressLine(context),
              Expanded(
                child: _buildProfileFillContent(
                  context,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProfileFillContent(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);

    switch (bloc.step) {
      case ProfileFillStep.welcome:
        return const WelcomeSenpaiContent();
      case ProfileFillStep.firstName:
        return FirstNamePage(firstName: bloc.user.firstName);
      case ProfileFillStep.birthday:
        // change on BirthdayPage
        return UserGenderPage(gender: bloc.user.gender);
      case ProfileFillStep.gender:
        return UserGenderPage(gender: bloc.user.gender);
      case ProfileFillStep.desiredGender:
        return DesiredGenderPage(gender: bloc.user.desiredGender);
      default:
        return const WelcomeSenpaiContent();
    }
  }

  Widget _buildProgressLine(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return ProgressLineWidget(progressIndex: bloc.step.index);
  }
}
