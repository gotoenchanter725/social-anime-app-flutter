import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'matches_users_model.freezed.dart';
part 'matches_users_model.g.dart';

@freezed
class MatchesUsersModel with _$MatchesUsersModel {
  const factory MatchesUsersModel({
    MatchesUsersConversationModel? conversation,
    UserProfileModel? user,
    UserProfileModel? matchee,
  }) = _MatchesUsersModel;

  factory MatchesUsersModel.initial() => const MatchesUsersModel(
        conversation: null,
        user: null,
        matchee: null,
      );

  factory MatchesUsersModel.fromJson(Map<String, dynamic> json) =>
      _$MatchesUsersModelFromJson(json);
}

@freezed
class MatchesUsersConversationModel with _$MatchesUsersConversationModel {
  const factory MatchesUsersConversationModel({
    required String id,
  }) = _MatchesUsersConversationModel;

  factory MatchesUsersConversationModel.initial() =>
      const MatchesUsersConversationModel(
        id: '',
      );

  factory MatchesUsersConversationModel.fromJson(Map<String, dynamic> json) =>
      _$MatchesUsersConversationModelFromJson(json);
}
