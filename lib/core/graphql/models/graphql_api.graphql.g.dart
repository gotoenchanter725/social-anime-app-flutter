// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUser$Mutation$CreateUser$User
    _$CreateUser$Mutation$CreateUser$UserFromJson(Map<String, dynamic> json) =>
        CreateUser$Mutation$CreateUser$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..updatedAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['updatedAt'] as String);

Map<String, dynamic> _$CreateUser$Mutation$CreateUser$UserToJson(
        CreateUser$Mutation$CreateUser$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.updatedAt),
    };

CreateUser$Mutation$CreateUser _$CreateUser$Mutation$CreateUserFromJson(
        Map<String, dynamic> json) =>
    CreateUser$Mutation$CreateUser()
      ..user = CreateUser$Mutation$CreateUser$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUser$Mutation$CreateUserToJson(
        CreateUser$Mutation$CreateUser instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

CreateUser$Mutation _$CreateUser$MutationFromJson(Map<String, dynamic> json) =>
    CreateUser$Mutation()
      ..createUser = json['createUser'] == null
          ? null
          : CreateUser$Mutation$CreateUser.fromJson(
              json['createUser'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUser$MutationToJson(
        CreateUser$Mutation instance) =>
    <String, dynamic>{
      'createUser': instance.createUser?.toJson(),
    };

CreateUserInput _$CreateUserInputFromJson(Map<String, dynamic> json) =>
    CreateUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: UserInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateUserInputToJson(CreateUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

UserInput _$UserInputFromJson(Map<String, dynamic> json) => UserInput(
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserInputToJson(UserInput instance) => <String, dynamic>{
      'phone': instance.phone,
    };

SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User
    _$SubmitVerifyRequest$Mutation$SubmitVerifyRequest$UserFromJson(
            Map<String, dynamic> json) =>
        SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String;

Map<String, dynamic>
    _$SubmitVerifyRequest$Mutation$SubmitVerifyRequest$UserToJson(
            SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User instance) =>
        <String, dynamic>{
          'id': instance.id,
          'phone': instance.phone,
        };

SubmitVerifyRequest$Mutation$SubmitVerifyRequest
    _$SubmitVerifyRequest$Mutation$SubmitVerifyRequestFromJson(
            Map<String, dynamic> json) =>
        SubmitVerifyRequest$Mutation$SubmitVerifyRequest()
          ..user =
              SubmitVerifyRequest$Mutation$SubmitVerifyRequest$User.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$SubmitVerifyRequest$Mutation$SubmitVerifyRequestToJson(
        SubmitVerifyRequest$Mutation$SubmitVerifyRequest instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

SubmitVerifyRequest$Mutation _$SubmitVerifyRequest$MutationFromJson(
        Map<String, dynamic> json) =>
    SubmitVerifyRequest$Mutation()
      ..submitVerifyRequest = json['submitVerifyRequest'] == null
          ? null
          : SubmitVerifyRequest$Mutation$SubmitVerifyRequest.fromJson(
              json['submitVerifyRequest'] as Map<String, dynamic>);

Map<String, dynamic> _$SubmitVerifyRequest$MutationToJson(
        SubmitVerifyRequest$Mutation instance) =>
    <String, dynamic>{
      'submitVerifyRequest': instance.submitVerifyRequest?.toJson(),
    };

SubmitVerifyRequestInput _$SubmitVerifyRequestInputFromJson(
        Map<String, dynamic> json) =>
    SubmitVerifyRequestInput(
      clientMutationId: json['clientMutationId'] as String?,
      params:
          VerifyRequestInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubmitVerifyRequestInputToJson(
        SubmitVerifyRequestInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

VerifyRequestInput _$VerifyRequestInputFromJson(Map<String, dynamic> json) =>
    VerifyRequestInput(
      image:
          fromGraphQLUploadToDartMultipartFile(json['image'] as MultipartFile),
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$VerifyRequestInputToJson(VerifyRequestInput instance) =>
    <String, dynamic>{
      'image': fromDartMultipartFileToGraphQLUpload(instance.image),
      'userId': instance.userId,
    };

AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes
    _$AddFavoriteAnime$Mutation$AddFavoriteAnime$User$AnimesFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes()
          ..id = json['id'] as String
          ..title = json['title'] as String?
          ..cover = json['cover'] as String?;

Map<String, dynamic>
    _$AddFavoriteAnime$Mutation$AddFavoriteAnime$User$AnimesToJson(
            AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'cover': instance.cover,
        };

AddFavoriteAnime$Mutation$AddFavoriteAnime$User
    _$AddFavoriteAnime$Mutation$AddFavoriteAnime$UserFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteAnime$Mutation$AddFavoriteAnime$User()
          ..animes = (json['animes'] as List<dynamic>?)
              ?.map((e) =>
                  AddFavoriteAnime$Mutation$AddFavoriteAnime$User$Animes
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$AddFavoriteAnime$Mutation$AddFavoriteAnime$UserToJson(
        AddFavoriteAnime$Mutation$AddFavoriteAnime$User instance) =>
    <String, dynamic>{
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
    };

AddFavoriteAnime$Mutation$AddFavoriteAnime
    _$AddFavoriteAnime$Mutation$AddFavoriteAnimeFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteAnime$Mutation$AddFavoriteAnime()
          ..user = AddFavoriteAnime$Mutation$AddFavoriteAnime$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$AddFavoriteAnime$Mutation$AddFavoriteAnimeToJson(
        AddFavoriteAnime$Mutation$AddFavoriteAnime instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

AddFavoriteAnime$Mutation _$AddFavoriteAnime$MutationFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteAnime$Mutation()
      ..addFavoriteAnime = json['addFavoriteAnime'] == null
          ? null
          : AddFavoriteAnime$Mutation$AddFavoriteAnime.fromJson(
              json['addFavoriteAnime'] as Map<String, dynamic>);

Map<String, dynamic> _$AddFavoriteAnime$MutationToJson(
        AddFavoriteAnime$Mutation instance) =>
    <String, dynamic>{
      'addFavoriteAnime': instance.addFavoriteAnime?.toJson(),
    };

AddFavoriteAnimeInput _$AddFavoriteAnimeInputFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteAnimeInput(
      animeIds:
          (json['animeIds'] as List<dynamic>).map((e) => e as String).toList(),
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$AddFavoriteAnimeInputToJson(
        AddFavoriteAnimeInput instance) =>
    <String, dynamic>{
      'animeIds': instance.animeIds,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

UpdateUser$Mutation$UpdateUser$User
    _$UpdateUser$Mutation$UpdateUser$UserFromJson(Map<String, dynamic> json) =>
        UpdateUser$Mutation$UpdateUser$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..role = json['role'] as String
          ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['birthday'] as String?)
          ..bio = json['bio'] as String?
          ..gender = json['gender'] as String?
          ..desiredGender = json['desiredGender'] as String?
          ..verified = json['verified'] as bool
          ..school = json['school'] as String?
          ..occupation = json['occupation'] as String?;

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUser$UserToJson(
        UpdateUser$Mutation$UpdateUser$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'role': instance.role,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'bio': instance.bio,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'verified': instance.verified,
      'school': instance.school,
      'occupation': instance.occupation,
    };

UpdateUser$Mutation$UpdateUser _$UpdateUser$Mutation$UpdateUserFromJson(
        Map<String, dynamic> json) =>
    UpdateUser$Mutation$UpdateUser()
      ..user = UpdateUser$Mutation$UpdateUser$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUser$Mutation$UpdateUserToJson(
        UpdateUser$Mutation$UpdateUser instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

UpdateUser$Mutation _$UpdateUser$MutationFromJson(Map<String, dynamic> json) =>
    UpdateUser$Mutation()
      ..updateUser = json['updateUser'] == null
          ? null
          : UpdateUser$Mutation$UpdateUser.fromJson(
              json['updateUser'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUser$MutationToJson(
        UpdateUser$Mutation instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser?.toJson(),
    };

UpdateUserInput _$UpdateUserInputFromJson(Map<String, dynamic> json) =>
    UpdateUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: UserUpdateInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateUserInputToJson(UpdateUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      bio: json['bio'] as String?,
      birthday: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['birthday'] as String?),
      desiredGender: json['desiredGender'] as int?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as int?,
      occupation: json['occupation'] as String?,
      phone: json['phone'] as String?,
      school: json['school'] as String?,
      userId: json['userId'] as String,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'desiredGender': instance.desiredGender,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'occupation': instance.occupation,
      'phone': instance.phone,
      'school': instance.school,
      'userId': instance.userId,
      'verified': instance.verified,
    };

DeletePhoto$Mutation$DeletePhoto _$DeletePhoto$Mutation$DeletePhotoFromJson(
        Map<String, dynamic> json) =>
    DeletePhoto$Mutation$DeletePhoto()..deleted = json['deleted'] as bool;

Map<String, dynamic> _$DeletePhoto$Mutation$DeletePhotoToJson(
        DeletePhoto$Mutation$DeletePhoto instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
    };

DeletePhoto$Mutation _$DeletePhoto$MutationFromJson(
        Map<String, dynamic> json) =>
    DeletePhoto$Mutation()
      ..deletePhoto = json['deletePhoto'] == null
          ? null
          : DeletePhoto$Mutation$DeletePhoto.fromJson(
              json['deletePhoto'] as Map<String, dynamic>);

Map<String, dynamic> _$DeletePhoto$MutationToJson(
        DeletePhoto$Mutation instance) =>
    <String, dynamic>{
      'deletePhoto': instance.deletePhoto?.toJson(),
    };

DeletePhotoInput _$DeletePhotoInputFromJson(Map<String, dynamic> json) =>
    DeletePhotoInput(
      clientMutationId: json['clientMutationId'] as String?,
      photoId: json['photoId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$DeletePhotoInputToJson(DeletePhotoInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'photoId': instance.photoId,
      'userId': instance.userId,
    };

ValidatePhone$Mutation$ValidatePhone$User
    _$ValidatePhone$Mutation$ValidatePhone$UserFromJson(
            Map<String, dynamic> json) =>
        ValidatePhone$Mutation$ValidatePhone$User()
          ..phone = json['phone'] as String;

Map<String, dynamic> _$ValidatePhone$Mutation$ValidatePhone$UserToJson(
        ValidatePhone$Mutation$ValidatePhone$User instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };

ValidatePhone$Mutation$ValidatePhone
    _$ValidatePhone$Mutation$ValidatePhoneFromJson(Map<String, dynamic> json) =>
        ValidatePhone$Mutation$ValidatePhone()
          ..user = ValidatePhone$Mutation$ValidatePhone$User.fromJson(
              json['user'] as Map<String, dynamic>)
          ..token = json['token'] as String
          ..profileFilled = json['profileFilled'] as bool;

Map<String, dynamic> _$ValidatePhone$Mutation$ValidatePhoneToJson(
        ValidatePhone$Mutation$ValidatePhone instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'token': instance.token,
      'profileFilled': instance.profileFilled,
    };

ValidatePhone$Mutation _$ValidatePhone$MutationFromJson(
        Map<String, dynamic> json) =>
    ValidatePhone$Mutation()
      ..validatePhone = json['validatePhone'] == null
          ? null
          : ValidatePhone$Mutation$ValidatePhone.fromJson(
              json['validatePhone'] as Map<String, dynamic>);

Map<String, dynamic> _$ValidatePhone$MutationToJson(
        ValidatePhone$Mutation instance) =>
    <String, dynamic>{
      'validatePhone': instance.validatePhone?.toJson(),
    };

ValidatePhoneInput _$ValidatePhoneInputFromJson(Map<String, dynamic> json) =>
    ValidatePhoneInput(
      clientMutationId: json['clientMutationId'] as String?,
      code: json['code'] as int,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ValidatePhoneInputToJson(ValidatePhoneInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'code': instance.code,
      'userId': instance.userId,
    };

ResendVerifyCode$Mutation$ResendVerifyText$User
    _$ResendVerifyCode$Mutation$ResendVerifyText$UserFromJson(
            Map<String, dynamic> json) =>
        ResendVerifyCode$Mutation$ResendVerifyText$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String;

Map<String, dynamic> _$ResendVerifyCode$Mutation$ResendVerifyText$UserToJson(
        ResendVerifyCode$Mutation$ResendVerifyText$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
    };

ResendVerifyCode$Mutation$ResendVerifyText
    _$ResendVerifyCode$Mutation$ResendVerifyTextFromJson(
            Map<String, dynamic> json) =>
        ResendVerifyCode$Mutation$ResendVerifyText()
          ..user = json['user'] == null
              ? null
              : ResendVerifyCode$Mutation$ResendVerifyText$User.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$ResendVerifyCode$Mutation$ResendVerifyTextToJson(
        ResendVerifyCode$Mutation$ResendVerifyText instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

ResendVerifyCode$Mutation _$ResendVerifyCode$MutationFromJson(
        Map<String, dynamic> json) =>
    ResendVerifyCode$Mutation()
      ..resendVerifyText = json['resendVerifyText'] == null
          ? null
          : ResendVerifyCode$Mutation$ResendVerifyText.fromJson(
              json['resendVerifyText'] as Map<String, dynamic>);

Map<String, dynamic> _$ResendVerifyCode$MutationToJson(
        ResendVerifyCode$Mutation instance) =>
    <String, dynamic>{
      'resendVerifyText': instance.resendVerifyText?.toJson(),
    };

ResendVerifyTextInput _$ResendVerifyTextInputFromJson(
        Map<String, dynamic> json) =>
    ResendVerifyTextInput(
      clientMutationId: json['clientMutationId'] as String?,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$ResendVerifyTextInputToJson(
        ResendVerifyTextInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'phone': instance.phone,
    };

SignIn$Mutation$SignIn$User _$SignIn$Mutation$SignIn$UserFromJson(
        Map<String, dynamic> json) =>
    SignIn$Mutation$SignIn$User()
      ..id = json['id'] as String
      ..currentSignInAt =
          fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['currentSignInAt'] as String?)
      ..lastSignInAt = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['lastSignInAt'] as String?)
      ..phone = json['phone'] as String;

Map<String, dynamic> _$SignIn$Mutation$SignIn$UserToJson(
        SignIn$Mutation$SignIn$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentSignInAt':
          fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.currentSignInAt),
      'lastSignInAt': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.lastSignInAt),
      'phone': instance.phone,
    };

SignIn$Mutation$SignIn _$SignIn$Mutation$SignInFromJson(
        Map<String, dynamic> json) =>
    SignIn$Mutation$SignIn()
      ..user = SignIn$Mutation$SignIn$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$SignIn$Mutation$SignInToJson(
        SignIn$Mutation$SignIn instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

SignIn$Mutation _$SignIn$MutationFromJson(Map<String, dynamic> json) =>
    SignIn$Mutation()
      ..signIn = json['signIn'] == null
          ? null
          : SignIn$Mutation$SignIn.fromJson(
              json['signIn'] as Map<String, dynamic>);

Map<String, dynamic> _$SignIn$MutationToJson(SignIn$Mutation instance) =>
    <String, dynamic>{
      'signIn': instance.signIn?.toJson(),
    };

SignInInput _$SignInInputFromJson(Map<String, dynamic> json) => SignInInput(
      clientMutationId: json['clientMutationId'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$SignInInputToJson(SignInInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'token': instance.token,
    };

ReorderPhotos$Mutation$ReorderPhotos$Photo
    _$ReorderPhotos$Mutation$ReorderPhotos$PhotoFromJson(
            Map<String, dynamic> json) =>
        ReorderPhotos$Mutation$ReorderPhotos$Photo()
          ..order = json['order'] as int?
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic> _$ReorderPhotos$Mutation$ReorderPhotos$PhotoToJson(
        ReorderPhotos$Mutation$ReorderPhotos$Photo instance) =>
    <String, dynamic>{
      'order': instance.order,
      'url': instance.url,
      'id': instance.id,
    };

ReorderPhotos$Mutation$ReorderPhotos
    _$ReorderPhotos$Mutation$ReorderPhotosFromJson(Map<String, dynamic> json) =>
        ReorderPhotos$Mutation$ReorderPhotos()
          ..photo = ReorderPhotos$Mutation$ReorderPhotos$Photo.fromJson(
              json['photo'] as Map<String, dynamic>);

Map<String, dynamic> _$ReorderPhotos$Mutation$ReorderPhotosToJson(
        ReorderPhotos$Mutation$ReorderPhotos instance) =>
    <String, dynamic>{
      'photo': instance.photo.toJson(),
    };

ReorderPhotos$Mutation _$ReorderPhotos$MutationFromJson(
        Map<String, dynamic> json) =>
    ReorderPhotos$Mutation()
      ..reorderPhotos = json['reorderPhotos'] == null
          ? null
          : ReorderPhotos$Mutation$ReorderPhotos.fromJson(
              json['reorderPhotos'] as Map<String, dynamic>);

Map<String, dynamic> _$ReorderPhotos$MutationToJson(
        ReorderPhotos$Mutation instance) =>
    <String, dynamic>{
      'reorderPhotos': instance.reorderPhotos?.toJson(),
    };

ReorderPhotosInput _$ReorderPhotosInputFromJson(Map<String, dynamic> json) =>
    ReorderPhotosInput(
      clientMutationId: json['clientMutationId'] as String?,
      order: json['order'] as String,
      photoId: json['photoId'] as String,
    );

Map<String, dynamic> _$ReorderPhotosInputToJson(ReorderPhotosInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'order': instance.order,
      'photoId': instance.photoId,
    };

SetUserLocation$Mutation$SetUserLocation$User
    _$SetUserLocation$Mutation$SetUserLocation$UserFromJson(
            Map<String, dynamic> json) =>
        SetUserLocation$Mutation$SetUserLocation$User()
          ..id = json['id'] as String
          ..lonlat = json['lonlat'] as String?
          ..displayCity = json['displayCity'] as String?
          ..displayState = json['displayState'] as String?;

Map<String, dynamic> _$SetUserLocation$Mutation$SetUserLocation$UserToJson(
        SetUserLocation$Mutation$SetUserLocation$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lonlat': instance.lonlat,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
    };

SetUserLocation$Mutation$SetUserLocation
    _$SetUserLocation$Mutation$SetUserLocationFromJson(
            Map<String, dynamic> json) =>
        SetUserLocation$Mutation$SetUserLocation()
          ..user = SetUserLocation$Mutation$SetUserLocation$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$SetUserLocation$Mutation$SetUserLocationToJson(
        SetUserLocation$Mutation$SetUserLocation instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

SetUserLocation$Mutation _$SetUserLocation$MutationFromJson(
        Map<String, dynamic> json) =>
    SetUserLocation$Mutation()
      ..setUserLocation = json['setUserLocation'] == null
          ? null
          : SetUserLocation$Mutation$SetUserLocation.fromJson(
              json['setUserLocation'] as Map<String, dynamic>);

Map<String, dynamic> _$SetUserLocation$MutationToJson(
        SetUserLocation$Mutation instance) =>
    <String, dynamic>{
      'setUserLocation': instance.setUserLocation?.toJson(),
    };

SetUserLocationInput _$SetUserLocationInputFromJson(
        Map<String, dynamic> json) =>
    SetUserLocationInput(
      clientMutationId: json['clientMutationId'] as String?,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$SetUserLocationInputToJson(
        SetUserLocationInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'userId': instance.userId,
    };

UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos
    _$UploadPhoto$Mutation$UploadPhoto$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos()
          ..order = json['order'] as int?
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$UploadPhoto$Mutation$UploadPhoto$User$Gallery$PhotosToJson(
            UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

UploadPhoto$Mutation$UploadPhoto$User$Gallery
    _$UploadPhoto$Mutation$UploadPhoto$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        UploadPhoto$Mutation$UploadPhoto$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$UploadPhoto$Mutation$UploadPhoto$User$GalleryToJson(
        UploadPhoto$Mutation$UploadPhoto$User$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

UploadPhoto$Mutation$UploadPhoto$User
    _$UploadPhoto$Mutation$UploadPhoto$UserFromJson(
            Map<String, dynamic> json) =>
        UploadPhoto$Mutation$UploadPhoto$User()
          ..gallery = json['gallery'] == null
              ? null
              : UploadPhoto$Mutation$UploadPhoto$User$Gallery.fromJson(
                  json['gallery'] as Map<String, dynamic>);

Map<String, dynamic> _$UploadPhoto$Mutation$UploadPhoto$UserToJson(
        UploadPhoto$Mutation$UploadPhoto$User instance) =>
    <String, dynamic>{
      'gallery': instance.gallery?.toJson(),
    };

UploadPhoto$Mutation$UploadPhoto _$UploadPhoto$Mutation$UploadPhotoFromJson(
        Map<String, dynamic> json) =>
    UploadPhoto$Mutation$UploadPhoto()
      ..user = UploadPhoto$Mutation$UploadPhoto$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UploadPhoto$Mutation$UploadPhotoToJson(
        UploadPhoto$Mutation$UploadPhoto instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

UploadPhoto$Mutation _$UploadPhoto$MutationFromJson(
        Map<String, dynamic> json) =>
    UploadPhoto$Mutation()
      ..uploadPhoto = json['uploadPhoto'] == null
          ? null
          : UploadPhoto$Mutation$UploadPhoto.fromJson(
              json['uploadPhoto'] as Map<String, dynamic>);

Map<String, dynamic> _$UploadPhoto$MutationToJson(
        UploadPhoto$Mutation instance) =>
    <String, dynamic>{
      'uploadPhoto': instance.uploadPhoto?.toJson(),
    };

UploadPhotoInput _$UploadPhotoInputFromJson(Map<String, dynamic> json) =>
    UploadPhotoInput(
      clientMutationId: json['clientMutationId'] as String?,
      image: fromGraphQLUploadNullableToDartMultipartFileNullable(
          json['image'] as MultipartFile?),
      order: json['order'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$UploadPhotoInputToJson(UploadPhotoInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'image':
          fromDartMultipartFileNullableToGraphQLUploadNullable(instance.image),
      'order': instance.order,
      'userId': instance.userId,
    };

FetchFeed$Query$FetchFeed$Gallery$Photos
    _$FetchFeed$Query$FetchFeed$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FetchFeed$Query$FetchFeed$Gallery$Photos()
          ..order = json['order'] as int?
          ..url = json['url'] as String;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$Gallery$PhotosToJson(
        FetchFeed$Query$FetchFeed$Gallery$Photos instance) =>
    <String, dynamic>{
      'order': instance.order,
      'url': instance.url,
    };

FetchFeed$Query$FetchFeed$Gallery _$FetchFeed$Query$FetchFeed$GalleryFromJson(
        Map<String, dynamic> json) =>
    FetchFeed$Query$FetchFeed$Gallery()
      ..photos = (json['photos'] as List<dynamic>?)
          ?.map((e) => FetchFeed$Query$FetchFeed$Gallery$Photos.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$GalleryToJson(
        FetchFeed$Query$FetchFeed$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

FetchFeed$Query$FetchFeed$Animes _$FetchFeed$Query$FetchFeed$AnimesFromJson(
        Map<String, dynamic> json) =>
    FetchFeed$Query$FetchFeed$Animes()
      ..id = json['id'] as String
      ..title = json['title'] as String?
      ..cover = json['cover'] as String?;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$AnimesToJson(
        FetchFeed$Query$FetchFeed$Animes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
    };

FetchFeed$Query$FetchFeed$FavoriteMusic
    _$FetchFeed$Query$FetchFeed$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        FetchFeed$Query$FetchFeed$FavoriteMusic()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..cover = json['cover'] as String?
          ..musicType = json['musicType'] as String?;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$FavoriteMusicToJson(
        FetchFeed$Query$FetchFeed$FavoriteMusic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'musicType': instance.musicType,
    };

FetchFeed$Query$FetchFeed _$FetchFeed$Query$FetchFeedFromJson(
        Map<String, dynamic> json) =>
    FetchFeed$Query$FetchFeed()
      ..id = json['id'] as String
      ..phone = json['phone'] as String
      ..premium = json['premium'] as bool
      ..currentSignInAt =
          fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['currentSignInAt'] as String?)
      ..currentSignInIp = json['currentSignInIp'] as String?
      ..gender = json['gender'] as String?
      ..desiredGender = json['desiredGender'] as String?
      ..bio = json['bio'] as String?
      ..gallery = json['gallery'] == null
          ? null
          : FetchFeed$Query$FetchFeed$Gallery.fromJson(
              json['gallery'] as Map<String, dynamic>)
      ..animes = (json['animes'] as List<dynamic>?)
          ?.map((e) => FetchFeed$Query$FetchFeed$Animes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
          ?.map((e) => FetchFeed$Query$FetchFeed$FavoriteMusic.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchFeed$Query$FetchFeedToJson(
        FetchFeed$Query$FetchFeed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'premium': instance.premium,
      'currentSignInAt':
          fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.currentSignInAt),
      'currentSignInIp': instance.currentSignInIp,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'bio': instance.bio,
      'gallery': instance.gallery?.toJson(),
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
    };

FetchFeed$Query _$FetchFeed$QueryFromJson(Map<String, dynamic> json) =>
    FetchFeed$Query()
      ..fetchFeed = (json['fetchFeed'] as List<dynamic>)
          .map((e) =>
              FetchFeed$Query$FetchFeed.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchFeed$QueryToJson(FetchFeed$Query instance) =>
    <String, dynamic>{
      'fetchFeed': instance.fetchFeed.map((e) => e.toJson()).toList(),
    };

FetchUser$Query$FetchUser$Matches$Conversation
    _$FetchUser$Query$FetchUser$Matches$ConversationFromJson(
            Map<String, dynamic> json) =>
        FetchUser$Query$FetchUser$Matches$Conversation()
          ..id = json['id'] as String;

Map<String, dynamic> _$FetchUser$Query$FetchUser$Matches$ConversationToJson(
        FetchUser$Query$FetchUser$Matches$Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

FetchUser$Query$FetchUser$Matches _$FetchUser$Query$FetchUser$MatchesFromJson(
        Map<String, dynamic> json) =>
    FetchUser$Query$FetchUser$Matches()
      ..id = json['id'] as String
      ..matcheeId = json['matcheeId'] as int?
      ..conversation = FetchUser$Query$FetchUser$Matches$Conversation.fromJson(
          json['conversation'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchUser$Query$FetchUser$MatchesToJson(
        FetchUser$Query$FetchUser$Matches instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matcheeId': instance.matcheeId,
      'conversation': instance.conversation.toJson(),
    };

FetchUser$Query$FetchUser$Gallery$Photos
    _$FetchUser$Query$FetchUser$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FetchUser$Query$FetchUser$Gallery$Photos()
          ..order = json['order'] as int?
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic> _$FetchUser$Query$FetchUser$Gallery$PhotosToJson(
        FetchUser$Query$FetchUser$Gallery$Photos instance) =>
    <String, dynamic>{
      'order': instance.order,
      'url': instance.url,
      'id': instance.id,
    };

FetchUser$Query$FetchUser$Gallery _$FetchUser$Query$FetchUser$GalleryFromJson(
        Map<String, dynamic> json) =>
    FetchUser$Query$FetchUser$Gallery()
      ..photos = (json['photos'] as List<dynamic>?)
          ?.map((e) => FetchUser$Query$FetchUser$Gallery$Photos.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchUser$Query$FetchUser$GalleryToJson(
        FetchUser$Query$FetchUser$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

FetchUser$Query$FetchUser$Animes _$FetchUser$Query$FetchUser$AnimesFromJson(
        Map<String, dynamic> json) =>
    FetchUser$Query$FetchUser$Animes()
      ..id = json['id'] as String
      ..title = json['title'] as String?
      ..cover = json['cover'] as String?;

Map<String, dynamic> _$FetchUser$Query$FetchUser$AnimesToJson(
        FetchUser$Query$FetchUser$Animes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
    };

FetchUser$Query$FetchUser$FavoriteMusic
    _$FetchUser$Query$FetchUser$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        FetchUser$Query$FetchUser$FavoriteMusic()
          ..id = json['id'] as String
          ..cover = json['cover'] as String?
          ..musicType = json['musicType'] as String?
          ..name = json['name'] as String?;

Map<String, dynamic> _$FetchUser$Query$FetchUser$FavoriteMusicToJson(
        FetchUser$Query$FetchUser$FavoriteMusic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cover': instance.cover,
      'musicType': instance.musicType,
      'name': instance.name,
    };

FetchUser$Query$FetchUser _$FetchUser$Query$FetchUserFromJson(
        Map<String, dynamic> json) =>
    FetchUser$Query$FetchUser()
      ..id = json['id'] as String
      ..role = json['role'] as String
      ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['birthday'] as String?)
      ..bio = json['bio'] as String?
      ..gender = json['gender'] as String?
      ..desiredGender = json['desiredGender'] as String?
      ..phone = json['phone'] as String
      ..verified = json['verified'] as bool
      ..school = json['school'] as String?
      ..occupation = json['occupation'] as String?
      ..displayCity = json['displayCity'] as String?
      ..displayState = json['displayState'] as String?
      ..spotifyEmail = json['spotifyEmail'] as String?
      ..matches = (json['matches'] as List<dynamic>?)
          ?.map((e) => FetchUser$Query$FetchUser$Matches.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..gallery = json['gallery'] == null
          ? null
          : FetchUser$Query$FetchUser$Gallery.fromJson(
              json['gallery'] as Map<String, dynamic>)
      ..animes = (json['animes'] as List<dynamic>?)
          ?.map((e) => FetchUser$Query$FetchUser$Animes.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
          ?.map((e) => FetchUser$Query$FetchUser$FavoriteMusic.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchUser$Query$FetchUserToJson(
        FetchUser$Query$FetchUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'bio': instance.bio,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'phone': instance.phone,
      'verified': instance.verified,
      'school': instance.school,
      'occupation': instance.occupation,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
      'spotifyEmail': instance.spotifyEmail,
      'matches': instance.matches?.map((e) => e.toJson()).toList(),
      'gallery': instance.gallery?.toJson(),
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
    };

FetchUser$Query _$FetchUser$QueryFromJson(Map<String, dynamic> json) =>
    FetchUser$Query()
      ..fetchUser = FetchUser$Query$FetchUser.fromJson(
          json['fetchUser'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchUser$QueryToJson(FetchUser$Query instance) =>
    <String, dynamic>{
      'fetchUser': instance.fetchUser.toJson(),
    };

FetchAnime$Query$FetchAnime _$FetchAnime$Query$FetchAnimeFromJson(
        Map<String, dynamic> json) =>
    FetchAnime$Query$FetchAnime()
      ..id = json['id'] as String
      ..title = json['title'] as String?
      ..genres = json['genres'] as String?
      ..cover = json['cover'] as String?
      ..episodes = json['episodes'] as int?
      ..popularity = json['popularity'] as int?
      ..averageScore = json['averageScore'] as int?
      ..startDate = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['startDate'] as String?)
      ..endDate = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['endDate'] as String?)
      ..studios = json['studios'] as String?
      ..year = json['year'] as int?
      ..status = json['status'] as String?;

Map<String, dynamic> _$FetchAnime$Query$FetchAnimeToJson(
        FetchAnime$Query$FetchAnime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'genres': instance.genres,
      'cover': instance.cover,
      'episodes': instance.episodes,
      'popularity': instance.popularity,
      'averageScore': instance.averageScore,
      'startDate': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.startDate),
      'endDate': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.endDate),
      'studios': instance.studios,
      'year': instance.year,
      'status': instance.status,
    };

FetchAnime$Query _$FetchAnime$QueryFromJson(Map<String, dynamic> json) =>
    FetchAnime$Query()
      ..fetchAnime = (json['fetchAnime'] as List<dynamic>)
          .map((e) =>
              FetchAnime$Query$FetchAnime.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchAnime$QueryToJson(FetchAnime$Query instance) =>
    <String, dynamic>{
      'fetchAnime': instance.fetchAnime.map((e) => e.toJson()).toList(),
    };

AnimeInput _$AnimeInputFromJson(Map<String, dynamic> json) => AnimeInput(
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      page: json['page'] as int,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AnimeInputToJson(AnimeInput instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'page': instance.page,
      'title': instance.title,
    };

FetchConversations$Query$FetchConversations$Messages$Sticker
    _$FetchConversations$Query$FetchConversations$Messages$StickerFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Messages$Sticker()
          ..id = json['id'] as String
          ..url = json['url'] as String;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Messages$StickerToJson(
            FetchConversations$Query$FetchConversations$Messages$Sticker
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'url': instance.url,
        };

FetchConversations$Query$FetchConversations$Messages
    _$FetchConversations$Query$FetchConversations$MessagesFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Messages()
          ..content = json['content'] as String?
          ..senderId = json['senderId'] as int?
          ..reaction = json['reaction'] as String?
          ..sticker = json['sticker'] == null
              ? null
              : FetchConversations$Query$FetchConversations$Messages$Sticker
                  .fromJson(json['sticker'] as Map<String, dynamic>)
          ..attachment = json['attachment'] as String?;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$MessagesToJson(
            FetchConversations$Query$FetchConversations$Messages instance) =>
        <String, dynamic>{
          'content': instance.content,
          'senderId': instance.senderId,
          'reaction': instance.reaction,
          'sticker': instance.sticker?.toJson(),
          'attachment': instance.attachment,
        };

FetchConversations$Query$FetchConversations
    _$FetchConversations$Query$FetchConversationsFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations()
          ..id = json['id'] as String
          ..matchId = json['matchId'] as int
          ..messages = (json['messages'] as List<dynamic>?)
              ?.map((e) =>
                  FetchConversations$Query$FetchConversations$Messages.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$FetchConversations$Query$FetchConversationsToJson(
        FetchConversations$Query$FetchConversations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matchId': instance.matchId,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };

FetchConversations$Query _$FetchConversations$QueryFromJson(
        Map<String, dynamic> json) =>
    FetchConversations$Query()
      ..fetchConversations = (json['fetchConversations'] as List<dynamic>)
          .map((e) => FetchConversations$Query$FetchConversations.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchConversations$QueryToJson(
        FetchConversations$Query instance) =>
    <String, dynamic>{
      'fetchConversations':
          instance.fetchConversations.map((e) => e.toJson()).toList(),
    };

FetchStickers$Query$FetchStickers _$FetchStickers$Query$FetchStickersFromJson(
        Map<String, dynamic> json) =>
    FetchStickers$Query$FetchStickers()
      ..id = json['id'] as String
      ..url = json['url'] as String;

Map<String, dynamic> _$FetchStickers$Query$FetchStickersToJson(
        FetchStickers$Query$FetchStickers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

FetchStickers$Query _$FetchStickers$QueryFromJson(Map<String, dynamic> json) =>
    FetchStickers$Query()
      ..fetchStickers = (json['fetchStickers'] as List<dynamic>)
          .map((e) => FetchStickers$Query$FetchStickers.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchStickers$QueryToJson(
        FetchStickers$Query instance) =>
    <String, dynamic>{
      'fetchStickers': instance.fetchStickers.map((e) => e.toJson()).toList(),
    };

DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime
    _$DeleteFavoriteAnime$Mutation$DeleteFavoriteAnimeFromJson(
            Map<String, dynamic> json) =>
        DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime()
          ..deleted = json['deleted'] as bool;

Map<String, dynamic> _$DeleteFavoriteAnime$Mutation$DeleteFavoriteAnimeToJson(
        DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
    };

DeleteFavoriteAnime$Mutation _$DeleteFavoriteAnime$MutationFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteAnime$Mutation()
      ..deleteFavoriteAnime = json['deleteFavoriteAnime'] == null
          ? null
          : DeleteFavoriteAnime$Mutation$DeleteFavoriteAnime.fromJson(
              json['deleteFavoriteAnime'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteFavoriteAnime$MutationToJson(
        DeleteFavoriteAnime$Mutation instance) =>
    <String, dynamic>{
      'deleteFavoriteAnime': instance.deleteFavoriteAnime?.toJson(),
    };

DeleteFavoriteAnimeInput _$DeleteFavoriteAnimeInputFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteAnimeInput(
      animeId: json['animeId'] as String,
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$DeleteFavoriteAnimeInputToJson(
        DeleteFavoriteAnimeInput instance) =>
    <String, dynamic>{
      'animeId': instance.animeId,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

CreateUserArguments _$CreateUserArgumentsFromJson(Map<String, dynamic> json) =>
    CreateUserArguments(
      input: CreateUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateUserArgumentsToJson(
        CreateUserArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

SubmitVerifyRequestArguments _$SubmitVerifyRequestArgumentsFromJson(
        Map<String, dynamic> json) =>
    SubmitVerifyRequestArguments(
      input: SubmitVerifyRequestInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubmitVerifyRequestArgumentsToJson(
        SubmitVerifyRequestArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

AddFavoriteAnimeArguments _$AddFavoriteAnimeArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteAnimeArguments(
      input:
          AddFavoriteAnimeInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddFavoriteAnimeArgumentsToJson(
        AddFavoriteAnimeArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

UpdateUserArguments _$UpdateUserArgumentsFromJson(Map<String, dynamic> json) =>
    UpdateUserArguments(
      input: UpdateUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateUserArgumentsToJson(
        UpdateUserArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

DeletePhotoArguments _$DeletePhotoArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeletePhotoArguments(
      input: DeletePhotoInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeletePhotoArgumentsToJson(
        DeletePhotoArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

ValidatePhoneArguments _$ValidatePhoneArgumentsFromJson(
        Map<String, dynamic> json) =>
    ValidatePhoneArguments(
      input: ValidatePhoneInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidatePhoneArgumentsToJson(
        ValidatePhoneArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

ResendVerifyCodeArguments _$ResendVerifyCodeArgumentsFromJson(
        Map<String, dynamic> json) =>
    ResendVerifyCodeArguments(
      input:
          ResendVerifyTextInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResendVerifyCodeArgumentsToJson(
        ResendVerifyCodeArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

SignInArguments _$SignInArgumentsFromJson(Map<String, dynamic> json) =>
    SignInArguments(
      input: SignInInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInArgumentsToJson(SignInArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

ReorderPhotosArguments _$ReorderPhotosArgumentsFromJson(
        Map<String, dynamic> json) =>
    ReorderPhotosArguments(
      input: ReorderPhotosInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReorderPhotosArgumentsToJson(
        ReorderPhotosArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

SetUserLocationArguments _$SetUserLocationArgumentsFromJson(
        Map<String, dynamic> json) =>
    SetUserLocationArguments(
      input:
          SetUserLocationInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetUserLocationArgumentsToJson(
        SetUserLocationArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

UploadPhotoArguments _$UploadPhotoArgumentsFromJson(
        Map<String, dynamic> json) =>
    UploadPhotoArguments(
      input: UploadPhotoInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UploadPhotoArgumentsToJson(
        UploadPhotoArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

FetchFeedArguments _$FetchFeedArgumentsFromJson(Map<String, dynamic> json) =>
    FetchFeedArguments(
      userId: json['userId'] as String,
      milesAway: json['milesAway'] as int,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$FetchFeedArgumentsToJson(FetchFeedArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'milesAway': instance.milesAway,
      'page': instance.page,
    };

FetchUserArguments _$FetchUserArgumentsFromJson(Map<String, dynamic> json) =>
    FetchUserArguments(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FetchUserArgumentsToJson(FetchUserArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

FetchAnimeArguments _$FetchAnimeArgumentsFromJson(Map<String, dynamic> json) =>
    FetchAnimeArguments(
      params: AnimeInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchAnimeArgumentsToJson(
        FetchAnimeArguments instance) =>
    <String, dynamic>{
      'params': instance.params.toJson(),
    };

FetchConversationsArguments _$FetchConversationsArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchConversationsArguments(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FetchConversationsArgumentsToJson(
        FetchConversationsArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

FetchStickersArguments _$FetchStickersArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchStickersArguments(
      page: json['page'] as int,
    );

Map<String, dynamic> _$FetchStickersArgumentsToJson(
        FetchStickersArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
    };

DeleteFavoriteAnimeArguments _$DeleteFavoriteAnimeArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteAnimeArguments(
      input: DeleteFavoriteAnimeInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteFavoriteAnimeArgumentsToJson(
        DeleteFavoriteAnimeArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };
