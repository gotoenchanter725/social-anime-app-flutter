import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/delete_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
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
                premium: editBloc.user.premium,
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
    return BlocListener<FetchAnimeBloc, QueryState>(
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
            List<dynamic>? animes;
            try {
              animes = result.data!["fetchAnime"];
              final bloc = BlocProvider.of<FavoriteAnimeBloc>(context);
              final animeList =
                  animes!.map((e) => AnimeModel.fromJson(e)).toList();
              bloc.add(OnFetchFavoriteAnimeListEvent(animeList: animeList));
            } catch (e) {
              logIt.error("Error accessing FetchAnime from response: $e");
              animes = null;
            }
            if (animes == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A anime list with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchAnimeBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDeleteAnimeListeners() {
    return BlocListener<DeleteFavoriteAnimeBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic deleted;
            try {
              deleted = response["deleteFavoriteAnime"]["deleted"];
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
                  editBloc
                      .add(OnChangeAnimeListEvent(selectedAnimes: const []));
                }
              } else {
                deleted = null;
              }
            } catch (e) {
              logIt.error(
                  "Error accessing deleteFavoriteAnime or deleted from response: $e");
              deleted = null;
            }
            if (deleted == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A anime list with error");
            }
          },
        );
      },
      child: BlocBuilder<DeleteFavoriteAnimeBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildAddAnimeListListeners() {
    return BlocListener<AddFavoriteAnimeBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            List<dynamic>? animes;
            try {
              animes = response["addFavoriteAnime"]["user"]["animes"] ?? [];
              if (animes!.isEmpty) {
                showSnackBarError(context, R.strings.serverError);
                logIt.error("A user without an animes tried to again");
              }
              final animeList = animes.map((e) => AnimeModel.fromJson(e)).toList();
              editBloc.add(OnChangeAnimeListEvent(selectedAnimes: animeList));
            } catch (e) {
              logIt.error("Error accessing AddFavoriteAnime from response: $e");
              animes = null;
            }
            if (animes == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user without an animes tried to again");
            }
          },
        );
      },
      child: BlocBuilder<AddFavoriteAnimeBloc, MutationState>(
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
