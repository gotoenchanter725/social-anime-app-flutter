import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/match/like_model/like_model.dart';
import 'package:senpai/models/match/matches_users_model/matches_users_model.dart';

part 'like_user_model.freezed.dart';
part 'like_user_model.g.dart';

@freezed
class LikeUserModel with _$LikeUserModel {
  const factory LikeUserModel({
    required LikeModel like,
    MatchesUsersModel? match,
  }) = _LikeUserModel;

  factory LikeUserModel.initial() => LikeUserModel(
        like: LikeModel.initial(),
        match: null,
      );

  factory LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserModelFromJson(json);
}
