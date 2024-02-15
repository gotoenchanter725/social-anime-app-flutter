import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/user_profile/gallery_user/gallery_user_model.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String id,
    required String phone,
    String? firstName,
    String? country,
    String? role,
    DateTime? birthday,
    String? gender,
    String? desiredGender,
    required bool verified,
    String? occupation,
    String? school,
    String? bio,
    String? displayCity,
    String? displayState,
    List<AnimeModel>? animes,
    GalleryUserModel? gallery,
    String? lonlat,
    String? onlineStatus,
    bool? premium,
    int? superLikeCount,
    List<UserFavoriteMusicModel>? favoriteMusic,
    bool? hasLocationHidden,
    int? milesAway,
    DateTime? nextPaymentDate,
    bool? isDisplayingRecentlyActive,
    bool? isDisplayingActive,
  }) = _UserProfileModel;

  factory UserProfileModel.initial() => const UserProfileModel(
        id: '',
        phone: '',
        firstName: '',
        role: '',
        country: '',
        birthday: null,
        gender: '',
        desiredGender: '',
        verified: false,
        occupation: '',
        school: '',
        bio: '',
        displayCity: '',
        displayState: '',
        animes: [],
        lonlat: '',
        onlineStatus: '',
        premium: false,
        gallery: null,
        superLikeCount: 0,
        favoriteMusic: [],
        hasLocationHidden: false,
        milesAway: null,
        nextPaymentDate: null,
        isDisplayingRecentlyActive: false,
        isDisplayingActive: false,
      );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
