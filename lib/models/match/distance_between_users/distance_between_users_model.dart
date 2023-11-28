import 'package:freezed_annotation/freezed_annotation.dart';

part 'distance_between_users_model.freezed.dart';
part 'distance_between_users_model.g.dart';

@freezed
class DistanceBetweenUsersModel with _$DistanceBetweenUsersModel {
  const factory DistanceBetweenUsersModel({
    required int mi,
  }) = _DistanceBetweenUsersModel;

  factory DistanceBetweenUsersModel.initial() =>
      const DistanceBetweenUsersModel(
        mi: 0,
      );

  factory DistanceBetweenUsersModel.fromJson(Map<String, dynamic> json) =>
      _$DistanceBetweenUsersModelFromJson(json);
}
