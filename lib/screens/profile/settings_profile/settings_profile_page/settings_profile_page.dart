import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';

import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/delete_user/delete_user_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';

import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_profile_content.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

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
          create: (_) => SettingsProfileBloc()..add((OnSettingsProfileInitEvent(user: user))),
        ),
        BlocProvider(create: (_) => getIt<UpdateUserBloc>()),
        BlocProvider(create: (_) => getIt<DeleteUserBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const SettingsProfileContent(),
              _buildSettingsLoadingListeners(),
              _buildUpdateUserListeners(),
              _buildDeleteUserListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsLoadingListeners() {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        return state is LoadingState ? const SenpaiLoading() : const SizedBox.shrink();
      },
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocBuilder<UpdateUserBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }

              final user = response["updateUser"]["user"];
              if (user == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }
              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              context.router.push(SettingsVerifyPhoneRoute(settingsBloc: bloc)).then(
                    (_) => bloc.add(OnChangeSettingsStepEvent(
                      step: SettingsStep.settings,
                    )),
                  );

              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildDeleteUserListeners() {
    return BlocBuilder<DeleteUserBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }

              final user = response["deleteUser"]["softDeletedUser"];
              if (user == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }

              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              bloc.add(OnLogoutUserEvent(isDeleteStorage: true));

              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
