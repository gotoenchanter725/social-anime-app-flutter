import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/user/blocs/grant_user_premium/grant_user_premium_bloc.dart';
import 'package:senpai/core/user/blocs/verify_request_user/fetch_verify_requests.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/models/user_profile/user_verify/user_verify_model.dart';
import 'package:senpai/screens/premium_screen/bloc/purchase_bloc.dart';
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
        BlocProvider(create: (_) => PurchaseBloc()..add(OnPlanInitEvent())),
        BlocProvider(create: (_) => getIt<GrantUserPremiumBloc>()),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const ProfileContent(),
              _buildFetchUserListeners(),
              _buildFetchVerifyRequestsListeners(),
              _buildGrantUserPremiumBlocListeners(),
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
              user = UserProfileModel.fromJson(result.data!["fetchUser"]);
              final bloc = BlocProvider.of<ProfileBloc>(context);
              bloc.add(OnFetchUser(user: user));
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

  Widget _buildFetchVerifyRequestsListeners() {
    return BlocListener<FetchVerifyRequestsBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          loaded: (data, result) {
            final response = result.data;
            if (response == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            List<dynamic>? verifyRequests;
            try {
              verifyRequests = response["fetchVerifyRequests"];

              final bloc = BlocProvider.of<ProfileBloc>(context);
              if (verifyRequests != null && verifyRequests.isNotEmpty) {
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
            } catch (e) {
              logIt.error(
                  "Error accessing fetchVerifyRequests from response: $e");
              verifyRequests = null;
            }
            if (verifyRequests == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A fetchVerifyRequests with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchVerifyRequestsBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildGrantUserPremiumBlocListeners() {
    return BlocListener<GrantUserPremiumBloc, MutationState>(
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
            dynamic user;
            try {
              user = response["grantUserPremium"]["user"];
              final bloc = BlocProvider.of<ProfileBloc>(context);
              final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
              fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
            } catch (e) {
              logIt.error("Error accessing grantUserPremium from response: $e");
              user = null;
            }
            if (user == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<GrantUserPremiumBloc, MutationState>(
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
