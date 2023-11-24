import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/user_profile/gallery_user/gallery_user_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String phone,
    String? firstName,
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
    String? spotifyEmail,
    List<AnimeModel>? animes,
    GalleryUserModel? gallery,
    String? lonlat,
    String? onlineStatus,
    bool? premium,
  }) = _UserModel;

  factory UserModel.initial() => const UserModel(
        id: '',
        phone: '',
        firstName: '',
        role: '',
        birthday: null,
        gender: '',
        desiredGender: '',
        verified: false,
        occupation: '',
        school: '',
        bio: '',
        displayCity: '',
        displayState: '',
        spotifyEmail: '',
        animes: [],
        lonlat: '',
        onlineStatus: '',
        premium: false,
        gallery: null,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
