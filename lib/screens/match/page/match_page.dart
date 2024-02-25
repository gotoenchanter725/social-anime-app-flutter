import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/feed/blocs/fetch_feed_bloc.dart';
import 'package:senpai/core/feed/blocs/like_user_bloc.dart';
import 'package:senpai/core/feed/blocs/undo_like_user_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/add_super_likes/add_super_likes.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/match/like_user_model/like_user_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/match_content.dart';
import 'package:senpai/screens/match/widgets/match_message_info_widget.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart' as userProfile;
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<HomeStorageBloc>()),
        BlocProvider(create: (_) => MatchBloc()..add(OnInitUserID())),
        BlocProvider(
            create: (_) =>
                userProfile.ProfileBloc()..add(userProfile.OnInitUserID())),
        BlocProvider(create: (_) => getIt<FetchFeedBloc>()),
        BlocProvider(create: (_) => getIt<LikeUserBloc>()),
        BlocProvider(create: (_) => getIt<FetchUserBloc>()),
        BlocProvider(create: (_) => getIt<UndoLikeUserBloc>()),
        BlocProvider(create: (_) => getIt<AddSuperLikesBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              MultiBlocListener(
                listeners: [
                  BlocListener<HomeStorageBloc, HomeStorageState>(
                    listenWhen: (_, currState) =>
                        currState is OpenMatchWithNewFiltersState,
                    bloc: BlocProvider.of<HomeStorageBloc>(context),
                    listener: (context, state) {
                      final bloc = BlocProvider.of<MatchBloc>(context);
                      bloc.add(OnChangePageEvent(isRefresh: false));
                      final fetchUserBloc =
                          BlocProvider.of<FetchUserBloc>(context);
                      fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
                    },
                  ),
                  BlocListener<MatchBloc, MatchState>(
                    listenWhen: (_, currState) => currState is ValidUserIdState,
                    listener: (context, state) {
                      final bloc = BlocProvider.of<MatchBloc>(context);
                      final storageBloc =
                          BlocProvider.of<HomeStorageBloc>(context);
                      final serverBloc =
                          BlocProvider.of<FetchFeedBloc>(context);
                      serverBloc.fetchFeed(
                        userId: bloc.userID,
                        profileFilter: storageBloc.filters,
                      );
                      final fetchUserBloc =
                          BlocProvider.of<FetchUserBloc>(context);
                      fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
                    },
                  ),
                ],
                child: const MatchContent(),
              ),
              _buildFetchFeedListeners(),
              _buildLikeUserListeners(),
              _buildFetchUserListeners(),
              _buildUndoLikeUserListeners(),
              _buildAddSuperLikesBlocListeners(),
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
          loading: (result) {},
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
              user = UserProfileModel.fromJson(response["fetchUser"]);
              final matchBloc = BlocProvider.of<MatchBloc>(context);
              matchBloc.superLikeCount = user.superLikeCount ?? 0;
            } catch (e) {
              logIt.error("Error accessing fetchUser from response: $e");
              user = null;
            }
            if (user == null) {
              showSnackBarError(context, R.strings.serverError);
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

  Widget _buildFetchFeedListeners() {
    return BlocListener<FetchFeedBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: (result) {},
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
            List<dynamic>? users;
            try {
              users = response["fetchFeed"];
              final userList = users!.map((e) => UserProfileModel.fromJson(e)).toList();
              final bloc = BlocProvider.of<MatchBloc>(context);
              bloc.add(OnMatchInitEvent(users: userList));
            } catch (e) {
              logIt.error("Error accessing FetchFeed from response: $e");
              users = null;
            }
            if (users == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A FetchFeed with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchFeedBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildLikeUserListeners() {
    return BlocListener<LikeUserBloc, MutationState>(
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
              model = response["likeUser"];
              final bloc = BlocProvider.of<MatchBloc>(context);
              final serverBloc = BlocProvider.of<FetchFeedBloc>(context);
              final storageBloc = BlocProvider.of<HomeStorageBloc>(context);
              LikeUserModel likeUserModel = LikeUserModel.fromJson(model);
              if (likeUserModel.match != null) {
                context.router
                    .push(MatchUsersRoute(likeUserModel: likeUserModel))
                    .then((value) {
                  final user = value as UserProfileModel?;
                  if (user != null) {
                    _sendMessageInfoDialog(context, value!);
                  }
                  serverBloc.fetchFeed(
                    userId: bloc.userID,
                    profileFilter: storageBloc.filters,
                  );
                });
              }
              if (bloc.cardsSwipeController.currentIndex == bloc.users.length) {
                bloc.add(OnChangePageEvent(isRefresh: true));
              }
            } catch (e) {
              logIt.error("Error accessing LikeUser from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<LikeUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildUndoLikeUserListeners() {
    return BlocListener<UndoLikeUserBloc, MutationState>(
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
              model = response["undoLike"]["undidUser"];
            } catch (e) {
              logIt.error(
                  "Error accessing undoLike or undidUser from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<UndoLikeUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  void _sendMessageInfoDialog(BuildContext context, UserProfileModel user) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        alignment: Alignment.topCenter,
        insetPadding: EdgeInsets.symmetric(
          vertical: $constants.insets.md,
        ),
        child: MatchMessageInfoWidget(user: user),
      ),
    ).timeout(
      $constants.times.slow,
      onTimeout: () => Navigator.pop(context),
    );
  }

  Widget _buildAddSuperLikesBlocListeners() {
    return BlocListener<AddSuperLikesBloc, MutationState>(
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
              model = response["addSuperLikes"]["user"]["superLikeCount"];
              final matchBloc = BlocProvider.of<MatchBloc>(context);
              matchBloc.superLikeCount = model ?? 0;
            } catch (e) {
              logIt.error("Error accessing user or superLikeCount from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<AddSuperLikesBloc, MutationState>(
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
