import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/first_name/bloc/first_name_bloc.dart';
import 'package:senpai/screens/profile_fill/first_name/widgets/first_name_content.dart';

class FirstNamePage extends StatelessWidget {
  final String? firstName;

  const FirstNamePage({super.key, this.firstName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FirstNameBloc>(
      create: (context) => FirstNameBloc()
        ..add(OnFirstNameInitEvent(
          firstName: firstName ?? '',
        )),
      child: Stack(
        children: [
          const FirstNameContent(),
          _buildCreateUserListeners(),
        ],
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocBuilder<FirstNameBloc, FirstNameState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
