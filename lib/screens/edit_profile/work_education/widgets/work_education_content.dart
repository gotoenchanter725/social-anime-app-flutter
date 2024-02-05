import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/occupation_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/universities_bloc/universities_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/widgets/university_dialog.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class WorkEducationContent extends StatelessWidget {
  const WorkEducationContent({
    super.key,
  });

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
    return Column(
      children: [
        SizedBox(height: $constants.insets.sm),
        _buildHeader(context),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<OccupationBloc>(context);
    final editBloc = BlocProvider.of<EditProfileBloc>(context);
    return BlocListener<EditProfileBloc, EditProfileState>(
      listenWhen: (_, currState) => currState is ValidState,
      listener: (context, state) async {
        await context.router.pop();
      },
      child: ProfileAppBar(
        title: R.strings.workAndEducationTitle,
        hasLeading: true,
        onDoneTap: () {
          editBloc.add(
            OnOccupationSaveEvent(
              university: bloc.universityName,
              jobTitle: bloc.jobTitle,
            ),
          );
        },
      ),
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
}
