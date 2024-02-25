import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/feed/blocs/get_distance_between_users_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/match/distance_between_users/distance_between_users_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_profile_content.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class PreviewProfilePage extends StatelessWidget {
  final String userId;
  final String vieweeId;
  final VoidCallback? onTapClose;
  final VoidCallback? onTapLike;

  const PreviewProfilePage({
    super.key,
    required this.userId,
    required this.vieweeId,
    this.onTapClose,
    this.onTapLike,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PreviewProfileBloc()),
        BlocProvider(create: (_) {
          return getIt<FetchUserBloc>()..fetchUser(userId: int.parse(vieweeId));
        }),
        BlocProvider(create: (_) {
          return getIt<GetDistanceBetweenUsersBloc>()
            ..getDistanceBetweenUsers(
              userId: int.parse(userId),
              vieweeId: int.parse(vieweeId),
            );
        }),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              DesiredPreviewProfileContent(
                isShowBottomButtons: onTapLike != null && onTapClose != null,
                onTapClose: onTapClose,
                onTapLike: onTapLike,
                isShowDistance: true,
              ),
              _buildFetchUserListeners(),
              _buildDistanceBetweenUsersListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFetchUserListeners() {
    return BlocListener<FetchUserBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          loaded: (data, result) {
            final response = result.data;
            if (response == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            UserProfileModel? user;
            try {
              final bloc = BlocProvider.of<PreviewProfileBloc>(context);
              user = UserProfileModel.fromJson(response["fetchUser"]);
              bloc.add(OnPreviewProfileInitEvent(user: user));
            } catch (e) {
              logIt.error("Error accessing fetchUser from response: $e");
              user = null;
            }
            if (user == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchUserBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDistanceBetweenUsersListeners() {
    return BlocListener<GetDistanceBetweenUsersBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got distance");
              return;
            }
            dynamic model;
            try {
              model = response["getDistanceBetweenUsers"];
              DistanceBetweenUsersModel distance =
                  DistanceBetweenUsersModel.fromJson(model);
              final bloc = BlocProvider.of<PreviewProfileBloc>(context);
              bloc.add(OnFetchDistanceBeetwenUsersEvent(distance: distance));
            } catch (e) {
              logIt.error(
                  "Error accessing DistanceBetweenUsers from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<GetDistanceBetweenUsersBloc, MutationState>(
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
