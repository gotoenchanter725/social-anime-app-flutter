import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/desired_gender/bloc/desired_gender_bloc.dart';
import 'package:senpai/screens/profile_fill/desired_gender/widgets/desired_gender_content.dart';

class DesiredGenderPage extends StatelessWidget {
  final int? gender;

  const DesiredGenderPage({super.key, this.gender});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DesiredGenderBloc>(
      create: (context) => DesiredGenderBloc()
        ..add(OnDesiredGenderInitEvent(
          gender: gender,
        )),
      child: Stack(
        children: [
          const DesiredGenderContent(),
          _buildCreateUserListeners(),
        ],
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocBuilder<DesiredGenderBloc, DesiredGenderState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
