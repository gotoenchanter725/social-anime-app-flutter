import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/widgets/favorite_anime_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
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
          _buildFavoriteAnimeBlocErrorListeners(),
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
}
