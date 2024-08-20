import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/fetch_avatars_shop_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/grant_user_avatar_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/avatar_shop/avatar_shop_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/avatar_shop/bloc/avatar_shop_bloc.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_shop_content.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class AvatarShopPage extends StatefulWidget {
  const AvatarShopPage({super.key});

  @override
  State<AvatarShopPage> createState() => _AvatarShopPageState();
}

class _AvatarShopPageState extends State<AvatarShopPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AvatarsShopBloc()..add(OnAvatarsShopInitEvent()),
        ),
        BlocProvider(create: (_) => getIt<FetchAvatarsShopBloc>()),
        BlocProvider(create: (_) => getIt<FetchUserBloc>()),
        BlocProvider(create: (_) => getIt<GrantUserAvatarBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const AvatarsShopContent(),
              _buildFetchUserListeners(),
              _buildFetchAvatarsShopListeners(),
              _buildDownloadAvatarListeners(),
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
              final bloc = BlocProvider.of<AvatarsShopBloc>(context);
              user = UserProfileModel.fromJson(result.data!["fetchUser"]);
              bloc.add(OnFetchUserEvent(user));
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

  Widget _buildFetchAvatarsShopListeners() {
    return BlocListener<FetchAvatarsShopBloc, QueryState>(
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
              logIt.error("A successful empty response just got recorded");
              return;
            }
            List<dynamic>? avatars;
            try {
              avatars = result.data!["fetchAvatars"];
              final bloc = BlocProvider.of<AvatarsShopBloc>(context);
              final avatarsList =
                  avatars!.map((e) => AvatarsShopModel.fromJson(e)).toList();
              bloc.add(OnFetchAvatarsShopListEvent(avatarsList: avatarsList));
            } catch (e) {
              logIt.error("Error accessing fetchAvatars from response: $e");
              avatars = null;
            }
            if (avatars == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A avatar list with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchAvatarsShopBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDownloadAvatarListeners() {
    return BlocListener<GrantUserAvatarBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set avatar");
              return;
            }
            dynamic model;
            try {
              model = response["grantUserAvatar"]["avatar"];
              context.router.pop();
              final bloc = BlocProvider.of<AvatarsShopBloc>(context);
              final serviceBloc =
                  BlocProvider.of<FetchAvatarsShopBloc>(context);
              serviceBloc.fetchAvatarsShop(
                userId: int.parse(bloc.user.id),
                page: bloc.page,
                query: bloc.searchText,
                gender: bloc.user.gender,
              );
            } catch (e) {
              logIt.error(
                  "Error accessing grantUserAvatar or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A grant avatar with error");
            }
          },
        );
      },
      child: BlocBuilder<GrantUserAvatarBloc, MutationState>(
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
