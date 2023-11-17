import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_user_model.freezed.dart';
part 'location_user_model.g.dart';

@freezed
class LocationUserModel with _$LocationUserModel {
  const factory LocationUserModel({
    required String id,
    String? lonlat,
    String? displayCity,
    String? displayState,
  }) = _LocationUserModel;

  factory LocationUserModel.initial() => const LocationUserModel(
        id: '',
        lonlat: '',
        displayCity: '',
        displayState: '',
      );

  factory LocationUserModel.fromJson(Map<String, dynamic> json) =>
      _$LocationUserModelFromJson(json);
}
