import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/avatar_shop/avatar_shop_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'avatar_shop_event.dart';
part 'avatar_shop_state.dart';

@injectable
class AvatarsShopBloc extends Bloc<AvatarsShopEvent, AvatarsShopState> {
  ScrollController avatarsListController = ScrollController();
  String userID = '';

  TextEditingController searchController = TextEditingController();
  String searchText = '';
  List<AvatarsShopModel> avatarsList = [];
  int page = 1;

  UserProfileModel user = UserProfileModel.initial();
  AvatarsShopModel avatarShopModel = AvatarsShopModel.initial();

  AvatarsShopBloc() : super(AvatarsShopInitial()) {
    on<OnAvatarsShopInitEvent>((event, emit) async {
      final storage = getIt<TokenStorage<AuthModel>>();
      await storage.read().then((data) {
        if (data != null) {
          userID = data.user.id;
          user = user.copyWith(id: userID);
        }
      });
      avatarsListController.addListener(_pagination);
      emit(AvatarsShopUserIdInitialState());
    });

    on<OnFetchUserEvent>((event, emit) {
      emit(AvatarsShopLoadingState());
      page = 1;
      user = event.user;
      emit(AvatarsShopValidState());
      emit(AvatarsShopFetchState());
    });

    on<OnFetchAvatarsShopListEvent>((event, emit) {
      emit(AvatarsShopLoadingState());
      if (page == 1) {
        avatarsList = event.avatarsList;
      } else {
        avatarsList.addAll(event.avatarsList);
      }
      emit(AvatarsShopValidState());
    });

    on<OnSearchAvatarsShopEvent>((event, emit) {
      emit(AvatarsShopLoadingState());
      page = 1;
      searchText = event.searchText;
      emit(AvatarsShopValidState());
      emit(AvatarsShopFetchState());
    });

    on<OnChangePaginationPageEvent>((event, emit) {
      page = event.page;
      emit(AvatarsShopLoadingState());
      emit(AvatarsShopValidState());
      emit(AvatarsShopFetchState());
    });

    on<OnSelectedAvatarEvent>((event, emit) {
      emit(AvatarsShopValidState());
      avatarShopModel = event.avatar;
      emit(AvatarsSelectedSucssesfulState(
        event.avatar,
        event.isGrantUserAvatar,
      ));
    });
  }

  Future<void> _pagination() async {
    final pixels = avatarsListController.position.pixels;
    final maxScrollExtent = avatarsListController.position.maxScrollExtent;

    if (pixels == maxScrollExtent) {
      add(OnChangePaginationPageEvent(page: page + 1));
    }
  }
}
