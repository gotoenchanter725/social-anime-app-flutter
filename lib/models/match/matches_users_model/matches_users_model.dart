import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'matches_users_model.freezed.dart';
part 'matches_users_model.g.dart';

@freezed
class MatchesUsersModel with _$MatchesUsersModel {
  const factory MatchesUsersModel({
    //add match with Conversation
    //  conversation,
    UserProfileModel? user,
    UserProfileModel? matchee,
  }) = _MatchesUsersModel;

  factory MatchesUsersModel.initial() => const MatchesUsersModel(
        user: null,
        matchee: null,
      );

  factory MatchesUsersModel.fromJson(Map<String, dynamic> json) =>
      _$MatchesUsersModelFromJson(json);
}
