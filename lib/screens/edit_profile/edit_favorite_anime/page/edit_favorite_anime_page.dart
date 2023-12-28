import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/delete_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_favorite_anime/widgets/edit_favorite_anime_content.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class EditFavoriteAnimePage extends StatelessWidget {
  final EditProfileBloc editBloc;

  const EditFavoriteAnimePage({
    super.key,
    required this.editBloc,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: editBloc),
        BlocProvider(
          create: (_) => FavoriteAnimeBloc()
            ..add(
              OnFavoriteAnimeInitEvent(
                selectedAnimeList: editBloc.user.animes ?? [],
              ),
            ),
        ),
        BlocProvider(create: (_) => getIt<FetchAnimeBloc>()),
        BlocProvider(create: (_) => getIt<DeleteFavoriteAnimeBloc>()),
        BlocProvider(create: (_) => getIt<AddFavoriteAnimeBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              const EditFavoriteAnimeContent(),
              _buildFetchAnimeListeners(),
              _buildDeleteAnimeListeners(),
              _buildAddAnimeListListeners(),
              _buildFavoriteAnimeBlocErrorListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFavoriteAnimeBlocErrorListeners() {
    return BlocListener<FavoriteAnimeBloc, FavoriteAnimeState>(
      listenWhen: (_, currState) => currState is ErrorState,
      listener: (context, state) {
        if (state is ErrorState) {
          state.isEnabled ? showSnackBarError(context, state.message) : null;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  Widget _buildFetchAnimeListeners() {
    return BlocBuilder<FetchAnimeBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A successful empty response just got recorded");
                return const SizedBox.shrink();
              } else {
                final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
                List<dynamic>? animes = result.data!["fetchAnime"];
                final animeList =
                    animes!.map((e) => AnimeModel.fromJson(e)).toList();
                bloc.add(OnFetchFavoriteAnimeListEvent(animeList: animeList));
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

  Widget _buildDeleteAnimeListeners() {
    return BlocBuilder<DeleteFavoriteAnimeBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          loading: () => const SenpaiLoading(),
          succeeded: (data, result) {
            final response = result.data;

            if (response == null) {
              // handle this fatal error
              logIt.wtf("A successful empty response just got recorded");
              return const SizedBox.shrink();
            }
            bool deleted = response["deleteFavoriteAnime"]["deleted"];
            if (deleted == true) {
              final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
              final serverAddAnimesBloc =
                  BlocProvider.of<AddFavoriteAnimeBloc>(context);
              int userId = int.parse(editBloc.user.id);
              if (bloc.selectedAnimeList.isNotEmpty) {
                final selectedAnimeIds =
                    bloc.selectedAnimeList.map((anime) => anime.id).toList();

                serverAddAnimesBloc.addFavoriteAnimeList(
                  userId: userId,
                  animeIds: selectedAnimeIds,
                );
              } else {
                editBloc.add(OnChangeAnimeListEvent(selectedAnimes: const []));
              }
              return const SizedBox.shrink();
            } else {
              showSnackBarError(context, TextConstants.serverError);
            }
            return const SizedBox.shrink();
          },
          failed: (error, result) {
            showSnackBarError(context, TextConstants.serverError);
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildAddAnimeListListeners() {
    return BlocBuilder<AddFavoriteAnimeBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          loading: () => const SenpaiLoading(),
          succeeded: (data, result) {
            final response = result.data;

            if (response == null) {
              // handle this fatal error
              logIt.wtf("A successful empty response just got recorded");
              return const SizedBox.shrink();
            }
            List<dynamic> animes =
                response["addFavoriteAnime"]["user"]["animes"];

            if (animes.isEmpty) {
              showSnackBarError(context, TextConstants.nullUser);
              logIt.error("A user without an animes tried to again");
              return const SizedBox.shrink();
            }
            final animeList =
                animes.map((e) => AnimeModel.fromJson(e)).toList();
            editBloc.add(OnChangeAnimeListEvent(selectedAnimes: animeList));
            return const SizedBox.shrink();
          },
          failed: (error, result) {
            showSnackBarError(context, TextConstants.serverError);
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
