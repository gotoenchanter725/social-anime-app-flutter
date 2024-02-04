import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/occupation_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/universities_bloc/universities_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/widgets/university_dialog.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OccupationContent extends StatelessWidget {
  const OccupationContent({super.key});

  void _openDialog(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    bloc.add(OnUniversityChangedEvent(university: bloc.universityName));

    showDialog<String>(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => UniversitiesBloc()
                ..add(OnUniversitiesFetchEvent(
                  searchText: bloc.universityName,
                )),
            ),
            BlocProvider.value(
              value: bloc,
            ),
          ],
          child: const UniversityDialog(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildHeader(context),
                  _buildUniversityInput(context),
                  SizedBox(
                    height: $constants.insets.xxs,
                  ),
                  _buildJobTitleInput(context),
                  SizedBox(
                    height: $constants.insets.sm,
                  ),
                  Text(
                    R.strings.jobTitleNameHelper,
                    style: getTextTheme(context)
                        .labelMedium
                        ?.copyWith(color: $constants.palette.grey),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildSubmitButton(context),
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
      title: R.strings.yourOccupationText,
      description: R.strings.yourOccupationText,
      onTapBackButton: () {
        bloc.add(OnChangeStepEvent(step: ProfileFillStep.desiredGender));
      },
      onTapSkipkButton: () {
        bloc.add(OnChangeStepEvent(step: ProfileFillStep.biography));
      },
    );
  }

  Widget _buildUniversityInput(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    return BlocBuilder<OccupationBloc, OccupationState>(
      builder: (context, state) {
        return SenpaiInput(
          placeholder: R.strings.universityName,
          controller: bloc.universityController,
          onTap: () => _openDialog(context),
          onTextChanged: (String university) {
            bloc.add(OnUniversityChangedEvent(university: university));
          },
          errorText: R.strings.invalidUniversityNameError,
          isError: state is ErrorUniversityState ? state.isEnabled : false,
          isValid: state is ValidUniversityState
              ? true
              : bloc.universityController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildJobTitleInput(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    return BlocBuilder<OccupationBloc, OccupationState>(
      builder: (context, state) {
        return SenpaiInput(
          placeholder: R.strings.jobTitleName,
          controller: bloc.jobController,
          onTextChanged: (String jobTitle) {
            bloc.add(OnJobTitleChangedEvent(jobTitle: jobTitle));
          },
          errorText: R.strings.serverError,
          isError: false,
          isValid: state is ValidJobState
              ? true
              : bloc.jobController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocListener<OccupationBloc, OccupationState>(
      listenWhen: (_, currState) => currState is OccupationSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(
          OnOccupationSaveEvent(
            university: bloc.universityName,
            jobTitle: bloc.jobTitle,
          ),
        );
      },
      child: PrimaryButton(
        text: R.strings.nextText,
        onPressed: () {
          bloc.add(NextTappedEvent());
        },
      ),
    );
  }
}
