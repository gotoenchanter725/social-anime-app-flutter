import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/favorite_anime_content.dart';
import 'package:senpai/utils/methods/aliases.dart';

class FavoriteAnimePage extends StatelessWidget {
  final List<AnimeModel>? selectedAnimeList;

  const FavoriteAnimePage({super.key, this.selectedAnimeList});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<FetchAnimeBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<AddFavoriteAnimeBloc>(),
        ),
        BlocProvider<FavoriteAnimeBloc>(
          create: (context) => FavoriteAnimeBloc()
            ..add(OnFavoriteAnimeInitEvent(
                selectedAnimeList: selectedAnimeList ?? [])),
        ),
      ],
      child: Stack(
        children: [
          const FavoriteAnimeContent(),
          _buildFavoriteAnimeListeners(),
          _buildFetchAnimeListeners(),
          _buildAddAnimeListListeners(),
        ],
      ),
    );
  }

  Widget _buildFavoriteAnimeListeners() {
    return BlocBuilder<FavoriteAnimeBloc, FavoriteAnimeState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }

  Widget _buildFetchAnimeListeners() {
    return BlocBuilder<FetchAnimeBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                _showSnackBarError(context, TextConstants.nullUser);
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
              _showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
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
            List<dynamic> listAnime =
                response["addFavoriteAnime"]["user"]["animes"];

            if (listAnime.isEmpty) {
              _showSnackBarError(context, TextConstants.nullUser);
              logIt.error("A user without an animes tried to again");
              return const SizedBox.shrink();
            }

            final selectedAnimeList =
                listAnime.map((e) => AnimeModel.fromJson(e)).toList();

            final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
            blocProfileFill.add(
              OnFavoriteAnimeSaveEvent(animeList: selectedAnimeList),
            );

            return const SizedBox.shrink();
          },
          failed: (error, result) {
            _showSnackBarError(context, TextConstants.serverError);
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  _showSnackBarError(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: message,
                contentType: ContentType.failure,
              ),
            ),
          );
      },
    );
  }
}
