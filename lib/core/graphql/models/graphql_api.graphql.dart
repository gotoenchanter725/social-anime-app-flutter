// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:senpai/core/graphql/scalars/datetime_scalar.dart';
import 'package:http/http.dart';
import 'package:senpai/core/graphql/scalars/upload_scalar.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime extends JsonSerializable
    with EquatableMixin {
  DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime();

  factory DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteFavoriteAnime$Mutation$DeleteFavoriteAnimeFromJson(json);

  late bool deleted;

  @override
  List<Object?> get props => [deleted];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteFavoriteAnime$Mutation$DeleteFavoriteAnimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteFavoriteAnime$Mutation extends JsonSerializable
    with EquatableMixin {
  DeleteFavoriteAnime$Mutation();

  factory DeleteFavoriteAnime$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteFavoriteAnime$MutationFromJson(json);

  DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime? deleteFavoriteAnime;

  @override
  List<Object?> get props => [deleteFavoriteAnime];
  @override
  Map<String, dynamic> toJson() => _$DeleteFavoriteAnime$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteFavoriteAnimeInput extends JsonSerializable with EquatableMixin {
  DeleteFavoriteAnimeInput({
    required this.animeId,
    this.clientMutationId,
    required this.userId,
  });

  factory DeleteFavoriteAnimeInput.fromJson(Map<String, dynamic> json) =>
      _$DeleteFavoriteAnimeInputFromJson(json);

  late String animeId;

  String? clientMutationId;

  late String userId;

  @override
  List<Object?> get props => [animeId, clientMutationId, userId];
  @override
  Map<String, dynamic> toJson() => _$DeleteFavoriteAnimeInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser$User extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser$User();

  factory CreateUser$Mutation$CreateUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUser$UserFromJson(json);

  late String id;

  late String phone;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLISO8601DateTime)
  late DateTime createdAt;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLISO8601DateTime)
  late DateTime updatedAt;

  @override
  List<Object?> get props => [id, phone, createdAt, updatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateUser$Mutation$CreateUser$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation$CreateUser extends JsonSerializable
    with EquatableMixin {
  CreateUser$Mutation$CreateUser();

  factory CreateUser$Mutation$CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUser$Mutation$CreateUserFromJson(json);

  late CreateUser$Mutation$CreateUser$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$CreateUser$Mutation$CreateUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUser$Mutation extends JsonSerializable with EquatableMixin {
  CreateUser$Mutation();

  factory CreateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateUser$MutationFromJson(json);

  CreateUser$Mutation$CreateUser? createUser;

  @override
  List<Object?> get props => [createUser];
  @override
  Map<String, dynamic> toJson() => _$CreateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUserInput extends JsonSerializable with EquatableMixin {
  CreateUserInput({
    this.clientMutationId,
    required this.params,
  });

  factory CreateUserInput.fromJson(Map<String, dynamic> json) =>
      _$CreateUserInputFromJson(json);

  String? clientMutationId;

  late UserInput params;

  @override
  List<Object?> get props => [clientMutationId, params];
  @override
  Map<String, dynamic> toJson() => _$CreateUserInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserInput extends JsonSerializable with EquatableMixin {
  UserInput({required this.phone});

  factory UserInput.fromJson(Map<String, dynamic> json) =>
      _$UserInputFromJson(json);

  late String phone;

  @override
  List<Object?> get props => [phone];
  @override
  Map<String, dynamic> toJson() => _$UserInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User
    extends JsonSerializable with EquatableMixin {
  SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User();

  factory SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User.fromJson(
          Map<String, dynamic> json) =>
      _$SubmitVerifyRequest$Mutation$SubmitVerifyRequest$UserFromJson(json);

  late String id;

  late String phone;

  @override
  List<Object?> get props => [id, phone];
  @override
  Map<String, dynamic> toJson() =>
      _$SubmitVerifyRequest$Mutation$SubmitVerifyRequest$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubmitVerifyRequest$Mutation$SubmitVerifyRequest extends JsonSerializable
    with EquatableMixin {
  SubmitVerifyRequest$Mutation$SubmitVerifyRequest();

  factory SubmitVerifyRequest$Mutation$SubmitVerifyRequest.fromJson(
          Map<String, dynamic> json) =>
      _$SubmitVerifyRequest$Mutation$SubmitVerifyRequestFromJson(json);

  late SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$SubmitVerifyRequest$Mutation$SubmitVerifyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubmitVerifyRequest$Mutation extends JsonSerializable
    with EquatableMixin {
  SubmitVerifyRequest$Mutation();

  factory SubmitVerifyRequest$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SubmitVerifyRequest$MutationFromJson(json);

  SubmitVerifyRequest$Mutation$SubmitVerifyRequest? submitVerifyRequest;

  @override
  List<Object?> get props => [submitVerifyRequest];
  @override
  Map<String, dynamic> toJson() => _$SubmitVerifyRequest$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubmitVerifyRequestInput extends JsonSerializable with EquatableMixin {
  SubmitVerifyRequestInput({
    this.clientMutationId,
    required this.params,
  });

  factory SubmitVerifyRequestInput.fromJson(Map<String, dynamic> json) =>
      _$SubmitVerifyRequestInputFromJson(json);

  String? clientMutationId;

  late VerifyRequestInput params;

  @override
  List<Object?> get props => [clientMutationId, params];
  @override
  Map<String, dynamic> toJson() => _$SubmitVerifyRequestInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerifyRequestInput extends JsonSerializable with EquatableMixin {
  VerifyRequestInput({
    required this.image,
    required this.userId,
  });

  factory VerifyRequestInput.fromJson(Map<String, dynamic> json) =>
      _$VerifyRequestInputFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUploadToDartMultipartFile,
      toJson: fromDartMultipartFileToGraphQLUpload)
  late MultipartFile image;

  late int userId;

  @override
  List<Object?> get props => [image, userId];
  @override
  Map<String, dynamic> toJson() => _$VerifyRequestInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes
    extends JsonSerializable with EquatableMixin {
  AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes();

  factory AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes.fromJson(
          Map<String, dynamic> json) =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnime$User$AnimesFromJson(json);

  late String id;

  String? title;

  String? cover;

  @override
  List<Object?> get props => [id, title, cover];
  @override
  Map<String, dynamic> toJson() =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnime$User$AnimesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnime$Mutation$AddFavoriteAnime$User extends JsonSerializable
    with EquatableMixin {
  AddFavoriteAnime$Mutation$AddFavoriteAnime$User();

  factory AddFavoriteAnime$Mutation$AddFavoriteAnime$User.fromJson(
          Map<String, dynamic> json) =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnime$UserFromJson(json);

  List<AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes>? animes;

  @override
  List<Object?> get props => [animes];
  @override
  Map<String, dynamic> toJson() =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnime$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnime$Mutation$AddFavoriteAnime extends JsonSerializable
    with EquatableMixin {
  AddFavoriteAnime$Mutation$AddFavoriteAnime();

  factory AddFavoriteAnime$Mutation$AddFavoriteAnime.fromJson(
          Map<String, dynamic> json) =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnimeFromJson(json);

  late AddFavoriteAnime$Mutation$AddFavoriteAnime$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$AddFavoriteAnime$Mutation$AddFavoriteAnimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnime$Mutation extends JsonSerializable with EquatableMixin {
  AddFavoriteAnime$Mutation();

  factory AddFavoriteAnime$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteAnime$MutationFromJson(json);

  AddFavoriteAnime$Mutation$AddFavoriteAnime? addFavoriteAnime;

  @override
  List<Object?> get props => [addFavoriteAnime];
  @override
  Map<String, dynamic> toJson() => _$AddFavoriteAnime$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnimeInput extends JsonSerializable with EquatableMixin {
  AddFavoriteAnimeInput({
    required this.animeIds,
    this.clientMutationId,
    required this.userId,
  });

  factory AddFavoriteAnimeInput.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteAnimeInputFromJson(json);

  late List<String> animeIds;

  String? clientMutationId;

  late String userId;

  @override
  List<Object?> get props => [animeIds, clientMutationId, userId];
  @override
  Map<String, dynamic> toJson() => _$AddFavoriteAnimeInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser$User extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser$User();

  factory UpdateUser$Mutation$UpdateUser$User.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUser$UserFromJson(json);

  late String id;

  late String phone;

  late String role;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? birthday;

  String? bio;

  String? gender;

  String? desiredGender;

  late bool verified;

  String? school;

  String? occupation;

  @override
  List<Object?> get props => [
        id,
        phone,
        role,
        birthday,
        bio,
        gender,
        desiredGender,
        verified,
        school,
        occupation
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$Mutation$UpdateUser$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation$UpdateUser extends JsonSerializable
    with EquatableMixin {
  UpdateUser$Mutation$UpdateUser();

  factory UpdateUser$Mutation$UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$Mutation$UpdateUserFromJson(json);

  late UpdateUser$Mutation$UpdateUser$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$UpdateUser$Mutation$UpdateUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$Mutation extends JsonSerializable with EquatableMixin {
  UpdateUser$Mutation();

  factory UpdateUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$MutationFromJson(json);

  UpdateUser$Mutation$UpdateUser? updateUser;

  @override
  List<Object?> get props => [updateUser];
  @override
  Map<String, dynamic> toJson() => _$UpdateUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserInput extends JsonSerializable with EquatableMixin {
  UpdateUserInput({
    this.clientMutationId,
    required this.params,
  });

  factory UpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInputFromJson(json);

  String? clientMutationId;

  late UserUpdateInput params;

  @override
  List<Object?> get props => [clientMutationId, params];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserUpdateInput extends JsonSerializable with EquatableMixin {
  UserUpdateInput({
    this.bio,
    this.birthday,
    this.desiredGender,
    this.firstName,
    this.gender,
    this.occupation,
    this.phone,
    this.school,
    required this.userId,
    this.verified,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  String? bio;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? birthday;

  int? desiredGender;

  String? firstName;

  int? gender;

  String? occupation;

  String? phone;

  String? school;

  late String userId;

  bool? verified;

  @override
  List<Object?> get props => [
        bio,
        birthday,
        desiredGender,
        firstName,
        gender,
        occupation,
        phone,
        school,
        userId,
        verified
      ];
  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePhoto$Mutation$DeletePhoto extends JsonSerializable
    with EquatableMixin {
  DeletePhoto$Mutation$DeletePhoto();

  factory DeletePhoto$Mutation$DeletePhoto.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePhoto$Mutation$DeletePhotoFromJson(json);

  late bool deleted;

  @override
  List<Object?> get props => [deleted];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePhoto$Mutation$DeletePhotoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePhoto$Mutation extends JsonSerializable with EquatableMixin {
  DeletePhoto$Mutation();

  factory DeletePhoto$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeletePhoto$MutationFromJson(json);

  DeletePhoto$Mutation$DeletePhoto? deletePhoto;

  @override
  List<Object?> get props => [deletePhoto];
  @override
  Map<String, dynamic> toJson() => _$DeletePhoto$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePhotoInput extends JsonSerializable with EquatableMixin {
  DeletePhotoInput({
    this.clientMutationId,
    required this.photoId,
    required this.userId,
  });

  factory DeletePhotoInput.fromJson(Map<String, dynamic> json) =>
      _$DeletePhotoInputFromJson(json);

  String? clientMutationId;

  late String photoId;

  late String userId;

  @override
  List<Object?> get props => [clientMutationId, photoId, userId];
  @override
  Map<String, dynamic> toJson() => _$DeletePhotoInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValidatePhone$Mutation$ValidatePhone$User extends JsonSerializable
    with EquatableMixin {
  ValidatePhone$Mutation$ValidatePhone$User();

  factory ValidatePhone$Mutation$ValidatePhone$User.fromJson(
          Map<String, dynamic> json) =>
      _$ValidatePhone$Mutation$ValidatePhone$UserFromJson(json);

  late String id;

  late String phone;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLISO8601DateTime)
  late DateTime createdAt;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLISO8601DateTime)
  late DateTime updatedAt;

  @override
  List<Object?> get props => [id, phone, createdAt, updatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$ValidatePhone$Mutation$ValidatePhone$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValidatePhone$Mutation$ValidatePhone extends JsonSerializable
    with EquatableMixin {
  ValidatePhone$Mutation$ValidatePhone();

  factory ValidatePhone$Mutation$ValidatePhone.fromJson(
          Map<String, dynamic> json) =>
      _$ValidatePhone$Mutation$ValidatePhoneFromJson(json);

  late ValidatePhone$Mutation$ValidatePhone$User user;

  late String token;

  late bool profileFilled;

  @override
  List<Object?> get props => [user, token, profileFilled];
  @override
  Map<String, dynamic> toJson() =>
      _$ValidatePhone$Mutation$ValidatePhoneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValidatePhone$Mutation extends JsonSerializable with EquatableMixin {
  ValidatePhone$Mutation();

  factory ValidatePhone$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ValidatePhone$MutationFromJson(json);

  ValidatePhone$Mutation$ValidatePhone? validatePhone;

  @override
  List<Object?> get props => [validatePhone];
  @override
  Map<String, dynamic> toJson() => _$ValidatePhone$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValidatePhoneInput extends JsonSerializable with EquatableMixin {
  ValidatePhoneInput({
    this.clientMutationId,
    required this.code,
    required this.userId,
  });

  factory ValidatePhoneInput.fromJson(Map<String, dynamic> json) =>
      _$ValidatePhoneInputFromJson(json);

  String? clientMutationId;

  late int code;

  late String userId;

  @override
  List<Object?> get props => [clientMutationId, code, userId];
  @override
  Map<String, dynamic> toJson() => _$ValidatePhoneInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers
    extends JsonSerializable with EquatableMixin {
  GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers();

  factory GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers.fromJson(
          Map<String, dynamic> json) =>
      _$GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsersFromJson(json);

  late int mi;

  @override
  List<Object?> get props => [mi];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDistanceBetweenUsers$Mutation extends JsonSerializable
    with EquatableMixin {
  GetDistanceBetweenUsers$Mutation();

  factory GetDistanceBetweenUsers$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$GetDistanceBetweenUsers$MutationFromJson(json);

  GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers?
      getDistanceBetweenUsers;

  @override
  List<Object?> get props => [getDistanceBetweenUsers];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDistanceBetweenUsers$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDistanceBetweenUsersInput extends JsonSerializable
    with EquatableMixin {
  GetDistanceBetweenUsersInput({
    this.clientMutationId,
    required this.userId,
    required this.vieweeId,
  });

  factory GetDistanceBetweenUsersInput.fromJson(Map<String, dynamic> json) =>
      _$GetDistanceBetweenUsersInputFromJson(json);

  String? clientMutationId;

  late int userId;

  late int vieweeId;

  @override
  List<Object?> get props => [clientMutationId, userId, vieweeId];
  @override
  Map<String, dynamic> toJson() => _$GetDistanceBetweenUsersInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResendVerifyCode$Mutation$ResendVerifyText$User extends JsonSerializable
    with EquatableMixin {
  ResendVerifyCode$Mutation$ResendVerifyText$User();

  factory ResendVerifyCode$Mutation$ResendVerifyText$User.fromJson(
          Map<String, dynamic> json) =>
      _$ResendVerifyCode$Mutation$ResendVerifyText$UserFromJson(json);

  late String id;

  late String phone;

  @override
  List<Object?> get props => [id, phone];
  @override
  Map<String, dynamic> toJson() =>
      _$ResendVerifyCode$Mutation$ResendVerifyText$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResendVerifyCode$Mutation$ResendVerifyText extends JsonSerializable
    with EquatableMixin {
  ResendVerifyCode$Mutation$ResendVerifyText();

  factory ResendVerifyCode$Mutation$ResendVerifyText.fromJson(
          Map<String, dynamic> json) =>
      _$ResendVerifyCode$Mutation$ResendVerifyTextFromJson(json);

  ResendVerifyCode$Mutation$ResendVerifyText$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$ResendVerifyCode$Mutation$ResendVerifyTextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResendVerifyCode$Mutation extends JsonSerializable with EquatableMixin {
  ResendVerifyCode$Mutation();

  factory ResendVerifyCode$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ResendVerifyCode$MutationFromJson(json);

  ResendVerifyCode$Mutation$ResendVerifyText? resendVerifyText;

  @override
  List<Object?> get props => [resendVerifyText];
  @override
  Map<String, dynamic> toJson() => _$ResendVerifyCode$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResendVerifyTextInput extends JsonSerializable with EquatableMixin {
  ResendVerifyTextInput({
    this.clientMutationId,
    required this.phone,
  });

  factory ResendVerifyTextInput.fromJson(Map<String, dynamic> json) =>
      _$ResendVerifyTextInputFromJson(json);

  String? clientMutationId;

  late String phone;

  @override
  List<Object?> get props => [clientMutationId, phone];
  @override
  Map<String, dynamic> toJson() => _$ResendVerifyTextInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignIn$Mutation$SignIn$User extends JsonSerializable with EquatableMixin {
  SignIn$Mutation$SignIn$User();

  factory SignIn$Mutation$SignIn$User.fromJson(Map<String, dynamic> json) =>
      _$SignIn$Mutation$SignIn$UserFromJson(json);

  late String id;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? currentSignInAt;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? lastSignInAt;

  late String phone;

  @override
  List<Object?> get props => [id, currentSignInAt, lastSignInAt, phone];
  @override
  Map<String, dynamic> toJson() => _$SignIn$Mutation$SignIn$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignIn$Mutation$SignIn extends JsonSerializable with EquatableMixin {
  SignIn$Mutation$SignIn();

  factory SignIn$Mutation$SignIn.fromJson(Map<String, dynamic> json) =>
      _$SignIn$Mutation$SignInFromJson(json);

  late SignIn$Mutation$SignIn$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$SignIn$Mutation$SignInToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignIn$Mutation extends JsonSerializable with EquatableMixin {
  SignIn$Mutation();

  factory SignIn$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SignIn$MutationFromJson(json);

  SignIn$Mutation$SignIn? signIn;

  @override
  List<Object?> get props => [signIn];
  @override
  Map<String, dynamic> toJson() => _$SignIn$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignInInput extends JsonSerializable with EquatableMixin {
  SignInInput({
    this.clientMutationId,
    required this.token,
  });

  factory SignInInput.fromJson(Map<String, dynamic> json) =>
      _$SignInInputFromJson(json);

  String? clientMutationId;

  late String token;

  @override
  List<Object?> get props => [clientMutationId, token];
  @override
  Map<String, dynamic> toJson() => _$SignInInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReorderPhotos$Mutation$ReorderPhotos$Photo extends JsonSerializable
    with EquatableMixin {
  ReorderPhotos$Mutation$ReorderPhotos$Photo();

  factory ReorderPhotos$Mutation$ReorderPhotos$Photo.fromJson(
          Map<String, dynamic> json) =>
      _$ReorderPhotos$Mutation$ReorderPhotos$PhotoFromJson(json);

  int? order;

  late String url;

  late String id;

  @override
  List<Object?> get props => [order, url, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ReorderPhotos$Mutation$ReorderPhotos$PhotoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReorderPhotos$Mutation$ReorderPhotos extends JsonSerializable
    with EquatableMixin {
  ReorderPhotos$Mutation$ReorderPhotos();

  factory ReorderPhotos$Mutation$ReorderPhotos.fromJson(
          Map<String, dynamic> json) =>
      _$ReorderPhotos$Mutation$ReorderPhotosFromJson(json);

  late ReorderPhotos$Mutation$ReorderPhotos$Photo photo;

  @override
  List<Object?> get props => [photo];
  @override
  Map<String, dynamic> toJson() =>
      _$ReorderPhotos$Mutation$ReorderPhotosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReorderPhotos$Mutation extends JsonSerializable with EquatableMixin {
  ReorderPhotos$Mutation();

  factory ReorderPhotos$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ReorderPhotos$MutationFromJson(json);

  ReorderPhotos$Mutation$ReorderPhotos? reorderPhotos;

  @override
  List<Object?> get props => [reorderPhotos];
  @override
  Map<String, dynamic> toJson() => _$ReorderPhotos$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReorderPhotosInput extends JsonSerializable with EquatableMixin {
  ReorderPhotosInput({
    this.clientMutationId,
    required this.order,
    required this.photoId,
  });

  factory ReorderPhotosInput.fromJson(Map<String, dynamic> json) =>
      _$ReorderPhotosInputFromJson(json);

  String? clientMutationId;

  late String order;

  late String photoId;

  @override
  List<Object?> get props => [clientMutationId, order, photoId];
  @override
  Map<String, dynamic> toJson() => _$ReorderPhotosInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SetUserLocation$Mutation$SetUserLocation$User extends JsonSerializable
    with EquatableMixin {
  SetUserLocation$Mutation$SetUserLocation$User();

  factory SetUserLocation$Mutation$SetUserLocation$User.fromJson(
          Map<String, dynamic> json) =>
      _$SetUserLocation$Mutation$SetUserLocation$UserFromJson(json);

  late String id;

  String? lonlat;

  String? displayCity;

  String? displayState;

  @override
  List<Object?> get props => [id, lonlat, displayCity, displayState];
  @override
  Map<String, dynamic> toJson() =>
      _$SetUserLocation$Mutation$SetUserLocation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SetUserLocation$Mutation$SetUserLocation extends JsonSerializable
    with EquatableMixin {
  SetUserLocation$Mutation$SetUserLocation();

  factory SetUserLocation$Mutation$SetUserLocation.fromJson(
          Map<String, dynamic> json) =>
      _$SetUserLocation$Mutation$SetUserLocationFromJson(json);

  late SetUserLocation$Mutation$SetUserLocation$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$SetUserLocation$Mutation$SetUserLocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SetUserLocation$Mutation extends JsonSerializable with EquatableMixin {
  SetUserLocation$Mutation();

  factory SetUserLocation$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SetUserLocation$MutationFromJson(json);

  SetUserLocation$Mutation$SetUserLocation? setUserLocation;

  @override
  List<Object?> get props => [setUserLocation];
  @override
  Map<String, dynamic> toJson() => _$SetUserLocation$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SetUserLocationInput extends JsonSerializable with EquatableMixin {
  SetUserLocationInput({
    this.clientMutationId,
    required this.latitude,
    required this.longitude,
    required this.userId,
  });

  factory SetUserLocationInput.fromJson(Map<String, dynamic> json) =>
      _$SetUserLocationInputFromJson(json);

  String? clientMutationId;

  late String latitude;

  late String longitude;

  late int userId;

  @override
  List<Object?> get props => [clientMutationId, latitude, longitude, userId];
  @override
  Map<String, dynamic> toJson() => _$SetUserLocationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos
    extends JsonSerializable with EquatableMixin {
  UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos();

  factory UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos.fromJson(
          Map<String, dynamic> json) =>
      _$UploadPhoto$Mutation$UploadPhoto$User$Gallery$PhotosFromJson(json);

  int? order;

  late String url;

  late String id;

  @override
  List<Object?> get props => [order, url, id];
  @override
  Map<String, dynamic> toJson() =>
      _$UploadPhoto$Mutation$UploadPhoto$User$Gallery$PhotosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhoto$Mutation$UploadPhoto$User$Gallery extends JsonSerializable
    with EquatableMixin {
  UploadPhoto$Mutation$UploadPhoto$User$Gallery();

  factory UploadPhoto$Mutation$UploadPhoto$User$Gallery.fromJson(
          Map<String, dynamic> json) =>
      _$UploadPhoto$Mutation$UploadPhoto$User$GalleryFromJson(json);

  List<UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos>? photos;

  @override
  List<Object?> get props => [photos];
  @override
  Map<String, dynamic> toJson() =>
      _$UploadPhoto$Mutation$UploadPhoto$User$GalleryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhoto$Mutation$UploadPhoto$User extends JsonSerializable
    with EquatableMixin {
  UploadPhoto$Mutation$UploadPhoto$User();

  factory UploadPhoto$Mutation$UploadPhoto$User.fromJson(
          Map<String, dynamic> json) =>
      _$UploadPhoto$Mutation$UploadPhoto$UserFromJson(json);

  UploadPhoto$Mutation$UploadPhoto$User$Gallery? gallery;

  @override
  List<Object?> get props => [gallery];
  @override
  Map<String, dynamic> toJson() =>
      _$UploadPhoto$Mutation$UploadPhoto$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhoto$Mutation$UploadPhoto extends JsonSerializable
    with EquatableMixin {
  UploadPhoto$Mutation$UploadPhoto();

  factory UploadPhoto$Mutation$UploadPhoto.fromJson(
          Map<String, dynamic> json) =>
      _$UploadPhoto$Mutation$UploadPhotoFromJson(json);

  late UploadPhoto$Mutation$UploadPhoto$User user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() =>
      _$UploadPhoto$Mutation$UploadPhotoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhoto$Mutation extends JsonSerializable with EquatableMixin {
  UploadPhoto$Mutation();

  factory UploadPhoto$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UploadPhoto$MutationFromJson(json);

  UploadPhoto$Mutation$UploadPhoto? uploadPhoto;

  @override
  List<Object?> get props => [uploadPhoto];
  @override
  Map<String, dynamic> toJson() => _$UploadPhoto$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadPhotoInput extends JsonSerializable with EquatableMixin {
  UploadPhotoInput({
    this.clientMutationId,
    this.image,
    required this.order,
    required this.userId,
  });

  factory UploadPhotoInput.fromJson(Map<String, dynamic> json) =>
      _$UploadPhotoInputFromJson(json);

  String? clientMutationId;

  @JsonKey(
      fromJson: fromGraphQLUploadNullableToDartMultipartFileNullable,
      toJson: fromDartMultipartFileNullableToGraphQLUploadNullable)
  MultipartFile? image;

  late int order;

  late int userId;

  @override
  List<Object?> get props => [clientMutationId, image, order, userId];
  @override
  Map<String, dynamic> toJson() => _$UploadPhotoInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query$FetchFeed$Gallery$Photos extends JsonSerializable
    with EquatableMixin {
  FetchFeed$Query$FetchFeed$Gallery$Photos();

  factory FetchFeed$Query$FetchFeed$Gallery$Photos.fromJson(
          Map<String, dynamic> json) =>
      _$FetchFeed$Query$FetchFeed$Gallery$PhotosFromJson(json);

  int? order;

  late String url;

  @override
  List<Object?> get props => [order, url];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchFeed$Query$FetchFeed$Gallery$PhotosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query$FetchFeed$Gallery extends JsonSerializable
    with EquatableMixin {
  FetchFeed$Query$FetchFeed$Gallery();

  factory FetchFeed$Query$FetchFeed$Gallery.fromJson(
          Map<String, dynamic> json) =>
      _$FetchFeed$Query$FetchFeed$GalleryFromJson(json);

  List<FetchFeed$Query$FetchFeed$Gallery$Photos>? photos;

  @override
  List<Object?> get props => [photos];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchFeed$Query$FetchFeed$GalleryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query$FetchFeed$Animes extends JsonSerializable
    with EquatableMixin {
  FetchFeed$Query$FetchFeed$Animes();

  factory FetchFeed$Query$FetchFeed$Animes.fromJson(
          Map<String, dynamic> json) =>
      _$FetchFeed$Query$FetchFeed$AnimesFromJson(json);

  late String id;

  String? title;

  String? cover;

  @override
  List<Object?> get props => [id, title, cover];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchFeed$Query$FetchFeed$AnimesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query$FetchFeed$FavoriteMusic extends JsonSerializable
    with EquatableMixin {
  FetchFeed$Query$FetchFeed$FavoriteMusic();

  factory FetchFeed$Query$FetchFeed$FavoriteMusic.fromJson(
          Map<String, dynamic> json) =>
      _$FetchFeed$Query$FetchFeed$FavoriteMusicFromJson(json);

  late String id;

  String? name;

  String? cover;

  String? musicType;

  @override
  List<Object?> get props => [id, name, cover, musicType];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchFeed$Query$FetchFeed$FavoriteMusicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query$FetchFeed extends JsonSerializable with EquatableMixin {
  FetchFeed$Query$FetchFeed();

  factory FetchFeed$Query$FetchFeed.fromJson(Map<String, dynamic> json) =>
      _$FetchFeed$Query$FetchFeedFromJson(json);

  late String id;

  late String phone;

  late bool premium;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? currentSignInAt;

  String? currentSignInIp;

  String? gender;

  String? desiredGender;

  String? bio;

  FetchFeed$Query$FetchFeed$Gallery? gallery;

  List<FetchFeed$Query$FetchFeed$Animes>? animes;

  List<FetchFeed$Query$FetchFeed$FavoriteMusic>? favoriteMusic;

  @override
  List<Object?> get props => [
        id,
        phone,
        premium,
        currentSignInAt,
        currentSignInIp,
        gender,
        desiredGender,
        bio,
        gallery,
        animes,
        favoriteMusic
      ];
  @override
  Map<String, dynamic> toJson() => _$FetchFeed$Query$FetchFeedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchFeed$Query extends JsonSerializable with EquatableMixin {
  FetchFeed$Query();

  factory FetchFeed$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchFeed$QueryFromJson(json);

  late List<FetchFeed$Query$FetchFeed> fetchFeed;

  @override
  List<Object?> get props => [fetchFeed];
  @override
  Map<String, dynamic> toJson() => _$FetchFeed$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$Matches$Conversation extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$Matches$Conversation();

  factory FetchUser$Query$FetchUser$Matches$Conversation.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$Matches$ConversationFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$Matches$ConversationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$Matches extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$Matches();

  factory FetchUser$Query$FetchUser$Matches.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$MatchesFromJson(json);

  late String id;

  int? matcheeId;

  late FetchUser$Query$FetchUser$Matches$Conversation conversation;

  @override
  List<Object?> get props => [id, matcheeId, conversation];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$MatchesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$Gallery$Photos extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$Gallery$Photos();

  factory FetchUser$Query$FetchUser$Gallery$Photos.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$Gallery$PhotosFromJson(json);

  int? order;

  late String url;

  late String id;

  @override
  List<Object?> get props => [order, url, id];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$Gallery$PhotosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$Gallery extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$Gallery();

  factory FetchUser$Query$FetchUser$Gallery.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$GalleryFromJson(json);

  List<FetchUser$Query$FetchUser$Gallery$Photos>? photos;

  @override
  List<Object?> get props => [photos];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$GalleryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$Animes extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$Animes();

  factory FetchUser$Query$FetchUser$Animes.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$AnimesFromJson(json);

  late String id;

  String? title;

  String? cover;

  @override
  List<Object?> get props => [id, title, cover];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$AnimesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser$FavoriteMusic extends JsonSerializable
    with EquatableMixin {
  FetchUser$Query$FetchUser$FavoriteMusic();

  factory FetchUser$Query$FetchUser$FavoriteMusic.fromJson(
          Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUser$FavoriteMusicFromJson(json);

  late String id;

  String? cover;

  String? musicType;

  String? name;

  @override
  List<Object?> get props => [id, cover, musicType, name];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchUser$Query$FetchUser$FavoriteMusicToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query$FetchUser extends JsonSerializable with EquatableMixin {
  FetchUser$Query$FetchUser();

  factory FetchUser$Query$FetchUser.fromJson(Map<String, dynamic> json) =>
      _$FetchUser$Query$FetchUserFromJson(json);

  late String id;

  late String role;

  late String firstName;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? birthday;

  String? bio;

  String? gender;

  String? desiredGender;

  late String phone;

  late bool verified;

  String? school;

  String? occupation;

  String? displayCity;

  String? displayState;

  String? spotifyEmail;

  String? onlineStatus;

  List<FetchUser$Query$FetchUser$Matches>? matches;

  FetchUser$Query$FetchUser$Gallery? gallery;

  List<FetchUser$Query$FetchUser$Animes>? animes;

  List<FetchUser$Query$FetchUser$FavoriteMusic>? favoriteMusic;

  late bool premium;

  @override
  List<Object?> get props => [
        id,
        role,
        firstName,
        birthday,
        bio,
        gender,
        desiredGender,
        phone,
        verified,
        school,
        occupation,
        displayCity,
        displayState,
        spotifyEmail,
        onlineStatus,
        matches,
        gallery,
        animes,
        favoriteMusic,
        premium
      ];
  @override
  Map<String, dynamic> toJson() => _$FetchUser$Query$FetchUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchUser$Query extends JsonSerializable with EquatableMixin {
  FetchUser$Query();

  factory FetchUser$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchUser$QueryFromJson(json);

  late FetchUser$Query$FetchUser fetchUser;

  @override
  List<Object?> get props => [fetchUser];
  @override
  Map<String, dynamic> toJson() => _$FetchUser$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchAnime$Query$FetchAnime extends JsonSerializable with EquatableMixin {
  FetchAnime$Query$FetchAnime();

  factory FetchAnime$Query$FetchAnime.fromJson(Map<String, dynamic> json) =>
      _$FetchAnime$Query$FetchAnimeFromJson(json);

  late String id;

  String? title;

  String? genres;

  String? cover;

  int? episodes;

  int? popularity;

  int? averageScore;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? startDate;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? endDate;

  String? studios;

  int? year;

  String? status;

  @override
  List<Object?> get props => [
        id,
        title,
        genres,
        cover,
        episodes,
        popularity,
        averageScore,
        startDate,
        endDate,
        studios,
        year,
        status
      ];
  @override
  Map<String, dynamic> toJson() => _$FetchAnime$Query$FetchAnimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchAnime$Query extends JsonSerializable with EquatableMixin {
  FetchAnime$Query();

  factory FetchAnime$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchAnime$QueryFromJson(json);

  late List<FetchAnime$Query$FetchAnime> fetchAnime;

  @override
  List<Object?> get props => [fetchAnime];
  @override
  Map<String, dynamic> toJson() => _$FetchAnime$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AnimeInput extends JsonSerializable with EquatableMixin {
  AnimeInput({
    this.genres,
    required this.page,
    this.title,
  });

  factory AnimeInput.fromJson(Map<String, dynamic> json) =>
      _$AnimeInputFromJson(json);

  List<String>? genres;

  late int page;

  String? title;

  @override
  List<Object?> get props => [genres, page, title];
  @override
  Map<String, dynamic> toJson() => _$AnimeInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchConversations$Query$FetchConversations$Messages$Sticker
    extends JsonSerializable with EquatableMixin {
  FetchConversations$Query$FetchConversations$Messages$Sticker();

  factory FetchConversations$Query$FetchConversations$Messages$Sticker.fromJson(
          Map<String, dynamic> json) =>
      _$FetchConversations$Query$FetchConversations$Messages$StickerFromJson(
          json);

  late String id;

  late String url;

  @override
  List<Object?> get props => [id, url];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchConversations$Query$FetchConversations$Messages$StickerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class FetchConversations$Query$FetchConversations$Messages
    extends JsonSerializable with EquatableMixin {
  FetchConversations$Query$FetchConversations$Messages();

  factory FetchConversations$Query$FetchConversations$Messages.fromJson(
          Map<String, dynamic> json) =>
      _$FetchConversations$Query$FetchConversations$MessagesFromJson(json);

  String? content;

  int? senderId;

  String? reaction;

  FetchConversations$Query$FetchConversations$Messages$Sticker? sticker;

  String? attachment;

  @override
  List<Object?> get props => [content, senderId, reaction, sticker, attachment];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchConversations$Query$FetchConversations$MessagesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchConversations$Query$FetchConversations extends JsonSerializable
    with EquatableMixin {
  FetchConversations$Query$FetchConversations();

  factory FetchConversations$Query$FetchConversations.fromJson(
          Map<String, dynamic> json) =>
      _$FetchConversations$Query$FetchConversationsFromJson(json);

  late String id;

  late int matchId;

  List<FetchConversations$Query$FetchConversations$Messages>? messages;

  @override
  List<Object?> get props => [id, matchId, messages];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchConversations$Query$FetchConversationsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchConversations$Query extends JsonSerializable with EquatableMixin {
  FetchConversations$Query();

  factory FetchConversations$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchConversations$QueryFromJson(json);

  late List<FetchConversations$Query$FetchConversations> fetchConversations;

  @override
  List<Object?> get props => [fetchConversations];
  @override
  Map<String, dynamic> toJson() => _$FetchConversations$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchStickers$Query$FetchStickers extends JsonSerializable
    with EquatableMixin {
  FetchStickers$Query$FetchStickers();

  factory FetchStickers$Query$FetchStickers.fromJson(
          Map<String, dynamic> json) =>
      _$FetchStickers$Query$FetchStickersFromJson(json);

  late String id;

  late String url;

  @override
  List<Object?> get props => [id, url];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchStickers$Query$FetchStickersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchStickers$Query extends JsonSerializable with EquatableMixin {
  FetchStickers$Query();

  factory FetchStickers$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchStickers$QueryFromJson(json);

  late List<FetchStickers$Query$FetchStickers> fetchStickers;

  @override
  List<Object?> get props => [fetchStickers];
  @override
  Map<String, dynamic> toJson() => _$FetchStickers$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteFavoriteAnimeArguments extends JsonSerializable
    with EquatableMixin {
  DeleteFavoriteAnimeArguments({required this.input});

  @override
  factory DeleteFavoriteAnimeArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteFavoriteAnimeArgumentsFromJson(json);

  late DeleteFavoriteAnimeInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$DeleteFavoriteAnimeArgumentsToJson(this);
}

final DELETE_FAVORITE_ANIME_MUTATION_DOCUMENT_OPERATION_NAME =
    'deleteFavoriteAnime';
final DELETE_FAVORITE_ANIME_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteFavoriteAnime'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeleteFavoriteAnimeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFavoriteAnime'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deleted'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class DeleteFavoriteAnimeMutation extends GraphQLQuery<
    DeleteFavoriteAnime$Mutation, DeleteFavoriteAnimeArguments> {
  DeleteFavoriteAnimeMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_FAVORITE_ANIME_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_FAVORITE_ANIME_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteFavoriteAnimeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteFavoriteAnime$Mutation parse(Map<String, dynamic> json) =>
      DeleteFavoriteAnime$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateUserArguments extends JsonSerializable with EquatableMixin {
  CreateUserArguments({required this.input});

  @override
  factory CreateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateUserArgumentsFromJson(json);

  late CreateUserInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$CreateUserArgumentsToJson(this);
}

final CREATE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'createUser';
final CREATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateUserMutation
    extends GraphQLQuery<CreateUser$Mutation, CreateUserArguments> {
  CreateUserMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateUser$Mutation parse(Map<String, dynamic> json) =>
      CreateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SubmitVerifyRequestArguments extends JsonSerializable
    with EquatableMixin {
  SubmitVerifyRequestArguments({required this.input});

  @override
  factory SubmitVerifyRequestArguments.fromJson(Map<String, dynamic> json) =>
      _$SubmitVerifyRequestArgumentsFromJson(json);

  late SubmitVerifyRequestInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$SubmitVerifyRequestArgumentsToJson(this);
}

final SUBMIT_VERIFY_REQUEST_MUTATION_DOCUMENT_OPERATION_NAME =
    'submitVerifyRequest';
final SUBMIT_VERIFY_REQUEST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'submitVerifyRequest'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SubmitVerifyRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitVerifyRequest'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class SubmitVerifyRequestMutation extends GraphQLQuery<
    SubmitVerifyRequest$Mutation, SubmitVerifyRequestArguments> {
  SubmitVerifyRequestMutation({required this.variables});

  @override
  final DocumentNode document = SUBMIT_VERIFY_REQUEST_MUTATION_DOCUMENT;

  @override
  final String operationName =
      SUBMIT_VERIFY_REQUEST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SubmitVerifyRequestArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SubmitVerifyRequest$Mutation parse(Map<String, dynamic> json) =>
      SubmitVerifyRequest$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddFavoriteAnimeArguments extends JsonSerializable with EquatableMixin {
  AddFavoriteAnimeArguments({required this.input});

  @override
  factory AddFavoriteAnimeArguments.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteAnimeArgumentsFromJson(json);

  late AddFavoriteAnimeInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$AddFavoriteAnimeArgumentsToJson(this);
}

final ADD_FAVORITE_ANIME_MUTATION_DOCUMENT_OPERATION_NAME = 'addFavoriteAnime';
final ADD_FAVORITE_ANIME_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'addFavoriteAnime'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddFavoriteAnimeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addFavoriteAnime'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'animes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'cover'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class AddFavoriteAnimeMutation
    extends GraphQLQuery<AddFavoriteAnime$Mutation, AddFavoriteAnimeArguments> {
  AddFavoriteAnimeMutation({required this.variables});

  @override
  final DocumentNode document = ADD_FAVORITE_ANIME_MUTATION_DOCUMENT;

  @override
  final String operationName =
      ADD_FAVORITE_ANIME_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddFavoriteAnimeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddFavoriteAnime$Mutation parse(Map<String, dynamic> json) =>
      AddFavoriteAnime$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserArguments extends JsonSerializable with EquatableMixin {
  UpdateUserArguments({required this.input});

  @override
  factory UpdateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserArgumentsFromJson(json);

  late UpdateUserInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserArgumentsToJson(this);
}

final UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'updateUser';
final UPDATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateUserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'role'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'birthday'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'bio'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'desiredGender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'verified'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'school'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'occupation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class UpdateUserMutation
    extends GraphQLQuery<UpdateUser$Mutation, UpdateUserArguments> {
  UpdateUserMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUser$Mutation parse(Map<String, dynamic> json) =>
      UpdateUser$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePhotoArguments extends JsonSerializable with EquatableMixin {
  DeletePhotoArguments({required this.input});

  @override
  factory DeletePhotoArguments.fromJson(Map<String, dynamic> json) =>
      _$DeletePhotoArgumentsFromJson(json);

  late DeletePhotoInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$DeletePhotoArgumentsToJson(this);
}

final DELETE_PHOTO_MUTATION_DOCUMENT_OPERATION_NAME = 'deletePhoto';
final DELETE_PHOTO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deletePhoto'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeletePhotoInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePhoto'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deleted'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class DeletePhotoMutation
    extends GraphQLQuery<DeletePhoto$Mutation, DeletePhotoArguments> {
  DeletePhotoMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PHOTO_MUTATION_DOCUMENT;

  @override
  final String operationName = DELETE_PHOTO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeletePhotoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeletePhoto$Mutation parse(Map<String, dynamic> json) =>
      DeletePhoto$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ValidatePhoneArguments extends JsonSerializable with EquatableMixin {
  ValidatePhoneArguments({required this.input});

  @override
  factory ValidatePhoneArguments.fromJson(Map<String, dynamic> json) =>
      _$ValidatePhoneArgumentsFromJson(json);

  late ValidatePhoneInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$ValidatePhoneArgumentsToJson(this);
}

final VALIDATE_PHONE_MUTATION_DOCUMENT_OPERATION_NAME = 'validatePhone';
final VALIDATE_PHONE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'validatePhone'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ValidatePhoneInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'validatePhone'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'profileFilled'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class ValidatePhoneMutation
    extends GraphQLQuery<ValidatePhone$Mutation, ValidatePhoneArguments> {
  ValidatePhoneMutation({required this.variables});

  @override
  final DocumentNode document = VALIDATE_PHONE_MUTATION_DOCUMENT;

  @override
  final String operationName = VALIDATE_PHONE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ValidatePhoneArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ValidatePhone$Mutation parse(Map<String, dynamic> json) =>
      ValidatePhone$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetDistanceBetweenUsersArguments extends JsonSerializable
    with EquatableMixin {
  GetDistanceBetweenUsersArguments({required this.input});

  @override
  factory GetDistanceBetweenUsersArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetDistanceBetweenUsersArgumentsFromJson(json);

  late GetDistanceBetweenUsersInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDistanceBetweenUsersArgumentsToJson(this);
}

final GET_DISTANCE_BETWEEN_USERS_MUTATION_DOCUMENT_OPERATION_NAME =
    'getDistanceBetweenUsers';
final GET_DISTANCE_BETWEEN_USERS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'getDistanceBetweenUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetDistanceBetweenUsersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getDistanceBetweenUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mi'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class GetDistanceBetweenUsersMutation extends GraphQLQuery<
    GetDistanceBetweenUsers$Mutation, GetDistanceBetweenUsersArguments> {
  GetDistanceBetweenUsersMutation({required this.variables});

  @override
  final DocumentNode document = GET_DISTANCE_BETWEEN_USERS_MUTATION_DOCUMENT;

  @override
  final String operationName =
      GET_DISTANCE_BETWEEN_USERS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final GetDistanceBetweenUsersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetDistanceBetweenUsers$Mutation parse(Map<String, dynamic> json) =>
      GetDistanceBetweenUsers$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResendVerifyCodeArguments extends JsonSerializable with EquatableMixin {
  ResendVerifyCodeArguments({required this.input});

  @override
  factory ResendVerifyCodeArguments.fromJson(Map<String, dynamic> json) =>
      _$ResendVerifyCodeArgumentsFromJson(json);

  late ResendVerifyTextInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$ResendVerifyCodeArgumentsToJson(this);
}

final RESEND_VERIFY_CODE_MUTATION_DOCUMENT_OPERATION_NAME = 'resendVerifyCode';
final RESEND_VERIFY_CODE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'resendVerifyCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ResendVerifyTextInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resendVerifyText'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class ResendVerifyCodeMutation
    extends GraphQLQuery<ResendVerifyCode$Mutation, ResendVerifyCodeArguments> {
  ResendVerifyCodeMutation({required this.variables});

  @override
  final DocumentNode document = RESEND_VERIFY_CODE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      RESEND_VERIFY_CODE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ResendVerifyCodeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ResendVerifyCode$Mutation parse(Map<String, dynamic> json) =>
      ResendVerifyCode$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SignInArguments extends JsonSerializable with EquatableMixin {
  SignInArguments({required this.input});

  @override
  factory SignInArguments.fromJson(Map<String, dynamic> json) =>
      _$SignInArgumentsFromJson(json);

  late SignInInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$SignInArgumentsToJson(this);
}

final SIGN_IN_MUTATION_DOCUMENT_OPERATION_NAME = 'signIn';
final SIGN_IN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'signIn'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SignInInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signIn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentSignInAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastSignInAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class SignInMutation extends GraphQLQuery<SignIn$Mutation, SignInArguments> {
  SignInMutation({required this.variables});

  @override
  final DocumentNode document = SIGN_IN_MUTATION_DOCUMENT;

  @override
  final String operationName = SIGN_IN_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SignInArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SignIn$Mutation parse(Map<String, dynamic> json) =>
      SignIn$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ReorderPhotosArguments extends JsonSerializable with EquatableMixin {
  ReorderPhotosArguments({required this.input});

  @override
  factory ReorderPhotosArguments.fromJson(Map<String, dynamic> json) =>
      _$ReorderPhotosArgumentsFromJson(json);

  late ReorderPhotosInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$ReorderPhotosArgumentsToJson(this);
}

final REORDER_PHOTOS_MUTATION_DOCUMENT_OPERATION_NAME = 'reorderPhotos';
final REORDER_PHOTOS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'reorderPhotos'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReorderPhotosInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'reorderPhotos'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'photo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'order'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class ReorderPhotosMutation
    extends GraphQLQuery<ReorderPhotos$Mutation, ReorderPhotosArguments> {
  ReorderPhotosMutation({required this.variables});

  @override
  final DocumentNode document = REORDER_PHOTOS_MUTATION_DOCUMENT;

  @override
  final String operationName = REORDER_PHOTOS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ReorderPhotosArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ReorderPhotos$Mutation parse(Map<String, dynamic> json) =>
      ReorderPhotos$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SetUserLocationArguments extends JsonSerializable with EquatableMixin {
  SetUserLocationArguments({required this.input});

  @override
  factory SetUserLocationArguments.fromJson(Map<String, dynamic> json) =>
      _$SetUserLocationArgumentsFromJson(json);

  late SetUserLocationInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$SetUserLocationArgumentsToJson(this);
}

final SET_USER_LOCATION_MUTATION_DOCUMENT_OPERATION_NAME = 'setUserLocation';
final SET_USER_LOCATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'setUserLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SetUserLocationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setUserLocation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lonlat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'displayCity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'displayState'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class SetUserLocationMutation
    extends GraphQLQuery<SetUserLocation$Mutation, SetUserLocationArguments> {
  SetUserLocationMutation({required this.variables});

  @override
  final DocumentNode document = SET_USER_LOCATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      SET_USER_LOCATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final SetUserLocationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SetUserLocation$Mutation parse(Map<String, dynamic> json) =>
      SetUserLocation$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UploadPhotoArguments extends JsonSerializable with EquatableMixin {
  UploadPhotoArguments({required this.input});

  @override
  factory UploadPhotoArguments.fromJson(Map<String, dynamic> json) =>
      _$UploadPhotoArgumentsFromJson(json);

  late UploadPhotoInput input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$UploadPhotoArgumentsToJson(this);
}

final UPLOAD_PHOTO_MUTATION_DOCUMENT_OPERATION_NAME = 'uploadPhoto';
final UPLOAD_PHOTO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'uploadPhoto'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UploadPhotoInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'uploadPhoto'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'gallery'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'photos'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  )
                ]),
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class UploadPhotoMutation
    extends GraphQLQuery<UploadPhoto$Mutation, UploadPhotoArguments> {
  UploadPhotoMutation({required this.variables});

  @override
  final DocumentNode document = UPLOAD_PHOTO_MUTATION_DOCUMENT;

  @override
  final String operationName = UPLOAD_PHOTO_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UploadPhotoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UploadPhoto$Mutation parse(Map<String, dynamic> json) =>
      UploadPhoto$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchFeedArguments extends JsonSerializable with EquatableMixin {
  FetchFeedArguments({
    required this.userId,
    required this.milesAway,
    this.page,
  });

  @override
  factory FetchFeedArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchFeedArgumentsFromJson(json);

  late String userId;

  late int milesAway;

  final int? page;

  @override
  List<Object?> get props => [userId, milesAway, page];
  @override
  Map<String, dynamic> toJson() => _$FetchFeedArgumentsToJson(this);
}

final FETCH_FEED_QUERY_DOCUMENT_OPERATION_NAME = 'fetchFeed';
final FETCH_FEED_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchFeed'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'milesAway')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchFeed'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'milesAway'),
            value: VariableNode(name: NameNode(value: 'milesAway')),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'premium'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currentSignInAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currentSignInIp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'desiredGender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gallery'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'photos'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'order'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'animes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'cover'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'favoriteMusic'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'cover'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'musicType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class FetchFeedQuery extends GraphQLQuery<FetchFeed$Query, FetchFeedArguments> {
  FetchFeedQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_FEED_QUERY_DOCUMENT;

  @override
  final String operationName = FETCH_FEED_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchFeedArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchFeed$Query parse(Map<String, dynamic> json) =>
      FetchFeed$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchUserArguments extends JsonSerializable with EquatableMixin {
  FetchUserArguments({required this.userId});

  @override
  factory FetchUserArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchUserArgumentsFromJson(json);

  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$FetchUserArgumentsToJson(this);
}

final FETCH_USER_QUERY_DOCUMENT_OPERATION_NAME = 'fetchUser';
final FETCH_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthday'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'desiredGender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'verified'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'school'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'occupation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayCity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayState'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'spotifyEmail'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'onlineStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'matches'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'matcheeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'conversation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'gallery'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'photos'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'order'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'animes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'cover'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'favoriteMusic'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'cover'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'musicType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'premium'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FetchUserQuery extends GraphQLQuery<FetchUser$Query, FetchUserArguments> {
  FetchUserQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_USER_QUERY_DOCUMENT;

  @override
  final String operationName = FETCH_USER_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchUser$Query parse(Map<String, dynamic> json) =>
      FetchUser$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchAnimeArguments extends JsonSerializable with EquatableMixin {
  FetchAnimeArguments({required this.params});

  @override
  factory FetchAnimeArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchAnimeArgumentsFromJson(json);

  late AnimeInput params;

  @override
  List<Object?> get props => [params];
  @override
  Map<String, dynamic> toJson() => _$FetchAnimeArgumentsToJson(this);
}

final FETCH_ANIME_QUERY_DOCUMENT_OPERATION_NAME = 'fetchAnime';
final FETCH_ANIME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchAnime'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'AnimeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchAnime'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'params'),
            value: VariableNode(name: NameNode(value: 'params')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'genres'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cover'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'episodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'popularity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'averageScore'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'endDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'year'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FetchAnimeQuery
    extends GraphQLQuery<FetchAnime$Query, FetchAnimeArguments> {
  FetchAnimeQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_ANIME_QUERY_DOCUMENT;

  @override
  final String operationName = FETCH_ANIME_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchAnimeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchAnime$Query parse(Map<String, dynamic> json) =>
      FetchAnime$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchConversationsArguments extends JsonSerializable with EquatableMixin {
  FetchConversationsArguments({required this.userId});

  @override
  factory FetchConversationsArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchConversationsArgumentsFromJson(json);

  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$FetchConversationsArgumentsToJson(this);
}

final FETCH_CONVERSATIONS_QUERY_DOCUMENT_OPERATION_NAME = 'fetchConversations';
final FETCH_CONVERSATIONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchConversations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchConversations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'matchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'messages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'content'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'senderId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'reaction'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sticker'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'attachment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class FetchConversationsQuery extends GraphQLQuery<FetchConversations$Query,
    FetchConversationsArguments> {
  FetchConversationsQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_CONVERSATIONS_QUERY_DOCUMENT;

  @override
  final String operationName =
      FETCH_CONVERSATIONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchConversationsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchConversations$Query parse(Map<String, dynamic> json) =>
      FetchConversations$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchStickersArguments extends JsonSerializable with EquatableMixin {
  FetchStickersArguments({required this.page});

  @override
  factory FetchStickersArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchStickersArgumentsFromJson(json);

  late int page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$FetchStickersArgumentsToJson(this);
}

final FETCH_STICKERS_QUERY_DOCUMENT_OPERATION_NAME = 'fetchStickers';
final FETCH_STICKERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetchStickers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fetchStickers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FetchStickersQuery
    extends GraphQLQuery<FetchStickers$Query, FetchStickersArguments> {
  FetchStickersQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_STICKERS_QUERY_DOCUMENT;

  @override
  final String operationName = FETCH_STICKERS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchStickersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchStickers$Query parse(Map<String, dynamic> json) =>
      FetchStickers$Query.fromJson(json);
}
