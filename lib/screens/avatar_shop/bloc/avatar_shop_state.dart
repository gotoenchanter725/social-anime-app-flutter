part of 'avatar_shop_bloc.dart';

@immutable
abstract class AvatarsShopState {}

class AvatarsShopInitial extends AvatarsShopState {}

class AvatarsShopErrorState extends AvatarsShopState {
  final String message;

  AvatarsShopErrorState({required this.message});
}

class AvatarsShopValidState extends AvatarsShopState {}

class AvatarsShopLoadingState extends AvatarsShopState {}

class AvatarsShopFetchState extends AvatarsShopState {}

class AvatarsShopSuccessfulState extends AvatarsShopState {}

class AvatarsShopUserIdInitialState extends AvatarsShopState {}

class AvatarsSelectedSucssesfulState extends AvatarsShopState {
  final AvatarsShopModel avatar;
  final bool isGrantUserAvatar;

  AvatarsSelectedSucssesfulState(this.avatar, this.isGrantUserAvatar);
}
