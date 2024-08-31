part of 'avatar_shop_bloc.dart';

@immutable
abstract class AvatarsShopEvent {}

class OnAvatarsShopInitEvent extends AvatarsShopEvent {
  OnAvatarsShopInitEvent();
}

class OnFetchUserEvent extends AvatarsShopEvent {
  final UserProfileModel user;
  OnFetchUserEvent(this.user);
}

class OnFetchAvatarsShopListEvent extends AvatarsShopEvent {
  final List<AvatarsShopModel> avatarsList;

  OnFetchAvatarsShopListEvent({required this.avatarsList});
}

class OnSearchAvatarsShopEvent extends AvatarsShopEvent {
  final String searchText;

  OnSearchAvatarsShopEvent({required this.searchText});
}

class OnChangePaginationPageEvent extends AvatarsShopEvent {
  final int page;

  OnChangePaginationPageEvent({required this.page});
}

class OnSelectedAvatarEvent extends AvatarsShopEvent {
  final AvatarsShopModel avatar;
  final bool isGrantUserAvatar;

  OnSelectedAvatarEvent(this.avatar, {required this.isGrantUserAvatar});
}
