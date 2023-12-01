import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_profile_content.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class SettingsProfilePage extends StatelessWidget {
  final UserProfileModel user;

  const SettingsProfilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SettingsProfileBloc()
            ..add((OnSettingsProfileInitEvent(user: user))),
        ),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const SettingsProfileContent(),
              _buildSettingsLoadingListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsLoadingListeners() {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
