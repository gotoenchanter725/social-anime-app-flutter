import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/mark_avatar_as_default_bloc.dart';

import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/delete_user/delete_user_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_avatar_bloc.dart';
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
          create: (_) => SettingsProfileBloc()
            ..add((OnSettingsProfileInitEvent(user: user))),
        ),
        BlocProvider(create: (_) => getIt<UpdateUserBloc>()),
        BlocProvider(create: (_) => getIt<DeleteUserBloc>()),
        BlocProvider(create: (_) => getIt<FetchUserAvatarsBloc>()),
        BlocProvider(create: (_) => getIt<MarkAvatarAsDefaultBloc>()),
        // BlocProvider(
        //   create: (_) => AvatarsShopBloc()..add(OnAvatarsShopInitEvent()),
        // ),
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
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocListener<UpdateUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["updateUser"]["user"];

              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              if (bloc.state is ChangePhoneNumberState) {
                context.router
                    .push(SettingsVerifyPhoneRoute(settingsBloc: bloc))
                    .then(
                      (_) => bloc.add(
                        OnChangeSettingsStepEvent(
                          step: SettingsStep.settings,
                        ),
                      ),
                    );
              } else {
                context.router.maybePop();
              }
            } catch (e) {
              logIt.error(
                  "Error accessing updateUser or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<UpdateUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDeleteUserListeners() {
    return BlocListener<DeleteUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["deleteUser"]["softDeletedUser"];
              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              bloc.add(OnLogoutUserEvent(isDeleteStorage: true));
            } catch (e) {
              logIt.error(
                  "Error accessing deleteUser or softDeletedUser from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<DeleteUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
