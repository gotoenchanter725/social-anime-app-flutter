part of 'favorite_anime_bloc.dart';

@immutable
abstract class FavoriteAnimeState {}

class FavoriteAnimeInitial extends FavoriteAnimeState {}

class ErrorState extends FavoriteAnimeState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends FavoriteAnimeState {}

class LoadingState extends FavoriteAnimeState {}

class FavoriteAnimeFetchState extends FavoriteAnimeState {}

class FavoriteAnimeSucssesfulState extends FavoriteAnimeState {}
