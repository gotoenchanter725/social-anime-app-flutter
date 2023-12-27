import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/user/blocs/verify_request_user/fetch_verify_requests.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/models/user_profile/user_verify/user_verify_model.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/screens/profile/enums/profile_enums.dart';
import 'package:senpai/screens/profile/widgets/profile_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProfileBloc()..add(OnInitUserID())),
        BlocProvider(create: (_) => getIt<FetchUserBloc>()),
        BlocProvider(create: (_) => getIt<FetchVerifyRequestsBloc>()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const ProfileContent(),
              _buildFetchUserListeners(),
              _buildFetchVerifyRequestsListeners(),
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
                final bloc = BlocProvider.of<ProfileBloc>(context);
                UserProfileModel user = UserProfileModel.fromJson(
                  result.data!["fetchUser"],
                );
                bloc.add(OnFetchUser(user: user));
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

  Widget _buildFetchVerifyRequestsListeners() {
    return BlocBuilder<FetchVerifyRequestsBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A successful empty response just got recorded");
                return const SizedBox.shrink();
              } else {
                final bloc = BlocProvider.of<ProfileBloc>(context);
                List<dynamic> verifyRequests =
                    result.data!["fetchVerifyRequests"];

                if (verifyRequests.isNotEmpty) {
                  List<UserVerifyModel> list = verifyRequests
                      .map((e) => UserVerifyModel.fromJson(e))
                      .toList();
                  final userID = int.parse(bloc.userID);
                  final user = list.firstWhere(
                    (user) => user.userId == userID,
                    orElse: () => UserVerifyModel(userId: userID, status: ''),
                  );
                  bloc.add(OnChangeUserStatus(
                    user.status == UserVerifyStatus.pending.name,
                  ));
                }
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
}
