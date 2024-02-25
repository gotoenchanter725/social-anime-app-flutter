import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
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
  final bool premium;

  const ProfileFilterPage({
    super.key,
    required this.animes,
    required this.premium,
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
                premium: premium,
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
}
