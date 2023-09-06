import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';

import 'package:senpai/screens/profile_fill/user_gender/bloc/user_gender_bloc.dart';
import 'package:senpai/screens/profile_fill/user_gender/widgets/gender_content.dart';

class UserGenderPage extends StatelessWidget {
  final int? gender;

  const UserGenderPage({super.key, this.gender});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserGenderBloc>(
      create: (context) => UserGenderBloc()
        ..add(OnUserGenderInitEvent(
          gender: gender,
        )),
      child: Stack(
        children: [
          const UserGenderContent(),
          _buildCreateUserListeners(),
        ],
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocBuilder<UserGenderBloc, UserGenderState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
