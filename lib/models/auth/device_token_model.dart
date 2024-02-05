import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_token_model.freezed.dart';
part 'device_token_model.g.dart';

@freezed
class DeviceTokenModel with _$DeviceTokenModel {
  const factory DeviceTokenModel({
    required String token,
  }) = _DeviceTokenModel;

  factory DeviceTokenModel.initial() => const DeviceTokenModel(
        token: '',
      );

  factory DeviceTokenModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenModelFromJson(json);
}
