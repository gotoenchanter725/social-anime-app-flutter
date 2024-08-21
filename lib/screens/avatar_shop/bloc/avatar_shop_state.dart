part of 'avatar_shop_bloc.dart';

@immutable
abstract class AvatarsShopState {}

class AvatarsShopInitial extends AvatarsShopState {}

class ErrorState extends AvatarsShopState {
  final String message;

  ErrorState({required this.message});
}

class ValidState extends AvatarsShopState {}

class LoadingState extends AvatarsShopState {}

class AvatarsShopFetchState extends AvatarsShopState {}

class AvatarsShopSucssesfulState extends AvatarsShopState {}

class UserIdInitialState extends AvatarsShopState {}
