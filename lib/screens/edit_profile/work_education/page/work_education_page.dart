import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/work_education/widgets/work_education_content.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/occupation_bloc.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class WorkEducationPage extends StatelessWidget {
  final String? school;
  final String? occupation;
  final EditProfileBloc editBloc;

  const WorkEducationPage({
    super.key,
    required this.editBloc,
    this.school,
    this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OccupationBloc>(
          create: (context) => OccupationBloc()
            ..add(OnOccupationInitEvent(
              school: school ?? '',
              occupation: occupation ?? '',
            )),
        ),
        BlocProvider.value(value: editBloc),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const WorkEducationContent(),
              _buildOccupationLoadingListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOccupationLoadingListeners() {
    return BlocBuilder<OccupationBloc, OccupationState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
