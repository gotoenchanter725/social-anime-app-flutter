import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/occupation/bloc/occupation_bloc.dart';
import 'package:senpai/screens/profile_fill/occupation/widgets/occupation_content.dart';

class OccupationPage extends StatelessWidget {
  final String? school;
  final String? occupation;

  const OccupationPage({super.key, this.school, this.occupation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OccupationBloc>(
      create: (context) => OccupationBloc()
        ..add(OnOccupationInitEvent(
          school: school ?? '',
          occupation: occupation ?? '',
        )),
      child: Stack(
        children: [
          const OccupationContent(),
          _buildOccupationLoadingListeners(),
        ],
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
