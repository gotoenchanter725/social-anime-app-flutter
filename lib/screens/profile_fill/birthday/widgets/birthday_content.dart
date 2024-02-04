import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/birthday/bloc/birthday_bloc.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

import 'birthday_picker.dart';

class BirthdayContent extends StatelessWidget {
  const BirthdayContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildHeader(context),
            _buildBithdayPicker(context),
            SizedBox(
              height: $constants.insets.lg,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _buildNextButton(context),
              ),
            ),
            SizedBox(
              height: $constants.insets.sm,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: R.strings.yourBirthdayText,
      description: R.strings.yourBirthdayDescription,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.firstName,
          ),
        );
      },
    );
  }

  Widget _buildBithdayPicker(BuildContext context) {
    final bloc = BlocProvider.of<BirthdayBloc>(context);
    return BlocBuilder<BirthdayBloc, BirthdayState>(
      builder: (context, state) {
        return BirthdayPicker(bloc: bloc);
      },
    );
  }

  Widget _buildNextButton(BuildContext context) {
    final bloc = BlocProvider.of<BirthdayBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocListener<BirthdayBloc, BirthdayState>(
      listenWhen: (_, currState) => currState is BirthdaySucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(OnBirthdaySaveEvent(birthday: bloc.birthdayDate));
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
