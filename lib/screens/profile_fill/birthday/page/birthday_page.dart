import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/birthday/bloc/birthday_bloc.dart';
import 'package:senpai/screens/profile_fill/birthday/widgets/birthday_content.dart';

class BirthdayPage extends StatelessWidget {
  final DateTime? birthday;

  const BirthdayPage({super.key, this.birthday});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BirthdayBloc>(
      create: (context) => BirthdayBloc()
        ..add(OnBirthdayInitEvent(
          birthday: birthday,
        )),
      child: Stack(
        children: [
          const BirthdayContent(),
          _buildCreateUserListeners(),
        ],
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocBuilder<BirthdayBloc, BirthdayState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
