import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/feed/blocs/get_distance_between_users_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
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
    return BlocBuilder<FetchUserBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A successful empty response just got recorded");
                return const SizedBox.shrink();
              } else {
                final bloc = BlocProvider.of<PreviewProfileBloc>(context);
                UserProfileModel user =
                    UserProfileModel.fromJson(result.data!["fetchUser"]);
                bloc.add(OnPreviewProfileInitEvent(user: user));
              }
              return const SizedBox.shrink();
            },
            error: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildDistanceBetweenUsersListeners() {
    return BlocBuilder<GetDistanceBetweenUsersBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response with distance");
                return const SizedBox.shrink();
              }
              final bloc = BlocProvider.of<PreviewProfileBloc>(context);
              final data = response["getDistanceBetweenUsers"];
              DistanceBetweenUsersModel distance =
                  DistanceBetweenUsersModel.fromJson(data);

              bloc.add(OnFetchDistanceBeetwenUsersEvent(distance: distance));
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
