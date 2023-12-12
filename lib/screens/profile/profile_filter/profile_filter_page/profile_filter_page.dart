import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/user_profile/profile_filter/profile_filter_model.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_bloc/profile_filter_bloc.dart';
import 'package:senpai/screens/profile/profile_filter/widgets/profile_filters.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/bloc/favorite_anime_bloc.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class ProfileFilterPage extends StatelessWidget {
  final List<AnimeModel>? animes;

  const ProfileFilterPage({
    super.key,
    required this.animes,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<HomeStorageBloc>()),
        BlocProvider(create: (_) {
          ProfileFilterModel initialFilters = getIt<HomeStorageBloc>().filters;
          return ProfileFilterBloc()
            ..add(OnInitFilters(initialFilters: initialFilters));
        }),
        BlocProvider(
          create: (_) => FavoriteAnimeBloc()
            ..add(
              OnFavoriteAnimeInitEvent(
                myAnimeList: animes ?? [],
                selectedAnimeList: const [],
              ),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<FetchAnimeBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const ProfileFilters(),
              _buildFetchAnimeListeners(),
            ],
          ),
        ),
      ),
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
