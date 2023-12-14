import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/match/matches_users_model/matches_users_model.dart';

part 'like_user_model.freezed.dart';
part 'like_user_model.g.dart';

@freezed
class LikeUserModel with _$LikeUserModel {
  const factory LikeUserModel({
    required int userId,
    required int likeeId,
    required String likeType,
    MatchesUsersModel? match,
  }) = _LikeUserModel;

  factory LikeUserModel.initial() => const LikeUserModel(
        userId: 0,
        likeeId: 0,
        likeType: '',
        match: null,
      );

  factory LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserModelFromJson(json);
}
