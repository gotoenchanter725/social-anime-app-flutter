import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_filter_model.freezed.dart';
part 'profile_filter_model.g.dart';

@freezed
class ProfileFilterModel with _$ProfileFilterModel {
  const factory ProfileFilterModel({
    required int milesAway,
    required int minAge,
    required int maxAge,
    required bool hasBio,
    required bool verified,
    required List<String> animeIds,
  }) = _ProfileFilterModel;

  factory ProfileFilterModel.initial() => const ProfileFilterModel(
        milesAway: 200,
        minAge: 18,
        maxAge: 50,
        hasBio: false,
        verified: false,
        animeIds: [],
      );

  factory ProfileFilterModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileFilterModelFromJson(json);
}
