// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrantUserAvatar$Mutation$GrantUserAvatar$Avatar
    _$GrantUserAvatar$Mutation$GrantUserAvatar$AvatarFromJson(
            Map<String, dynamic> json) =>
        GrantUserAvatar$Mutation$GrantUserAvatar$Avatar()
          ..id = json['id'] as String
          ..guid = json['guid'] as String?
          ..userId = (json['userId'] as num?)?.toInt();

Map<String, dynamic> _$GrantUserAvatar$Mutation$GrantUserAvatar$AvatarToJson(
        GrantUserAvatar$Mutation$GrantUserAvatar$Avatar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guid': instance.guid,
      'userId': instance.userId,
    };

GrantUserAvatar$Mutation$GrantUserAvatar
    _$GrantUserAvatar$Mutation$GrantUserAvatarFromJson(
            Map<String, dynamic> json) =>
        GrantUserAvatar$Mutation$GrantUserAvatar()
          ..avatar = GrantUserAvatar$Mutation$GrantUserAvatar$Avatar.fromJson(
              json['avatar'] as Map<String, dynamic>);

Map<String, dynamic> _$GrantUserAvatar$Mutation$GrantUserAvatarToJson(
        GrantUserAvatar$Mutation$GrantUserAvatar instance) =>
    <String, dynamic>{
      'avatar': instance.avatar.toJson(),
    };

GrantUserAvatar$Mutation _$GrantUserAvatar$MutationFromJson(
        Map<String, dynamic> json) =>
    GrantUserAvatar$Mutation()
      ..grantUserAvatar = json['grantUserAvatar'] == null
          ? null
          : GrantUserAvatar$Mutation$GrantUserAvatar.fromJson(
              json['grantUserAvatar'] as Map<String, dynamic>);

Map<String, dynamic> _$GrantUserAvatar$MutationToJson(
        GrantUserAvatar$Mutation instance) =>
    <String, dynamic>{
      'grantUserAvatar': instance.grantUserAvatar?.toJson(),
    };

GrantUserAvatarInput _$GrantUserAvatarInputFromJson(
        Map<String, dynamic> json) =>
    GrantUserAvatarInput(
      avatarGuid: json['avatarGuid'] as String,
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$GrantUserAvatarInputToJson(
        GrantUserAvatarInput instance) =>
    <String, dynamic>{
      'avatarGuid': instance.avatarGuid,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

MarkAvatarAsDefault$Mutation$MarkAvatarDefault$Avatar
    _$MarkAvatarAsDefault$Mutation$MarkAvatarDefault$AvatarFromJson(
            Map<String, dynamic> json) =>
        MarkAvatarAsDefault$Mutation$MarkAvatarDefault$Avatar()
          ..id = json['id'] as String
          ..guid = json['guid'] as String?
          ..name = json['name'] as String?
          ..isDefault = json['isDefault'] as bool?
          ..photoUrl = json['photoUrl'] as String?
          ..thumbnailUrl = json['thumbnailUrl'] as String?;

Map<String, dynamic>
    _$MarkAvatarAsDefault$Mutation$MarkAvatarDefault$AvatarToJson(
            MarkAvatarAsDefault$Mutation$MarkAvatarDefault$Avatar instance) =>
        <String, dynamic>{
          'id': instance.id,
          'guid': instance.guid,
          'name': instance.name,
          'isDefault': instance.isDefault,
          'photoUrl': instance.photoUrl,
          'thumbnailUrl': instance.thumbnailUrl,
        };

MarkAvatarAsDefault$Mutation$MarkAvatarDefault
    _$MarkAvatarAsDefault$Mutation$MarkAvatarDefaultFromJson(
            Map<String, dynamic> json) =>
        MarkAvatarAsDefault$Mutation$MarkAvatarDefault()
          ..avatar =
              MarkAvatarAsDefault$Mutation$MarkAvatarDefault$Avatar.fromJson(
                  json['avatar'] as Map<String, dynamic>)
          ..clientMutationId = json['clientMutationId'] as String?;

Map<String, dynamic> _$MarkAvatarAsDefault$Mutation$MarkAvatarDefaultToJson(
        MarkAvatarAsDefault$Mutation$MarkAvatarDefault instance) =>
    <String, dynamic>{
      'avatar': instance.avatar.toJson(),
      'clientMutationId': instance.clientMutationId,
    };

MarkAvatarAsDefault$Mutation _$MarkAvatarAsDefault$MutationFromJson(
        Map<String, dynamic> json) =>
    MarkAvatarAsDefault$Mutation()
      ..markAvatarDefault = json['markAvatarDefault'] == null
          ? null
          : MarkAvatarAsDefault$Mutation$MarkAvatarDefault.fromJson(
              json['markAvatarDefault'] as Map<String, dynamic>);

Map<String, dynamic> _$MarkAvatarAsDefault$MutationToJson(
        MarkAvatarAsDefault$Mutation instance) =>
    <String, dynamic>{
      'markAvatarDefault': instance.markAvatarDefault?.toJson(),
    };

MarkAvatarDefaultInput _$MarkAvatarDefaultInputFromJson(
        Map<String, dynamic> json) =>
    MarkAvatarDefaultInput(
      avatarGuid: json['avatarGuid'] as String,
      clientMutationId: json['clientMutationId'] as String?,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$MarkAvatarDefaultInputToJson(
        MarkAvatarDefaultInput instance) =>
    <String, dynamic>{
      'avatarGuid': instance.avatarGuid,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
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
      animeIds:
          (json['animeIds'] as List<dynamic>).map((e) => e as String).toList(),
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$DeleteFavoriteAnimeInputToJson(
        DeleteFavoriteAnimeInput instance) =>
    <String, dynamic>{
      'animeIds': instance.animeIds,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$Conversation
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$ConversationFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$Conversation()
          ..id = json['id'] as String;

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$ConversationToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$Conversation
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$MatchesFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches()
          ..id = json['id'] as String
          ..matcheeId = (json['matcheeId'] as num?)?.toInt()
          ..conversation =
              StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches$Conversation
                  .fromJson(json['conversation'] as Map<String, dynamic>);

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$MatchesToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'matcheeId': instance.matcheeId,
          'conversation': instance.conversation.toJson(),
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$Photos
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$PhotosToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$GalleryToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Animes
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$AnimesFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Animes()
          ..id = json['id'] as String
          ..title = json['title'] as String?
          ..japaneseTitle = json['japaneseTitle'] as String?
          ..cover = json['cover'] as String?;

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$AnimesToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Animes
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'japaneseTitle': instance.japaneseTitle,
          'cover': instance.cover,
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusic
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusic()
          ..id = json['id'] as String
          ..coverUrl = json['coverUrl'] as String?
          ..musicType = json['musicType'] as String?
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusicToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusic
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'coverUrl': instance.coverUrl,
          'musicType': instance.musicType,
          'trackName': instance.trackName,
          'artistName': instance.artistName,
          'spotifyId': instance.spotifyId,
        };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$UserFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User()
          ..id = json['id'] as String
          ..role = json['role'] as String
          ..firstName = json['firstName'] as String
          ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['birthday'] as String?)
          ..country = json['country'] as String?
          ..bio = json['bio'] as String?
          ..gender = json['gender'] as String?
          ..desiredGender = json['desiredGender'] as String?
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool
          ..school = json['school'] as String?
          ..occupation = json['occupation'] as String?
          ..displayCity = json['displayCity'] as String?
          ..displayState = json['displayState'] as String?
          ..onlineStatus = json['onlineStatus'] as String?
          ..lonlat = json['lonlat'] as String?
          ..matches = (json['matches'] as List<dynamic>?)
              ?.map((e) =>
                  StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Matches
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..gallery = json['gallery'] == null
              ? null
              : StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>)
          ..animes = (json['animes'] as List<dynamic>?)
              ?.map((e) =>
                  StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$Animes
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
              ?.map((e) =>
                  StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User$FavoriteMusic
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..premium = json['premium'] as bool
          ..superLikeCount = (json['superLikeCount'] as num?)?.toInt()
          ..hasLocationHidden = json['hasLocationHidden'] as bool?
          ..nextPaymentDate =
              fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
                  json['nextPaymentDate'] as String?)
          ..isDisplayingRecentlyActive =
              json['isDisplayingRecentlyActive'] as bool?
          ..isDisplayingActive = json['isDisplayingActive'] as bool?;

Map<String,
    dynamic> _$StartVideoMatchmaking$Mutation$StartVideoMatchmaking$UserToJson(
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'firstName': instance.firstName,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'country': instance.country,
      'bio': instance.bio,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'phone': instance.phone,
      'verified': instance.verified,
      'school': instance.school,
      'occupation': instance.occupation,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
      'onlineStatus': instance.onlineStatus,
      'lonlat': instance.lonlat,
      'matches': instance.matches?.map((e) => e.toJson()).toList(),
      'gallery': instance.gallery?.toJson(),
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
      'premium': instance.premium,
      'superLikeCount': instance.superLikeCount,
      'hasLocationHidden': instance.hasLocationHidden,
      'nextPaymentDate':
          fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.nextPaymentDate),
      'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
      'isDisplayingActive': instance.isDisplayingActive,
    };

StartVideoMatchmaking$Mutation$StartVideoMatchmaking
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmakingFromJson(
            Map<String, dynamic> json) =>
        StartVideoMatchmaking$Mutation$StartVideoMatchmaking()
          ..user = StartVideoMatchmaking$Mutation$StartVideoMatchmaking$User
              .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic>
    _$StartVideoMatchmaking$Mutation$StartVideoMatchmakingToJson(
            StartVideoMatchmaking$Mutation$StartVideoMatchmaking instance) =>
        <String, dynamic>{
          'user': instance.user.toJson(),
        };

StartVideoMatchmaking$Mutation _$StartVideoMatchmaking$MutationFromJson(
        Map<String, dynamic> json) =>
    StartVideoMatchmaking$Mutation()
      ..startVideoMatchmaking = json['startVideoMatchmaking'] == null
          ? null
          : StartVideoMatchmaking$Mutation$StartVideoMatchmaking.fromJson(
              json['startVideoMatchmaking'] as Map<String, dynamic>);

Map<String, dynamic> _$StartVideoMatchmaking$MutationToJson(
        StartVideoMatchmaking$Mutation instance) =>
    <String, dynamic>{
      'startVideoMatchmaking': instance.startVideoMatchmaking?.toJson(),
    };

StartVideoMatchmakingInput _$StartVideoMatchmakingInputFromJson(
        Map<String, dynamic> json) =>
    StartVideoMatchmakingInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$StartVideoMatchmakingInputToJson(
        StartVideoMatchmakingInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

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

AddDeviceToken$Mutation$AddDeviceToken$DeviceInfo
    _$AddDeviceToken$Mutation$AddDeviceToken$DeviceInfoFromJson(
            Map<String, dynamic> json) =>
        AddDeviceToken$Mutation$AddDeviceToken$DeviceInfo()
          ..token = json['token'] as String?;

Map<String, dynamic> _$AddDeviceToken$Mutation$AddDeviceToken$DeviceInfoToJson(
        AddDeviceToken$Mutation$AddDeviceToken$DeviceInfo instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

AddDeviceToken$Mutation$AddDeviceToken
    _$AddDeviceToken$Mutation$AddDeviceTokenFromJson(
            Map<String, dynamic> json) =>
        AddDeviceToken$Mutation$AddDeviceToken()
          ..deviceInfo =
              AddDeviceToken$Mutation$AddDeviceToken$DeviceInfo.fromJson(
                  json['deviceInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$AddDeviceToken$Mutation$AddDeviceTokenToJson(
        AddDeviceToken$Mutation$AddDeviceToken instance) =>
    <String, dynamic>{
      'deviceInfo': instance.deviceInfo.toJson(),
    };

AddDeviceToken$Mutation _$AddDeviceToken$MutationFromJson(
        Map<String, dynamic> json) =>
    AddDeviceToken$Mutation()
      ..addDeviceToken = json['addDeviceToken'] == null
          ? null
          : AddDeviceToken$Mutation$AddDeviceToken.fromJson(
              json['addDeviceToken'] as Map<String, dynamic>);

Map<String, dynamic> _$AddDeviceToken$MutationToJson(
        AddDeviceToken$Mutation instance) =>
    <String, dynamic>{
      'addDeviceToken': instance.addDeviceToken?.toJson(),
    };

AddDeviceTokenInput _$AddDeviceTokenInputFromJson(Map<String, dynamic> json) =>
    AddDeviceTokenInput(
      clientMutationId: json['clientMutationId'] as String?,
      deviceToken: json['deviceToken'] as String,
      deviceType: json['deviceType'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$AddDeviceTokenInputToJson(
        AddDeviceTokenInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'deviceToken': instance.deviceToken,
      'deviceType': instance.deviceType,
      'userId': instance.userId,
    };

RemoveDeviceToken$Mutation$RemoveDeviceToken$User
    _$RemoveDeviceToken$Mutation$RemoveDeviceToken$UserFromJson(
            Map<String, dynamic> json) =>
        RemoveDeviceToken$Mutation$RemoveDeviceToken$User()
          ..id = json['id'] as String;

Map<String, dynamic> _$RemoveDeviceToken$Mutation$RemoveDeviceToken$UserToJson(
        RemoveDeviceToken$Mutation$RemoveDeviceToken$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RemoveDeviceToken$Mutation$RemoveDeviceToken
    _$RemoveDeviceToken$Mutation$RemoveDeviceTokenFromJson(
            Map<String, dynamic> json) =>
        RemoveDeviceToken$Mutation$RemoveDeviceToken()
          ..user = RemoveDeviceToken$Mutation$RemoveDeviceToken$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$RemoveDeviceToken$Mutation$RemoveDeviceTokenToJson(
        RemoveDeviceToken$Mutation$RemoveDeviceToken instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

RemoveDeviceToken$Mutation _$RemoveDeviceToken$MutationFromJson(
        Map<String, dynamic> json) =>
    RemoveDeviceToken$Mutation()
      ..removeDeviceToken = json['removeDeviceToken'] == null
          ? null
          : RemoveDeviceToken$Mutation$RemoveDeviceToken.fromJson(
              json['removeDeviceToken'] as Map<String, dynamic>);

Map<String, dynamic> _$RemoveDeviceToken$MutationToJson(
        RemoveDeviceToken$Mutation instance) =>
    <String, dynamic>{
      'removeDeviceToken': instance.removeDeviceToken?.toJson(),
    };

RemoveDeviceTokenInput _$RemoveDeviceTokenInputFromJson(
        Map<String, dynamic> json) =>
    RemoveDeviceTokenInput(
      clientMutationId: json['clientMutationId'] as String?,
      deviceToken: json['deviceToken'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$RemoveDeviceTokenInputToJson(
        RemoveDeviceTokenInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'deviceToken': instance.deviceToken,
      'userId': instance.userId,
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
      userId: (json['userId'] as num).toInt(),
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
          ..occupation = json['occupation'] as String?
          ..hasLocationHidden = json['hasLocationHidden'] as bool?
          ..isDisplayingRecentlyActive =
              json['isDisplayingRecentlyActive'] as bool?
          ..isDisplayingActive = json['isDisplayingActive'] as bool?;

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
      'hasLocationHidden': instance.hasLocationHidden,
      'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
      'isDisplayingActive': instance.isDisplayingActive,
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
      desiredGender: (json['desiredGender'] as num?)?.toInt(),
      firstName: json['firstName'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      hasLocationHidden: json['hasLocationHidden'] as bool?,
      isDisplayingActive: json['isDisplayingActive'] as bool?,
      isDisplayingRecentlyActive: json['isDisplayingRecentlyActive'] as bool?,
      isLocked: json['isLocked'] as bool?,
      occupation: json['occupation'] as String?,
      phone: json['phone'] as String?,
      school: json['school'] as String?,
      superLikeCount: (json['superLikeCount'] as num?)?.toInt(),
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
      'hasLocationHidden': instance.hasLocationHidden,
      'isDisplayingActive': instance.isDisplayingActive,
      'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
      'isLocked': instance.isLocked,
      'occupation': instance.occupation,
      'phone': instance.phone,
      'school': instance.school,
      'superLikeCount': instance.superLikeCount,
      'userId': instance.userId,
      'verified': instance.verified,
    };

SendMessage$Mutation$SendMessage$Message
    _$SendMessage$Mutation$SendMessage$MessageFromJson(
            Map<String, dynamic> json) =>
        SendMessage$Mutation$SendMessage$Message()
          ..content = json['content'] as String?
          ..senderId = (json['senderId'] as num?)?.toInt()
          ..conversationId = json['conversationId'] as String?
          ..reaction = json['reaction'] as String?;

Map<String, dynamic> _$SendMessage$Mutation$SendMessage$MessageToJson(
        SendMessage$Mutation$SendMessage$Message instance) =>
    <String, dynamic>{
      'content': instance.content,
      'senderId': instance.senderId,
      'conversationId': instance.conversationId,
      'reaction': instance.reaction,
    };

SendMessage$Mutation$SendMessage _$SendMessage$Mutation$SendMessageFromJson(
        Map<String, dynamic> json) =>
    SendMessage$Mutation$SendMessage()
      ..message = SendMessage$Mutation$SendMessage$Message.fromJson(
          json['message'] as Map<String, dynamic>);

Map<String, dynamic> _$SendMessage$Mutation$SendMessageToJson(
        SendMessage$Mutation$SendMessage instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
    };

SendMessage$Mutation _$SendMessage$MutationFromJson(
        Map<String, dynamic> json) =>
    SendMessage$Mutation()
      ..sendMessage = json['sendMessage'] == null
          ? null
          : SendMessage$Mutation$SendMessage.fromJson(
              json['sendMessage'] as Map<String, dynamic>);

Map<String, dynamic> _$SendMessage$MutationToJson(
        SendMessage$Mutation instance) =>
    <String, dynamic>{
      'sendMessage': instance.sendMessage?.toJson(),
    };

SendMessageInput _$SendMessageInputFromJson(Map<String, dynamic> json) =>
    SendMessageInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: MessageInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendMessageInputToJson(SendMessageInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

MessageInput _$MessageInputFromJson(Map<String, dynamic> json) => MessageInput(
      attachment: fromGraphQLUploadNullableToDartMultipartFileNullable(
          json['attachment'] as MultipartFile?),
      attachmentType: json['attachmentType'] as String?,
      content: json['content'] as String?,
      conversationId: json['conversationId'] as String,
      recommendedAnimeId: json['recommendedAnimeId'] as String?,
      senderId: (json['senderId'] as num).toInt(),
      stickerId: json['stickerId'] as String?,
    );

Map<String, dynamic> _$MessageInputToJson(MessageInput instance) =>
    <String, dynamic>{
      'attachment': fromDartMultipartFileNullableToGraphQLUploadNullable(
          instance.attachment),
      'attachmentType': instance.attachmentType,
      'content': instance.content,
      'conversationId': instance.conversationId,
      'recommendedAnimeId': instance.recommendedAnimeId,
      'senderId': instance.senderId,
      'stickerId': instance.stickerId,
    };

DeletePhoto$Mutation$DeletePhoto$Gallery$Photos
    _$DeletePhoto$Mutation$DeletePhoto$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        DeletePhoto$Mutation$DeletePhoto$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic> _$DeletePhoto$Mutation$DeletePhoto$Gallery$PhotosToJson(
        DeletePhoto$Mutation$DeletePhoto$Gallery$Photos instance) =>
    <String, dynamic>{
      'order': instance.order,
      'url': instance.url,
      'id': instance.id,
    };

DeletePhoto$Mutation$DeletePhoto$Gallery
    _$DeletePhoto$Mutation$DeletePhoto$GalleryFromJson(
            Map<String, dynamic> json) =>
        DeletePhoto$Mutation$DeletePhoto$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  DeletePhoto$Mutation$DeletePhoto$Gallery$Photos.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DeletePhoto$Mutation$DeletePhoto$GalleryToJson(
        DeletePhoto$Mutation$DeletePhoto$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

DeletePhoto$Mutation$DeletePhoto _$DeletePhoto$Mutation$DeletePhotoFromJson(
        Map<String, dynamic> json) =>
    DeletePhoto$Mutation$DeletePhoto()
      ..deleted = json['deleted'] as bool
      ..gallery = json['gallery'] == null
          ? null
          : DeletePhoto$Mutation$DeletePhoto$Gallery.fromJson(
              json['gallery'] as Map<String, dynamic>);

Map<String, dynamic> _$DeletePhoto$Mutation$DeletePhotoToJson(
        DeletePhoto$Mutation$DeletePhoto instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
      'gallery': instance.gallery?.toJson(),
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

UpdateMessage$Mutation$UpdateMessage$Message
    _$UpdateMessage$Mutation$UpdateMessage$MessageFromJson(
            Map<String, dynamic> json) =>
        UpdateMessage$Mutation$UpdateMessage$Message()
          ..id = json['id'] as String
          ..reaction = json['reaction'] as String?;

Map<String, dynamic> _$UpdateMessage$Mutation$UpdateMessage$MessageToJson(
        UpdateMessage$Mutation$UpdateMessage$Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reaction': instance.reaction,
    };

UpdateMessage$Mutation$UpdateMessage
    _$UpdateMessage$Mutation$UpdateMessageFromJson(Map<String, dynamic> json) =>
        UpdateMessage$Mutation$UpdateMessage()
          ..message = UpdateMessage$Mutation$UpdateMessage$Message.fromJson(
              json['message'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateMessage$Mutation$UpdateMessageToJson(
        UpdateMessage$Mutation$UpdateMessage instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
    };

UpdateMessage$Mutation _$UpdateMessage$MutationFromJson(
        Map<String, dynamic> json) =>
    UpdateMessage$Mutation()
      ..updateMessage = json['updateMessage'] == null
          ? null
          : UpdateMessage$Mutation$UpdateMessage.fromJson(
              json['updateMessage'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateMessage$MutationToJson(
        UpdateMessage$Mutation instance) =>
    <String, dynamic>{
      'updateMessage': instance.updateMessage?.toJson(),
    };

UpdateMessageInput _$UpdateMessageInputFromJson(Map<String, dynamic> json) =>
    UpdateMessageInput(
      clientMutationId: json['clientMutationId'] as String?,
      params:
          MessageUpdateInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateMessageInputToJson(UpdateMessageInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

MessageUpdateInput _$MessageUpdateInputFromJson(Map<String, dynamic> json) =>
    MessageUpdateInput(
      content: json['content'] as String?,
      messageId: json['messageId'] as String,
      reaction: json['reaction'] as String?,
    );

Map<String, dynamic> _$MessageUpdateInputToJson(MessageUpdateInput instance) =>
    <String, dynamic>{
      'content': instance.content,
      'messageId': instance.messageId,
      'reaction': instance.reaction,
    };

ValidatePhone$Mutation$ValidatePhone$User
    _$ValidatePhone$Mutation$ValidatePhone$UserFromJson(
            Map<String, dynamic> json) =>
        ValidatePhone$Mutation$ValidatePhone$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..updatedAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['updatedAt'] as String);

Map<String, dynamic> _$ValidatePhone$Mutation$ValidatePhone$UserToJson(
        ValidatePhone$Mutation$ValidatePhone$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'updatedAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.updatedAt),
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
      code: (json['code'] as num).toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ValidatePhoneInputToJson(ValidatePhoneInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'code': instance.code,
      'userId': instance.userId,
    };

ReportUser$Mutation$ReportUser$Report$Offender
    _$ReportUser$Mutation$ReportUser$Report$OffenderFromJson(
            Map<String, dynamic> json) =>
        ReportUser$Mutation$ReportUser$Report$Offender()
          ..id = json['id'] as String;

Map<String, dynamic> _$ReportUser$Mutation$ReportUser$Report$OffenderToJson(
        ReportUser$Mutation$ReportUser$Report$Offender instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReportUser$Mutation$ReportUser$Report$Reporter
    _$ReportUser$Mutation$ReportUser$Report$ReporterFromJson(
            Map<String, dynamic> json) =>
        ReportUser$Mutation$ReportUser$Report$Reporter()
          ..id = json['id'] as String;

Map<String, dynamic> _$ReportUser$Mutation$ReportUser$Report$ReporterToJson(
        ReportUser$Mutation$ReportUser$Report$Reporter instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReportUser$Mutation$ReportUser$Report
    _$ReportUser$Mutation$ReportUser$ReportFromJson(
            Map<String, dynamic> json) =>
        ReportUser$Mutation$ReportUser$Report()
          ..conversationId = json['conversationId'] as String
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..id = json['id'] as String
          ..offender = ReportUser$Mutation$ReportUser$Report$Offender.fromJson(
              json['offender'] as Map<String, dynamic>)
          ..offenseId = json['offenseId'] as String?
          ..reason = json['reason'] as String?
          ..reporter = ReportUser$Mutation$ReportUser$Report$Reporter.fromJson(
              json['reporter'] as Map<String, dynamic>)
          ..updatedAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['updatedAt'] as String)
          ..userId = json['userId'] as String;

Map<String, dynamic> _$ReportUser$Mutation$ReportUser$ReportToJson(
        ReportUser$Mutation$ReportUser$Report instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'id': instance.id,
      'offender': instance.offender.toJson(),
      'offenseId': instance.offenseId,
      'reason': instance.reason,
      'reporter': instance.reporter.toJson(),
      'updatedAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.updatedAt),
      'userId': instance.userId,
    };

ReportUser$Mutation$ReportUser _$ReportUser$Mutation$ReportUserFromJson(
        Map<String, dynamic> json) =>
    ReportUser$Mutation$ReportUser()
      ..blocked = json['blocked'] as bool
      ..report = ReportUser$Mutation$ReportUser$Report.fromJson(
          json['report'] as Map<String, dynamic>);

Map<String, dynamic> _$ReportUser$Mutation$ReportUserToJson(
        ReportUser$Mutation$ReportUser instance) =>
    <String, dynamic>{
      'blocked': instance.blocked,
      'report': instance.report.toJson(),
    };

ReportUser$Mutation _$ReportUser$MutationFromJson(Map<String, dynamic> json) =>
    ReportUser$Mutation()
      ..reportUser = json['reportUser'] == null
          ? null
          : ReportUser$Mutation$ReportUser.fromJson(
              json['reportUser'] as Map<String, dynamic>);

Map<String, dynamic> _$ReportUser$MutationToJson(
        ReportUser$Mutation instance) =>
    <String, dynamic>{
      'reportUser': instance.reportUser?.toJson(),
    };

ReportUserInput _$ReportUserInputFromJson(Map<String, dynamic> json) =>
    ReportUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: ReportInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportUserInputToJson(ReportUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

ReportInput _$ReportInputFromJson(Map<String, dynamic> json) => ReportInput(
      conversationId: json['conversationId'] as String,
      offenseId: json['offenseId'] as String,
      reason: json['reason'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ReportInputToJson(ReportInput instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'offenseId': instance.offenseId,
      'reason': instance.reason,
      'userId': instance.userId,
    };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$Conversation
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$ConversationFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$Conversation()
          ..id = json['id'] as String;

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$ConversationToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$Conversation
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$MatchesFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches()
          ..id = json['id'] as String
          ..matcheeId = (json['matcheeId'] as num?)?.toInt()
          ..conversation =
              StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches$Conversation
                  .fromJson(json['conversation'] as Map<String, dynamic>);

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$MatchesToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'matcheeId': instance.matcheeId,
          'conversation': instance.conversation.toJson(),
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$Photos
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$PhotosToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$GalleryToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Animes
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$AnimesFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Animes()
          ..id = json['id'] as String
          ..title = json['title'] as String?
          ..japaneseTitle = json['japaneseTitle'] as String?
          ..cover = json['cover'] as String?;

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$AnimesToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Animes
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'japaneseTitle': instance.japaneseTitle,
          'cover': instance.cover,
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusic
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusic()
          ..id = json['id'] as String
          ..coverUrl = json['coverUrl'] as String?
          ..musicType = json['musicType'] as String?
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusicToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusic
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'coverUrl': instance.coverUrl,
          'musicType': instance.musicType,
          'trackName': instance.trackName,
          'artistName': instance.artistName,
          'spotifyId': instance.spotifyId,
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$UserFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User()
          ..id = json['id'] as String
          ..role = json['role'] as String
          ..firstName = json['firstName'] as String
          ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['birthday'] as String?)
          ..country = json['country'] as String?
          ..bio = json['bio'] as String?
          ..gender = json['gender'] as String?
          ..desiredGender = json['desiredGender'] as String?
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool
          ..school = json['school'] as String?
          ..occupation = json['occupation'] as String?
          ..displayCity = json['displayCity'] as String?
          ..displayState = json['displayState'] as String?
          ..onlineStatus = json['onlineStatus'] as String?
          ..lonlat = json['lonlat'] as String?
          ..matches = (json['matches'] as List<dynamic>?)
              ?.map((e) =>
                  StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Matches
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..gallery = json['gallery'] == null
              ? null
              : StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>)
          ..animes = (json['animes'] as List<dynamic>?)
              ?.map((e) =>
                  StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$Animes
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
              ?.map((e) =>
                  StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User$FavoriteMusic
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..premium = json['premium'] as bool
          ..superLikeCount = (json['superLikeCount'] as num?)?.toInt()
          ..hasLocationHidden = json['hasLocationHidden'] as bool?
          ..nextPaymentDate =
              fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
                  json['nextPaymentDate'] as String?)
          ..isDisplayingRecentlyActive =
              json['isDisplayingRecentlyActive'] as bool?
          ..isDisplayingActive = json['isDisplayingActive'] as bool?;

Map<String, dynamic>
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmaking$UserToJson(
            StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User instance) =>
        <String, dynamic>{
          'id': instance.id,
          'role': instance.role,
          'firstName': instance.firstName,
          'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.birthday),
          'country': instance.country,
          'bio': instance.bio,
          'gender': instance.gender,
          'desiredGender': instance.desiredGender,
          'phone': instance.phone,
          'verified': instance.verified,
          'school': instance.school,
          'occupation': instance.occupation,
          'displayCity': instance.displayCity,
          'displayState': instance.displayState,
          'onlineStatus': instance.onlineStatus,
          'lonlat': instance.lonlat,
          'matches': instance.matches?.map((e) => e.toJson()).toList(),
          'gallery': instance.gallery?.toJson(),
          'animes': instance.animes?.map((e) => e.toJson()).toList(),
          'favoriteMusic':
              instance.favoriteMusic?.map((e) => e.toJson()).toList(),
          'premium': instance.premium,
          'superLikeCount': instance.superLikeCount,
          'hasLocationHidden': instance.hasLocationHidden,
          'nextPaymentDate':
              fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
                  instance.nextPaymentDate),
          'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
          'isDisplayingActive': instance.isDisplayingActive,
        };

StopVideoMatchmaking$Mutation$StopVideoMatchmaking
    _$StopVideoMatchmaking$Mutation$StopVideoMatchmakingFromJson(
            Map<String, dynamic> json) =>
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking()
          ..user =
              StopVideoMatchmaking$Mutation$StopVideoMatchmaking$User.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$StopVideoMatchmaking$Mutation$StopVideoMatchmakingToJson(
        StopVideoMatchmaking$Mutation$StopVideoMatchmaking instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

StopVideoMatchmaking$Mutation _$StopVideoMatchmaking$MutationFromJson(
        Map<String, dynamic> json) =>
    StopVideoMatchmaking$Mutation()
      ..stopVideoMatchmaking = json['stopVideoMatchmaking'] == null
          ? null
          : StopVideoMatchmaking$Mutation$StopVideoMatchmaking.fromJson(
              json['stopVideoMatchmaking'] as Map<String, dynamic>);

Map<String, dynamic> _$StopVideoMatchmaking$MutationToJson(
        StopVideoMatchmaking$Mutation instance) =>
    <String, dynamic>{
      'stopVideoMatchmaking': instance.stopVideoMatchmaking?.toJson(),
    };

StopVideoMatchmakingInput _$StopVideoMatchmakingInputFromJson(
        Map<String, dynamic> json) =>
    StopVideoMatchmakingInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$StopVideoMatchmakingInputToJson(
        StopVideoMatchmakingInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers
    _$GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsersFromJson(
            Map<String, dynamic> json) =>
        GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers()
          ..mi = (json['mi'] as num).toInt();

Map<String,
    dynamic> _$GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsersToJson(
        GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers instance) =>
    <String, dynamic>{
      'mi': instance.mi,
    };

GetDistanceBetweenUsers$Mutation _$GetDistanceBetweenUsers$MutationFromJson(
        Map<String, dynamic> json) =>
    GetDistanceBetweenUsers$Mutation()
      ..getDistanceBetweenUsers = json['getDistanceBetweenUsers'] == null
          ? null
          : GetDistanceBetweenUsers$Mutation$GetDistanceBetweenUsers.fromJson(
              json['getDistanceBetweenUsers'] as Map<String, dynamic>);

Map<String, dynamic> _$GetDistanceBetweenUsers$MutationToJson(
        GetDistanceBetweenUsers$Mutation instance) =>
    <String, dynamic>{
      'getDistanceBetweenUsers': instance.getDistanceBetweenUsers?.toJson(),
    };

GetDistanceBetweenUsersInput _$GetDistanceBetweenUsersInputFromJson(
        Map<String, dynamic> json) =>
    GetDistanceBetweenUsersInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: (json['userId'] as num).toInt(),
      vieweeId: (json['vieweeId'] as num).toInt(),
    );

Map<String, dynamic> _$GetDistanceBetweenUsersInputToJson(
        GetDistanceBetweenUsersInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
      'vieweeId': instance.vieweeId,
    };

AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatch
    _$AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatchFromJson(
            Map<String, dynamic> json) =>
        AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatch()
          ..id = json['id'] as String
          ..status = json['status'] as String;

Map<String, dynamic>
    _$AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatchToJson(
            AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatch instance) =>
        <String, dynamic>{
          'id': instance.id,
          'status': instance.status,
        };

AcceptVideoChat$Mutation$AcceptVideoCall
    _$AcceptVideoChat$Mutation$AcceptVideoCallFromJson(
            Map<String, dynamic> json) =>
        AcceptVideoChat$Mutation$AcceptVideoCall()
          ..videoMatch = json['videoMatch'] == null
              ? null
              : AcceptVideoChat$Mutation$AcceptVideoCall$VideoMatch.fromJson(
                  json['videoMatch'] as Map<String, dynamic>);

Map<String, dynamic> _$AcceptVideoChat$Mutation$AcceptVideoCallToJson(
        AcceptVideoChat$Mutation$AcceptVideoCall instance) =>
    <String, dynamic>{
      'videoMatch': instance.videoMatch?.toJson(),
    };

AcceptVideoChat$Mutation _$AcceptVideoChat$MutationFromJson(
        Map<String, dynamic> json) =>
    AcceptVideoChat$Mutation()
      ..acceptVideoCall = json['acceptVideoCall'] == null
          ? null
          : AcceptVideoChat$Mutation$AcceptVideoCall.fromJson(
              json['acceptVideoCall'] as Map<String, dynamic>);

Map<String, dynamic> _$AcceptVideoChat$MutationToJson(
        AcceptVideoChat$Mutation instance) =>
    <String, dynamic>{
      'acceptVideoCall': instance.acceptVideoCall?.toJson(),
    };

AcceptVideoCallInput _$AcceptVideoCallInputFromJson(
        Map<String, dynamic> json) =>
    AcceptVideoCallInput(
      chatRequestId: json['chatRequestId'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$AcceptVideoCallInputToJson(
        AcceptVideoCallInput instance) =>
    <String, dynamic>{
      'chatRequestId': instance.chatRequestId,
      'clientMutationId': instance.clientMutationId,
    };

AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusic
    _$AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusic()
          ..id = json['id'] as String
          ..musicType = json['musicType'] as String?
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..coverUrl = json['coverUrl'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic>
    _$AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusicToJson(
            AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusic
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'musicType': instance.musicType,
          'trackName': instance.trackName,
          'artistName': instance.artistName,
          'coverUrl': instance.coverUrl,
          'spotifyId': instance.spotifyId,
        };

AddFavoriteMusic$Mutation$AddFavoriteMusic$User
    _$AddFavoriteMusic$Mutation$AddFavoriteMusic$UserFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteMusic$Mutation$AddFavoriteMusic$User()
          ..id = json['id'] as String
          ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
              ?.map((e) =>
                  AddFavoriteMusic$Mutation$AddFavoriteMusic$User$FavoriteMusic
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$AddFavoriteMusic$Mutation$AddFavoriteMusic$UserToJson(
        AddFavoriteMusic$Mutation$AddFavoriteMusic$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
    };

AddFavoriteMusic$Mutation$AddFavoriteMusic
    _$AddFavoriteMusic$Mutation$AddFavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        AddFavoriteMusic$Mutation$AddFavoriteMusic()
          ..user = AddFavoriteMusic$Mutation$AddFavoriteMusic$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$AddFavoriteMusic$Mutation$AddFavoriteMusicToJson(
        AddFavoriteMusic$Mutation$AddFavoriteMusic instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

AddFavoriteMusic$Mutation _$AddFavoriteMusic$MutationFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteMusic$Mutation()
      ..addFavoriteMusic = json['addFavoriteMusic'] == null
          ? null
          : AddFavoriteMusic$Mutation$AddFavoriteMusic.fromJson(
              json['addFavoriteMusic'] as Map<String, dynamic>);

Map<String, dynamic> _$AddFavoriteMusic$MutationToJson(
        AddFavoriteMusic$Mutation instance) =>
    <String, dynamic>{
      'addFavoriteMusic': instance.addFavoriteMusic?.toJson(),
    };

AddFavoriteMusicInput _$AddFavoriteMusicInputFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteMusicInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: (json['params'] as List<dynamic>)
          .map((e) => FavoriteMusicInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddFavoriteMusicInputToJson(
        AddFavoriteMusicInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.map((e) => e.toJson()).toList(),
    };

FavoriteMusicInput _$FavoriteMusicInputFromJson(Map<String, dynamic> json) =>
    FavoriteMusicInput(
      artistName: json['artistName'] as String?,
      coverUrl: json['coverUrl'] as String,
      hidden: json['hidden'] as bool?,
      musicType: json['musicType'] as String,
      spotifyId: json['spotifyId'] as String,
      trackName: json['trackName'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FavoriteMusicInputToJson(FavoriteMusicInput instance) =>
    <String, dynamic>{
      'artistName': instance.artistName,
      'coverUrl': instance.coverUrl,
      'hidden': instance.hidden,
      'musicType': instance.musicType,
      'spotifyId': instance.spotifyId,
      'trackName': instance.trackName,
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

LikeUser$Mutation$LikeUser$Like _$LikeUser$Mutation$LikeUser$LikeFromJson(
        Map<String, dynamic> json) =>
    LikeUser$Mutation$LikeUser$Like()
      ..userId = (json['userId'] as num).toInt()
      ..likeeId = (json['likeeId'] as num?)?.toInt()
      ..likeType = json['likeType'] as String?;

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$LikeToJson(
        LikeUser$Mutation$LikeUser$Like instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'likeeId': instance.likeeId,
      'likeType': instance.likeType,
    };

LikeUser$Mutation$LikeUser$Match$Conversation
    _$LikeUser$Mutation$LikeUser$Match$ConversationFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$Conversation()
          ..id = json['id'] as String;

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$Match$ConversationToJson(
        LikeUser$Mutation$LikeUser$Match$Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$Photos
    _$LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$PhotosToJson(
            LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$Photos instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

LikeUser$Mutation$LikeUser$Match$Matchee$Gallery
    _$LikeUser$Mutation$LikeUser$Match$Matchee$GalleryFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$Matchee$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  LikeUser$Mutation$LikeUser$Match$Matchee$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$Match$Matchee$GalleryToJson(
        LikeUser$Mutation$LikeUser$Match$Matchee$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

LikeUser$Mutation$LikeUser$Match$Matchee
    _$LikeUser$Mutation$LikeUser$Match$MatcheeFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$Matchee()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..firstName = json['firstName'] as String
          ..verified = json['verified'] as bool
          ..gallery = json['gallery'] == null
              ? null
              : LikeUser$Mutation$LikeUser$Match$Matchee$Gallery.fromJson(
                  json['gallery'] as Map<String, dynamic>);

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$Match$MatcheeToJson(
        LikeUser$Mutation$LikeUser$Match$Matchee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'verified': instance.verified,
      'gallery': instance.gallery?.toJson(),
    };

LikeUser$Mutation$LikeUser$Match$User$Gallery$Photos
    _$LikeUser$Mutation$LikeUser$Match$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$LikeUser$Mutation$LikeUser$Match$User$Gallery$PhotosToJson(
            LikeUser$Mutation$LikeUser$Match$User$Gallery$Photos instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

LikeUser$Mutation$LikeUser$Match$User$Gallery
    _$LikeUser$Mutation$LikeUser$Match$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  LikeUser$Mutation$LikeUser$Match$User$Gallery$Photos.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$Match$User$GalleryToJson(
        LikeUser$Mutation$LikeUser$Match$User$Gallery instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
    };

LikeUser$Mutation$LikeUser$Match$User
    _$LikeUser$Mutation$LikeUser$Match$UserFromJson(
            Map<String, dynamic> json) =>
        LikeUser$Mutation$LikeUser$Match$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..firstName = json['firstName'] as String
          ..verified = json['verified'] as bool
          ..gallery = json['gallery'] == null
              ? null
              : LikeUser$Mutation$LikeUser$Match$User$Gallery.fromJson(
                  json['gallery'] as Map<String, dynamic>);

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$Match$UserToJson(
        LikeUser$Mutation$LikeUser$Match$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'verified': instance.verified,
      'gallery': instance.gallery?.toJson(),
    };

LikeUser$Mutation$LikeUser$Match _$LikeUser$Mutation$LikeUser$MatchFromJson(
        Map<String, dynamic> json) =>
    LikeUser$Mutation$LikeUser$Match()
      ..conversation = LikeUser$Mutation$LikeUser$Match$Conversation.fromJson(
          json['conversation'] as Map<String, dynamic>)
      ..matchee = LikeUser$Mutation$LikeUser$Match$Matchee.fromJson(
          json['matchee'] as Map<String, dynamic>)
      ..user = LikeUser$Mutation$LikeUser$Match$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$LikeUser$Mutation$LikeUser$MatchToJson(
        LikeUser$Mutation$LikeUser$Match instance) =>
    <String, dynamic>{
      'conversation': instance.conversation.toJson(),
      'matchee': instance.matchee.toJson(),
      'user': instance.user.toJson(),
    };

LikeUser$Mutation$LikeUser _$LikeUser$Mutation$LikeUserFromJson(
        Map<String, dynamic> json) =>
    LikeUser$Mutation$LikeUser()
      ..like = LikeUser$Mutation$LikeUser$Like.fromJson(
          json['like'] as Map<String, dynamic>)
      ..match = json['match'] == null
          ? null
          : LikeUser$Mutation$LikeUser$Match.fromJson(
              json['match'] as Map<String, dynamic>);

Map<String, dynamic> _$LikeUser$Mutation$LikeUserToJson(
        LikeUser$Mutation$LikeUser instance) =>
    <String, dynamic>{
      'like': instance.like.toJson(),
      'match': instance.match?.toJson(),
    };

LikeUser$Mutation _$LikeUser$MutationFromJson(Map<String, dynamic> json) =>
    LikeUser$Mutation()
      ..likeUser = json['likeUser'] == null
          ? null
          : LikeUser$Mutation$LikeUser.fromJson(
              json['likeUser'] as Map<String, dynamic>);

Map<String, dynamic> _$LikeUser$MutationToJson(LikeUser$Mutation instance) =>
    <String, dynamic>{
      'likeUser': instance.likeUser?.toJson(),
    };

LikeUserInput _$LikeUserInputFromJson(Map<String, dynamic> json) =>
    LikeUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: LikeInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikeUserInputToJson(LikeUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

LikeInput _$LikeInputFromJson(Map<String, dynamic> json) => LikeInput(
      likeType: json['likeType'] as String,
      likeeId: (json['likeeId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$LikeInputToJson(LikeInput instance) => <String, dynamic>{
      'likeType': instance.likeType,
      'likeeId': instance.likeeId,
      'userId': instance.userId,
    };

GrantUserPremium$Mutation$GrantUserPremium$User
    _$GrantUserPremium$Mutation$GrantUserPremium$UserFromJson(
            Map<String, dynamic> json) =>
        GrantUserPremium$Mutation$GrantUserPremium$User()
          ..id = json['id'] as String
          ..premium = json['premium'] as bool;

Map<String, dynamic> _$GrantUserPremium$Mutation$GrantUserPremium$UserToJson(
        GrantUserPremium$Mutation$GrantUserPremium$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'premium': instance.premium,
    };

GrantUserPremium$Mutation$GrantUserPremium
    _$GrantUserPremium$Mutation$GrantUserPremiumFromJson(
            Map<String, dynamic> json) =>
        GrantUserPremium$Mutation$GrantUserPremium()
          ..user = GrantUserPremium$Mutation$GrantUserPremium$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$GrantUserPremium$Mutation$GrantUserPremiumToJson(
        GrantUserPremium$Mutation$GrantUserPremium instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

GrantUserPremium$Mutation _$GrantUserPremium$MutationFromJson(
        Map<String, dynamic> json) =>
    GrantUserPremium$Mutation()
      ..grantUserPremium = json['grantUserPremium'] == null
          ? null
          : GrantUserPremium$Mutation$GrantUserPremium.fromJson(
              json['grantUserPremium'] as Map<String, dynamic>);

Map<String, dynamic> _$GrantUserPremium$MutationToJson(
        GrantUserPremium$Mutation instance) =>
    <String, dynamic>{
      'grantUserPremium': instance.grantUserPremium?.toJson(),
    };

GrantUserPremiumInput _$GrantUserPremiumInputFromJson(
        Map<String, dynamic> json) =>
    GrantUserPremiumInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$GrantUserPremiumInputToJson(
        GrantUserPremiumInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

UnmatchUser$Mutation$UnmatchUser$User
    _$UnmatchUser$Mutation$UnmatchUser$UserFromJson(
            Map<String, dynamic> json) =>
        UnmatchUser$Mutation$UnmatchUser$User()..id = json['id'] as String;

Map<String, dynamic> _$UnmatchUser$Mutation$UnmatchUser$UserToJson(
        UnmatchUser$Mutation$UnmatchUser$User instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UnmatchUser$Mutation$UnmatchUser _$UnmatchUser$Mutation$UnmatchUserFromJson(
        Map<String, dynamic> json) =>
    UnmatchUser$Mutation$UnmatchUser()
      ..user = UnmatchUser$Mutation$UnmatchUser$User.fromJson(
          json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UnmatchUser$Mutation$UnmatchUserToJson(
        UnmatchUser$Mutation$UnmatchUser instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

UnmatchUser$Mutation _$UnmatchUser$MutationFromJson(
        Map<String, dynamic> json) =>
    UnmatchUser$Mutation()
      ..unmatchUser = json['unmatchUser'] == null
          ? null
          : UnmatchUser$Mutation$UnmatchUser.fromJson(
              json['unmatchUser'] as Map<String, dynamic>);

Map<String, dynamic> _$UnmatchUser$MutationToJson(
        UnmatchUser$Mutation instance) =>
    <String, dynamic>{
      'unmatchUser': instance.unmatchUser?.toJson(),
    };

UnmatchUserInput _$UnmatchUserInputFromJson(Map<String, dynamic> json) =>
    UnmatchUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      params: BlockUserInput.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnmatchUserInputToJson(UnmatchUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'params': instance.params.toJson(),
    };

BlockUserInput _$BlockUserInputFromJson(Map<String, dynamic> json) =>
    BlockUserInput(
      blockedUserId: json['blockedUserId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$BlockUserInputToJson(BlockUserInput instance) =>
    <String, dynamic>{
      'blockedUserId': instance.blockedUserId,
      'userId': instance.userId,
    };

DeleteUser$Mutation$DeleteUser$SoftDeletedUser
    _$DeleteUser$Mutation$DeleteUser$SoftDeletedUserFromJson(
            Map<String, dynamic> json) =>
        DeleteUser$Mutation$DeleteUser$SoftDeletedUser()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool;

Map<String, dynamic> _$DeleteUser$Mutation$DeleteUser$SoftDeletedUserToJson(
        DeleteUser$Mutation$DeleteUser$SoftDeletedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'verified': instance.verified,
    };

DeleteUser$Mutation$DeleteUser _$DeleteUser$Mutation$DeleteUserFromJson(
        Map<String, dynamic> json) =>
    DeleteUser$Mutation$DeleteUser()
      ..softDeletedUser =
          DeleteUser$Mutation$DeleteUser$SoftDeletedUser.fromJson(
              json['softDeletedUser'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteUser$Mutation$DeleteUserToJson(
        DeleteUser$Mutation$DeleteUser instance) =>
    <String, dynamic>{
      'softDeletedUser': instance.softDeletedUser.toJson(),
    };

DeleteUser$Mutation _$DeleteUser$MutationFromJson(Map<String, dynamic> json) =>
    DeleteUser$Mutation()
      ..deleteUser = json['deleteUser'] == null
          ? null
          : DeleteUser$Mutation$DeleteUser.fromJson(
              json['deleteUser'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteUser$MutationToJson(
        DeleteUser$Mutation instance) =>
    <String, dynamic>{
      'deleteUser': instance.deleteUser?.toJson(),
    };

DeleteUserInput _$DeleteUserInputFromJson(Map<String, dynamic> json) =>
    DeleteUserInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$DeleteUserInputToJson(DeleteUserInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
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

SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequest
    _$SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequestFromJson(
            Map<String, dynamic> json) =>
        SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequest()
          ..id = json['id'] as String
          ..matcheeId = (json['matcheeId'] as num).toInt()
          ..status = (json['status'] as num?)?.toInt()
          ..userId = (json['userId'] as num).toInt();

Map<String, dynamic>
    _$SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequestToJson(
            SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequest
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'matcheeId': instance.matcheeId,
          'status': instance.status,
          'userId': instance.userId,
        };

SendVideoChatRequest$Mutation$SendVideoChatRequest
    _$SendVideoChatRequest$Mutation$SendVideoChatRequestFromJson(
            Map<String, dynamic> json) =>
        SendVideoChatRequest$Mutation$SendVideoChatRequest()
          ..videoChatRequest =
              SendVideoChatRequest$Mutation$SendVideoChatRequest$VideoChatRequest
                  .fromJson(json['videoChatRequest'] as Map<String, dynamic>);

Map<String, dynamic> _$SendVideoChatRequest$Mutation$SendVideoChatRequestToJson(
        SendVideoChatRequest$Mutation$SendVideoChatRequest instance) =>
    <String, dynamic>{
      'videoChatRequest': instance.videoChatRequest.toJson(),
    };

SendVideoChatRequest$Mutation _$SendVideoChatRequest$MutationFromJson(
        Map<String, dynamic> json) =>
    SendVideoChatRequest$Mutation()
      ..sendVideoChatRequest = json['sendVideoChatRequest'] == null
          ? null
          : SendVideoChatRequest$Mutation$SendVideoChatRequest.fromJson(
              json['sendVideoChatRequest'] as Map<String, dynamic>);

Map<String, dynamic> _$SendVideoChatRequest$MutationToJson(
        SendVideoChatRequest$Mutation instance) =>
    <String, dynamic>{
      'sendVideoChatRequest': instance.sendVideoChatRequest?.toJson(),
    };

SendVideoChatRequestInput _$SendVideoChatRequestInputFromJson(
        Map<String, dynamic> json) =>
    SendVideoChatRequestInput(
      clientMutationId: json['clientMutationId'] as String?,
      matcheeId: json['matcheeId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SendVideoChatRequestInputToJson(
        SendVideoChatRequestInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'matcheeId': instance.matcheeId,
      'userId': instance.userId,
    };

ReorderPhotos$Mutation$ReorderPhotos$Photo
    _$ReorderPhotos$Mutation$ReorderPhotos$PhotoFromJson(
            Map<String, dynamic> json) =>
        ReorderPhotos$Mutation$ReorderPhotos$Photo()
          ..order = (json['order'] as num?)?.toInt()
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
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$SetUserLocationInputToJson(
        SetUserLocationInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'userId': instance.userId,
    };

UndoLike$Mutation$UndoLike$UndidUser
    _$UndoLike$Mutation$UndoLike$UndidUserFromJson(Map<String, dynamic> json) =>
        UndoLike$Mutation$UndoLike$UndidUser()..id = json['id'] as String;

Map<String, dynamic> _$UndoLike$Mutation$UndoLike$UndidUserToJson(
        UndoLike$Mutation$UndoLike$UndidUser instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UndoLike$Mutation$UndoLike _$UndoLike$Mutation$UndoLikeFromJson(
        Map<String, dynamic> json) =>
    UndoLike$Mutation$UndoLike()
      ..status = json['status'] as String
      ..undidUser = json['undidUser'] == null
          ? null
          : UndoLike$Mutation$UndoLike$UndidUser.fromJson(
              json['undidUser'] as Map<String, dynamic>);

Map<String, dynamic> _$UndoLike$Mutation$UndoLikeToJson(
        UndoLike$Mutation$UndoLike instance) =>
    <String, dynamic>{
      'status': instance.status,
      'undidUser': instance.undidUser?.toJson(),
    };

UndoLike$Mutation _$UndoLike$MutationFromJson(Map<String, dynamic> json) =>
    UndoLike$Mutation()
      ..undoLike = json['undoLike'] == null
          ? null
          : UndoLike$Mutation$UndoLike.fromJson(
              json['undoLike'] as Map<String, dynamic>);

Map<String, dynamic> _$UndoLike$MutationToJson(UndoLike$Mutation instance) =>
    <String, dynamic>{
      'undoLike': instance.undoLike?.toJson(),
    };

UndoLikeInput _$UndoLikeInputFromJson(Map<String, dynamic> json) =>
    UndoLikeInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$UndoLikeInputToJson(UndoLikeInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$Photos
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$PhotosToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$GalleryFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$GalleryToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$MatcheeFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee()
          ..id = json['id'] as String
          ..firstName = json['firstName'] as String
          ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['birthday'] as String?)
          ..gallery = json['gallery'] == null
              ? null
              : FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>);

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$MatcheeToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'firstName': instance.firstName,
          'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.birthday),
          'gallery': instance.gallery?.toJson(),
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatchesFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches()
          ..id = json['id'] as String
          ..userId = json['userId'] as String
          ..matchee = json['matchee'] == null
              ? null
              : FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches$Matchee
                  .fromJson(json['matchee'] as Map<String, dynamic>)
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..updatedAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['updatedAt'] as String);

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatchesToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'userId': instance.userId,
          'matchee': instance.matchee?.toJson(),
          'createdAt':
              fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
          'updatedAt':
              fromDartDateTimeToGraphQLISO8601DateTime(instance.updatedAt),
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$Conversation
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$ConversationFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$Conversation()
          ..id = json['id'] as String;

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$ConversationToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$Conversation
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$MatchesFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches()
          ..id = json['id'] as String
          ..matcheeId = (json['matcheeId'] as num?)?.toInt()
          ..conversation =
              FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches$Conversation
                  .fromJson(json['conversation'] as Map<String, dynamic>);

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$MatchesToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'matcheeId': instance.matcheeId,
          'conversation': instance.conversation.toJson(),
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$Photos
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$PhotosToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
          'id': instance.id,
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$GalleryToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Animes
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$AnimesFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Animes()
          ..id = json['id'] as String
          ..title = json['title'] as String?
          ..japaneseTitle = json['japaneseTitle'] as String?
          ..cover = json['cover'] as String?;

Map<String,
    dynamic> _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$AnimesToJson(
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Animes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'japaneseTitle': instance.japaneseTitle,
      'cover': instance.cover,
    };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusic
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusic()
          ..id = json['id'] as String
          ..coverUrl = json['coverUrl'] as String?
          ..musicType = json['musicType'] as String?
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusicToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusic
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'coverUrl': instance.coverUrl,
          'musicType': instance.musicType,
          'trackName': instance.trackName,
          'artistName': instance.artistName,
          'spotifyId': instance.spotifyId,
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch$User
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$UserFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch$User()
          ..id = json['id'] as String
          ..role = json['role'] as String
          ..firstName = json['firstName'] as String
          ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['birthday'] as String?)
          ..country = json['country'] as String?
          ..bio = json['bio'] as String?
          ..gender = json['gender'] as String?
          ..desiredGender = json['desiredGender'] as String?
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool
          ..school = json['school'] as String?
          ..occupation = json['occupation'] as String?
          ..displayCity = json['displayCity'] as String?
          ..displayState = json['displayState'] as String?
          ..onlineStatus = json['onlineStatus'] as String?
          ..lonlat = json['lonlat'] as String?
          ..videoCallScore = (json['videoCallScore'] as num?)?.toDouble()
          ..videoMatches = (json['videoMatches'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$VideoMatches
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..matches = (json['matches'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Matches
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..gallery = json['gallery'] == null
              ? null
              : FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>)
          ..animes = (json['animes'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$Animes
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..favoriteMusic = (json['favoriteMusic'] as List<dynamic>?)
              ?.map((e) =>
                  FindVideoChatMatch$Mutation$FindVideoChatMatch$User$FavoriteMusic
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..premium = json['premium'] as bool
          ..superLikeCount = (json['superLikeCount'] as num?)?.toInt()
          ..hasLocationHidden = json['hasLocationHidden'] as bool?
          ..nextPaymentDate =
              fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
                  json['nextPaymentDate'] as String?)
          ..isDisplayingRecentlyActive =
              json['isDisplayingRecentlyActive'] as bool?
          ..isDisplayingActive = json['isDisplayingActive'] as bool?;

Map<String, dynamic>
    _$FindVideoChatMatch$Mutation$FindVideoChatMatch$UserToJson(
            FindVideoChatMatch$Mutation$FindVideoChatMatch$User instance) =>
        <String, dynamic>{
          'id': instance.id,
          'role': instance.role,
          'firstName': instance.firstName,
          'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.birthday),
          'country': instance.country,
          'bio': instance.bio,
          'gender': instance.gender,
          'desiredGender': instance.desiredGender,
          'phone': instance.phone,
          'verified': instance.verified,
          'school': instance.school,
          'occupation': instance.occupation,
          'displayCity': instance.displayCity,
          'displayState': instance.displayState,
          'onlineStatus': instance.onlineStatus,
          'lonlat': instance.lonlat,
          'videoCallScore': instance.videoCallScore,
          'videoMatches':
              instance.videoMatches?.map((e) => e.toJson()).toList(),
          'matches': instance.matches?.map((e) => e.toJson()).toList(),
          'gallery': instance.gallery?.toJson(),
          'animes': instance.animes?.map((e) => e.toJson()).toList(),
          'favoriteMusic':
              instance.favoriteMusic?.map((e) => e.toJson()).toList(),
          'premium': instance.premium,
          'superLikeCount': instance.superLikeCount,
          'hasLocationHidden': instance.hasLocationHidden,
          'nextPaymentDate':
              fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
                  instance.nextPaymentDate),
          'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
          'isDisplayingActive': instance.isDisplayingActive,
        };

FindVideoChatMatch$Mutation$FindVideoChatMatch
    _$FindVideoChatMatch$Mutation$FindVideoChatMatchFromJson(
            Map<String, dynamic> json) =>
        FindVideoChatMatch$Mutation$FindVideoChatMatch()
          ..user = json['user'] == null
              ? null
              : FindVideoChatMatch$Mutation$FindVideoChatMatch$User.fromJson(
                  json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$FindVideoChatMatch$Mutation$FindVideoChatMatchToJson(
        FindVideoChatMatch$Mutation$FindVideoChatMatch instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

FindVideoChatMatch$Mutation _$FindVideoChatMatch$MutationFromJson(
        Map<String, dynamic> json) =>
    FindVideoChatMatch$Mutation()
      ..findVideoChatMatch = json['findVideoChatMatch'] == null
          ? null
          : FindVideoChatMatch$Mutation$FindVideoChatMatch.fromJson(
              json['findVideoChatMatch'] as Map<String, dynamic>);

Map<String, dynamic> _$FindVideoChatMatch$MutationToJson(
        FindVideoChatMatch$Mutation instance) =>
    <String, dynamic>{
      'findVideoChatMatch': instance.findVideoChatMatch?.toJson(),
    };

FindVideoChatMatchInput _$FindVideoChatMatchInputFromJson(
        Map<String, dynamic> json) =>
    FindVideoChatMatchInput(
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FindVideoChatMatchInputToJson(
        FindVideoChatMatchInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

AddSuperLikes$Mutation$AddSuperLikes$User
    _$AddSuperLikes$Mutation$AddSuperLikes$UserFromJson(
            Map<String, dynamic> json) =>
        AddSuperLikes$Mutation$AddSuperLikes$User()
          ..id = json['id'] as String
          ..phone = json['phone'] as String
          ..verified = json['verified'] as bool
          ..superLikeCount = (json['superLikeCount'] as num?)?.toInt();

Map<String, dynamic> _$AddSuperLikes$Mutation$AddSuperLikes$UserToJson(
        AddSuperLikes$Mutation$AddSuperLikes$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'verified': instance.verified,
      'superLikeCount': instance.superLikeCount,
    };

AddSuperLikes$Mutation$AddSuperLikes
    _$AddSuperLikes$Mutation$AddSuperLikesFromJson(Map<String, dynamic> json) =>
        AddSuperLikes$Mutation$AddSuperLikes()
          ..user = AddSuperLikes$Mutation$AddSuperLikes$User.fromJson(
              json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$AddSuperLikes$Mutation$AddSuperLikesToJson(
        AddSuperLikes$Mutation$AddSuperLikes instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

AddSuperLikes$Mutation _$AddSuperLikes$MutationFromJson(
        Map<String, dynamic> json) =>
    AddSuperLikes$Mutation()
      ..addSuperLikes = json['addSuperLikes'] == null
          ? null
          : AddSuperLikes$Mutation$AddSuperLikes.fromJson(
              json['addSuperLikes'] as Map<String, dynamic>);

Map<String, dynamic> _$AddSuperLikes$MutationToJson(
        AddSuperLikes$Mutation instance) =>
    <String, dynamic>{
      'addSuperLikes': instance.addSuperLikes?.toJson(),
    };

AddSuperLikesInput _$AddSuperLikesInputFromJson(Map<String, dynamic> json) =>
    AddSuperLikesInput(
      amount: (json['amount'] as num).toInt(),
      clientMutationId: json['clientMutationId'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$AddSuperLikesInputToJson(AddSuperLikesInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'clientMutationId': instance.clientMutationId,
      'userId': instance.userId,
    };

DenyVideoCall$Mutation$DenyVideoCall$Request
    _$DenyVideoCall$Mutation$DenyVideoCall$RequestFromJson(
            Map<String, dynamic> json) =>
        DenyVideoCall$Mutation$DenyVideoCall$Request()
          ..id = json['id'] as String
          ..userId = (json['userId'] as num).toInt()
          ..matcheeId = (json['matcheeId'] as num).toInt();

Map<String, dynamic> _$DenyVideoCall$Mutation$DenyVideoCall$RequestToJson(
        DenyVideoCall$Mutation$DenyVideoCall$Request instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'matcheeId': instance.matcheeId,
    };

DenyVideoCall$Mutation$DenyVideoCall
    _$DenyVideoCall$Mutation$DenyVideoCallFromJson(Map<String, dynamic> json) =>
        DenyVideoCall$Mutation$DenyVideoCall()
          ..request = json['request'] == null
              ? null
              : DenyVideoCall$Mutation$DenyVideoCall$Request.fromJson(
                  json['request'] as Map<String, dynamic>);

Map<String, dynamic> _$DenyVideoCall$Mutation$DenyVideoCallToJson(
        DenyVideoCall$Mutation$DenyVideoCall instance) =>
    <String, dynamic>{
      'request': instance.request?.toJson(),
    };

DenyVideoCall$Mutation _$DenyVideoCall$MutationFromJson(
        Map<String, dynamic> json) =>
    DenyVideoCall$Mutation()
      ..denyVideoCall = json['denyVideoCall'] == null
          ? null
          : DenyVideoCall$Mutation$DenyVideoCall.fromJson(
              json['denyVideoCall'] as Map<String, dynamic>);

Map<String, dynamic> _$DenyVideoCall$MutationToJson(
        DenyVideoCall$Mutation instance) =>
    <String, dynamic>{
      'denyVideoCall': instance.denyVideoCall?.toJson(),
    };

DenyVideoCallInput _$DenyVideoCallInputFromJson(Map<String, dynamic> json) =>
    DenyVideoCallInput(
      chatRequestId: json['chatRequestId'] as String,
      clientMutationId: json['clientMutationId'] as String?,
    );

Map<String, dynamic> _$DenyVideoCallInputToJson(DenyVideoCallInput instance) =>
    <String, dynamic>{
      'chatRequestId': instance.chatRequestId,
      'clientMutationId': instance.clientMutationId,
    };

UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos
    _$UploadPhoto$Mutation$UploadPhoto$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        UploadPhoto$Mutation$UploadPhoto$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
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
      order: (json['order'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$UploadPhotoInputToJson(UploadPhotoInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'image':
          fromDartMultipartFileNullableToGraphQLUploadNullable(instance.image),
      'order': instance.order,
      'userId': instance.userId,
    };

DeleteFavoriteMusic$Mutation$DeleteFavoriteMusic
    _$DeleteFavoriteMusic$Mutation$DeleteFavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        DeleteFavoriteMusic$Mutation$DeleteFavoriteMusic()
          ..deleted = json['deleted'] as bool;

Map<String, dynamic> _$DeleteFavoriteMusic$Mutation$DeleteFavoriteMusicToJson(
        DeleteFavoriteMusic$Mutation$DeleteFavoriteMusic instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
    };

DeleteFavoriteMusic$Mutation _$DeleteFavoriteMusic$MutationFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteMusic$Mutation()
      ..deleteFavoriteMusic = json['deleteFavoriteMusic'] == null
          ? null
          : DeleteFavoriteMusic$Mutation$DeleteFavoriteMusic.fromJson(
              json['deleteFavoriteMusic'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteFavoriteMusic$MutationToJson(
        DeleteFavoriteMusic$Mutation instance) =>
    <String, dynamic>{
      'deleteFavoriteMusic': instance.deleteFavoriteMusic?.toJson(),
    };

DeleteFavoriteMusicInput _$DeleteFavoriteMusicInputFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteMusicInput(
      clientMutationId: json['clientMutationId'] as String?,
      musicIds:
          (json['musicIds'] as List<dynamic>).map((e) => e as String).toList(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$DeleteFavoriteMusicInputToJson(
        DeleteFavoriteMusicInput instance) =>
    <String, dynamic>{
      'clientMutationId': instance.clientMutationId,
      'musicIds': instance.musicIds,
      'userId': instance.userId,
    };

FetchLobbyCount$Query _$FetchLobbyCount$QueryFromJson(
        Map<String, dynamic> json) =>
    FetchLobbyCount$Query()
      ..fetchLobbyCount = (json['fetchLobbyCount'] as num).toInt();

Map<String, dynamic> _$FetchLobbyCount$QueryToJson(
        FetchLobbyCount$Query instance) =>
    <String, dynamic>{
      'fetchLobbyCount': instance.fetchLobbyCount,
    };

FetchMessages$Query$FetchMessages$Recommendation$Anime
    _$FetchMessages$Query$FetchMessages$Recommendation$AnimeFromJson(
            Map<String, dynamic> json) =>
        FetchMessages$Query$FetchMessages$Recommendation$Anime()
          ..id = json['id'] as String
          ..title = json['title'] as String?
          ..cover = json['cover'] as String?;

Map<String, dynamic>
    _$FetchMessages$Query$FetchMessages$Recommendation$AnimeToJson(
            FetchMessages$Query$FetchMessages$Recommendation$Anime instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'cover': instance.cover,
        };

FetchMessages$Query$FetchMessages$Recommendation
    _$FetchMessages$Query$FetchMessages$RecommendationFromJson(
            Map<String, dynamic> json) =>
        FetchMessages$Query$FetchMessages$Recommendation()
          ..userId = (json['userId'] as num).toInt()
          ..recommendeeId = (json['recommendeeId'] as num).toInt()
          ..anime = json['anime'] == null
              ? null
              : FetchMessages$Query$FetchMessages$Recommendation$Anime.fromJson(
                  json['anime'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchMessages$Query$FetchMessages$RecommendationToJson(
        FetchMessages$Query$FetchMessages$Recommendation instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'recommendeeId': instance.recommendeeId,
      'anime': instance.anime?.toJson(),
    };

FetchMessages$Query$FetchMessages$Sticker
    _$FetchMessages$Query$FetchMessages$StickerFromJson(
            Map<String, dynamic> json) =>
        FetchMessages$Query$FetchMessages$Sticker()
          ..id = json['id'] as String
          ..url = json['url'] as String;

Map<String, dynamic> _$FetchMessages$Query$FetchMessages$StickerToJson(
        FetchMessages$Query$FetchMessages$Sticker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

FetchMessages$Query$FetchMessages _$FetchMessages$Query$FetchMessagesFromJson(
        Map<String, dynamic> json) =>
    FetchMessages$Query$FetchMessages()
      ..id = json['id'] as String
      ..attachment = json['attachment'] as String?
      ..attachmentType = json['attachmentType'] as String?
      ..content = json['content'] as String?
      ..createdAt =
          fromGraphQLISO8601DateTimeToDartDateTime(json['createdAt'] as String)
      ..reaction = json['reaction'] as String?
      ..read = json['read'] as bool?
      ..senderId = (json['senderId'] as num?)?.toInt()
      ..recommendation = json['recommendation'] == null
          ? null
          : FetchMessages$Query$FetchMessages$Recommendation.fromJson(
              json['recommendation'] as Map<String, dynamic>)
      ..sticker = json['sticker'] == null
          ? null
          : FetchMessages$Query$FetchMessages$Sticker.fromJson(
              json['sticker'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchMessages$Query$FetchMessagesToJson(
        FetchMessages$Query$FetchMessages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attachment': instance.attachment,
      'attachmentType': instance.attachmentType,
      'content': instance.content,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'reaction': instance.reaction,
      'read': instance.read,
      'senderId': instance.senderId,
      'recommendation': instance.recommendation?.toJson(),
      'sticker': instance.sticker?.toJson(),
    };

FetchMessages$Query _$FetchMessages$QueryFromJson(Map<String, dynamic> json) =>
    FetchMessages$Query()
      ..fetchMessages = (json['fetchMessages'] as List<dynamic>)
          .map((e) => FetchMessages$Query$FetchMessages.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchMessages$QueryToJson(
        FetchMessages$Query instance) =>
    <String, dynamic>{
      'fetchMessages': instance.fetchMessages.map((e) => e.toJson()).toList(),
    };

FetchFeed$Query$FetchFeed$Gallery$Photos
    _$FetchFeed$Query$FetchFeed$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FetchFeed$Query$FetchFeed$Gallery$Photos()
          ..id = json['id'] as String
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$Gallery$PhotosToJson(
        FetchFeed$Query$FetchFeed$Gallery$Photos instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      ..japaneseTitle = json['japaneseTitle'] as String?
      ..cover = json['cover'] as String?;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$AnimesToJson(
        FetchFeed$Query$FetchFeed$Animes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'japaneseTitle': instance.japaneseTitle,
      'cover': instance.cover,
    };

FetchFeed$Query$FetchFeed$FavoriteMusic
    _$FetchFeed$Query$FetchFeed$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        FetchFeed$Query$FetchFeed$FavoriteMusic()
          ..id = json['id'] as String
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..coverUrl = json['coverUrl'] as String?
          ..musicType = json['musicType'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic> _$FetchFeed$Query$FetchFeed$FavoriteMusicToJson(
        FetchFeed$Query$FetchFeed$FavoriteMusic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trackName': instance.trackName,
      'artistName': instance.artistName,
      'coverUrl': instance.coverUrl,
      'musicType': instance.musicType,
      'spotifyId': instance.spotifyId,
    };

FetchFeed$Query$FetchFeed _$FetchFeed$Query$FetchFeedFromJson(
        Map<String, dynamic> json) =>
    FetchFeed$Query$FetchFeed()
      ..id = json['id'] as String
      ..phone = json['phone'] as String
      ..firstName = json['firstName'] as String
      ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['birthday'] as String?)
      ..premium = json['premium'] as bool
      ..occupation = json['occupation'] as String?
      ..school = json['school'] as String?
      ..currentSignInAt =
          fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['currentSignInAt'] as String?)
      ..currentSignInIp = json['currentSignInIp'] as String?
      ..gender = json['gender'] as String?
      ..desiredGender = json['desiredGender'] as String?
      ..bio = json['bio'] as String?
      ..verified = json['verified'] as bool
      ..onlineStatus = json['onlineStatus'] as String?
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
          .toList()
      ..hasLocationHidden = json['hasLocationHidden'] as bool?
      ..superLikeCount = (json['superLikeCount'] as num?)?.toInt()
      ..milesAway = (json['milesAway'] as num?)?.toInt();

Map<String, dynamic> _$FetchFeed$Query$FetchFeedToJson(
        FetchFeed$Query$FetchFeed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'premium': instance.premium,
      'occupation': instance.occupation,
      'school': instance.school,
      'currentSignInAt':
          fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.currentSignInAt),
      'currentSignInIp': instance.currentSignInIp,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'bio': instance.bio,
      'verified': instance.verified,
      'onlineStatus': instance.onlineStatus,
      'gallery': instance.gallery?.toJson(),
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
      'hasLocationHidden': instance.hasLocationHidden,
      'superLikeCount': instance.superLikeCount,
      'milesAway': instance.milesAway,
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

FetchFeedInput _$FetchFeedInputFromJson(Map<String, dynamic> json) =>
    FetchFeedInput(
      animeIds: (json['animeIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasBio: json['hasBio'] as bool?,
      maxAge: (json['maxAge'] as num).toInt(),
      milesAway: (json['milesAway'] as num).toInt(),
      minAge: (json['minAge'] as num).toInt(),
      page: (json['page'] as num?)?.toInt(),
      refresh: json['refresh'] as bool?,
      userId: json['userId'] as String,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$FetchFeedInputToJson(FetchFeedInput instance) =>
    <String, dynamic>{
      'animeIds': instance.animeIds,
      'hasBio': instance.hasBio,
      'maxAge': instance.maxAge,
      'milesAway': instance.milesAway,
      'minAge': instance.minAge,
      'page': instance.page,
      'refresh': instance.refresh,
      'userId': instance.userId,
      'verified': instance.verified,
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
      ..matcheeId = (json['matcheeId'] as num?)?.toInt()
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
          ..order = (json['order'] as num?)?.toInt()
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
      ..japaneseTitle = json['japaneseTitle'] as String?
      ..cover = json['cover'] as String?;

Map<String, dynamic> _$FetchUser$Query$FetchUser$AnimesToJson(
        FetchUser$Query$FetchUser$Animes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'japaneseTitle': instance.japaneseTitle,
      'cover': instance.cover,
    };

FetchUser$Query$FetchUser$FavoriteMusic
    _$FetchUser$Query$FetchUser$FavoriteMusicFromJson(
            Map<String, dynamic> json) =>
        FetchUser$Query$FetchUser$FavoriteMusic()
          ..id = json['id'] as String
          ..coverUrl = json['coverUrl'] as String?
          ..musicType = json['musicType'] as String?
          ..trackName = json['trackName'] as String?
          ..artistName = json['artistName'] as String?
          ..spotifyId = json['spotifyId'] as String?;

Map<String, dynamic> _$FetchUser$Query$FetchUser$FavoriteMusicToJson(
        FetchUser$Query$FetchUser$FavoriteMusic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coverUrl': instance.coverUrl,
      'musicType': instance.musicType,
      'trackName': instance.trackName,
      'artistName': instance.artistName,
      'spotifyId': instance.spotifyId,
    };

FetchUser$Query$FetchUser _$FetchUser$Query$FetchUserFromJson(
        Map<String, dynamic> json) =>
    FetchUser$Query$FetchUser()
      ..id = json['id'] as String
      ..role = json['role'] as String
      ..firstName = json['firstName'] as String
      ..birthday = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['birthday'] as String?)
      ..country = json['country'] as String?
      ..bio = json['bio'] as String?
      ..gender = json['gender'] as String?
      ..desiredGender = json['desiredGender'] as String?
      ..phone = json['phone'] as String
      ..verified = json['verified'] as bool
      ..school = json['school'] as String?
      ..occupation = json['occupation'] as String?
      ..displayCity = json['displayCity'] as String?
      ..displayState = json['displayState'] as String?
      ..onlineStatus = json['onlineStatus'] as String?
      ..lonlat = json['lonlat'] as String?
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
          .toList()
      ..premium = json['premium'] as bool
      ..superLikeCount = (json['superLikeCount'] as num?)?.toInt()
      ..hasLocationHidden = json['hasLocationHidden'] as bool?
      ..nextPaymentDate =
          fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
              json['nextPaymentDate'] as String?)
      ..isDisplayingRecentlyActive = json['isDisplayingRecentlyActive'] as bool?
      ..isDisplayingActive = json['isDisplayingActive'] as bool?;

Map<String, dynamic> _$FetchUser$Query$FetchUserToJson(
        FetchUser$Query$FetchUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'firstName': instance.firstName,
      'birthday': fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
          instance.birthday),
      'country': instance.country,
      'bio': instance.bio,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'phone': instance.phone,
      'verified': instance.verified,
      'school': instance.school,
      'occupation': instance.occupation,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
      'onlineStatus': instance.onlineStatus,
      'lonlat': instance.lonlat,
      'matches': instance.matches?.map((e) => e.toJson()).toList(),
      'gallery': instance.gallery?.toJson(),
      'animes': instance.animes?.map((e) => e.toJson()).toList(),
      'favoriteMusic': instance.favoriteMusic?.map((e) => e.toJson()).toList(),
      'premium': instance.premium,
      'superLikeCount': instance.superLikeCount,
      'hasLocationHidden': instance.hasLocationHidden,
      'nextPaymentDate':
          fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
              instance.nextPaymentDate),
      'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
      'isDisplayingActive': instance.isDisplayingActive,
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
      ..episodes = (json['episodes'] as num?)?.toInt()
      ..popularity = (json['popularity'] as num?)?.toInt()
      ..averageScore = (json['averageScore'] as num?)?.toInt()
      ..startDate = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['startDate'] as String?)
      ..endDate = fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
          json['endDate'] as String?)
      ..studios = json['studios'] as String?
      ..year = (json['year'] as num?)?.toInt()
      ..status = json['status'] as String?
      ..japaneseTitle = json['japaneseTitle'] as String?;

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
      'japaneseTitle': instance.japaneseTitle,
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
      page: (json['page'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AnimeInputToJson(AnimeInput instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'page': instance.page,
      'title': instance.title,
    };

FetchConversations$Query$FetchConversations$Match$User$Gallery$Photos
    _$FetchConversations$Query$FetchConversations$Match$User$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$User$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Match$User$Gallery$PhotosToJson(
            FetchConversations$Query$FetchConversations$Match$User$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
        };

FetchConversations$Query$FetchConversations$Match$User$Gallery
    _$FetchConversations$Query$FetchConversations$Match$User$GalleryFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$User$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  FetchConversations$Query$FetchConversations$Match$User$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Match$User$GalleryToJson(
            FetchConversations$Query$FetchConversations$Match$User$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

FetchConversations$Query$FetchConversations$Match$User
    _$FetchConversations$Query$FetchConversations$Match$UserFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$User()
          ..id = json['id'] as String
          ..onlineStatus = json['onlineStatus'] as String?
          ..firstName = json['firstName'] as String
          ..gallery = json['gallery'] == null
              ? null
              : FetchConversations$Query$FetchConversations$Match$User$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>);

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Match$UserToJson(
            FetchConversations$Query$FetchConversations$Match$User instance) =>
        <String, dynamic>{
          'id': instance.id,
          'onlineStatus': instance.onlineStatus,
          'firstName': instance.firstName,
          'gallery': instance.gallery?.toJson(),
        };

FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$Photos
    _$FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$PhotosFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$Photos()
          ..order = (json['order'] as num?)?.toInt()
          ..url = json['url'] as String;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$PhotosToJson(
            FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$Photos
                instance) =>
        <String, dynamic>{
          'order': instance.order,
          'url': instance.url,
        };

FetchConversations$Query$FetchConversations$Match$Matchee$Gallery
    _$FetchConversations$Query$FetchConversations$Match$Matchee$GalleryFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$Matchee$Gallery()
          ..photos = (json['photos'] as List<dynamic>?)
              ?.map((e) =>
                  FetchConversations$Query$FetchConversations$Match$Matchee$Gallery$Photos
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$Match$Matchee$GalleryToJson(
            FetchConversations$Query$FetchConversations$Match$Matchee$Gallery
                instance) =>
        <String, dynamic>{
          'photos': instance.photos?.map((e) => e.toJson()).toList(),
        };

FetchConversations$Query$FetchConversations$Match$Matchee
    _$FetchConversations$Query$FetchConversations$Match$MatcheeFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match$Matchee()
          ..id = json['id'] as String
          ..onlineStatus = json['onlineStatus'] as String?
          ..firstName = json['firstName'] as String
          ..gallery = json['gallery'] == null
              ? null
              : FetchConversations$Query$FetchConversations$Match$Matchee$Gallery
                  .fromJson(json['gallery'] as Map<String, dynamic>);

Map<String,
    dynamic> _$FetchConversations$Query$FetchConversations$Match$MatcheeToJson(
        FetchConversations$Query$FetchConversations$Match$Matchee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'onlineStatus': instance.onlineStatus,
      'firstName': instance.firstName,
      'gallery': instance.gallery?.toJson(),
    };

FetchConversations$Query$FetchConversations$Match
    _$FetchConversations$Query$FetchConversations$MatchFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$Match()
          ..id = json['id'] as String
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..user =
              FetchConversations$Query$FetchConversations$Match$User.fromJson(
                  json['user'] as Map<String, dynamic>)
          ..matchee = FetchConversations$Query$FetchConversations$Match$Matchee
              .fromJson(json['matchee'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchConversations$Query$FetchConversations$MatchToJson(
        FetchConversations$Query$FetchConversations$Match instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'user': instance.user.toJson(),
      'matchee': instance.matchee.toJson(),
    };

FetchConversations$Query$FetchConversations$LastMessage$Recommendation$Anime
    _$FetchConversations$Query$FetchConversations$LastMessage$Recommendation$AnimeFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$LastMessage$Recommendation$Anime()
          ..title = json['title'] as String?
          ..cover = json['cover'] as String?;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$LastMessage$Recommendation$AnimeToJson(
            FetchConversations$Query$FetchConversations$LastMessage$Recommendation$Anime
                instance) =>
        <String, dynamic>{
          'title': instance.title,
          'cover': instance.cover,
        };

FetchConversations$Query$FetchConversations$LastMessage$Recommendation
    _$FetchConversations$Query$FetchConversations$LastMessage$RecommendationFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$LastMessage$Recommendation()
          ..userId = (json['userId'] as num).toInt()
          ..recommendeeId = (json['recommendeeId'] as num).toInt()
          ..anime = json['anime'] == null
              ? null
              : FetchConversations$Query$FetchConversations$LastMessage$Recommendation$Anime
                  .fromJson(json['anime'] as Map<String, dynamic>);

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$LastMessage$RecommendationToJson(
            FetchConversations$Query$FetchConversations$LastMessage$Recommendation
                instance) =>
        <String, dynamic>{
          'userId': instance.userId,
          'recommendeeId': instance.recommendeeId,
          'anime': instance.anime?.toJson(),
        };

FetchConversations$Query$FetchConversations$LastMessage$Sticker
    _$FetchConversations$Query$FetchConversations$LastMessage$StickerFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$LastMessage$Sticker()
          ..id = json['id'] as String
          ..url = json['url'] as String;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$LastMessage$StickerToJson(
            FetchConversations$Query$FetchConversations$LastMessage$Sticker
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'url': instance.url,
        };

FetchConversations$Query$FetchConversations$LastMessage
    _$FetchConversations$Query$FetchConversations$LastMessageFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations$LastMessage()
          ..attachment = json['attachment'] as String?
          ..attachmentType = json['attachmentType'] as String?
          ..content = json['content'] as String?
          ..createdAt = fromGraphQLISO8601DateTimeToDartDateTime(
              json['createdAt'] as String)
          ..reaction = json['reaction'] as String?
          ..read = json['read'] as bool?
          ..senderId = (json['senderId'] as num?)?.toInt()
          ..recommendation = json['recommendation'] == null
              ? null
              : FetchConversations$Query$FetchConversations$LastMessage$Recommendation
                  .fromJson(json['recommendation'] as Map<String, dynamic>)
          ..sticker = json['sticker'] == null
              ? null
              : FetchConversations$Query$FetchConversations$LastMessage$Sticker
                  .fromJson(json['sticker'] as Map<String, dynamic>);

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$LastMessageToJson(
            FetchConversations$Query$FetchConversations$LastMessage instance) =>
        <String, dynamic>{
          'attachment': instance.attachment,
          'attachmentType': instance.attachmentType,
          'content': instance.content,
          'createdAt':
              fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
          'reaction': instance.reaction,
          'read': instance.read,
          'senderId': instance.senderId,
          'recommendation': instance.recommendation?.toJson(),
          'sticker': instance.sticker?.toJson(),
        };

FetchConversations$Query$FetchConversations
    _$FetchConversations$Query$FetchConversationsFromJson(
            Map<String, dynamic> json) =>
        FetchConversations$Query$FetchConversations()
          ..id = json['id'] as String
          ..match = json['match'] == null
              ? null
              : FetchConversations$Query$FetchConversations$Match.fromJson(
                  json['match'] as Map<String, dynamic>)
          ..lastMessage = json['lastMessage'] == null
              ? null
              : FetchConversations$Query$FetchConversations$LastMessage
                  .fromJson(json['lastMessage'] as Map<String, dynamic>)
          ..unreadCount = (json['unreadCount'] as num?)?.toInt();

Map<String, dynamic> _$FetchConversations$Query$FetchConversationsToJson(
        FetchConversations$Query$FetchConversations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'match': instance.match?.toJson(),
      'lastMessage': instance.lastMessage?.toJson(),
      'unreadCount': instance.unreadCount,
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

FetchUserAvatars$Query$FetchUser$Avatars
    _$FetchUserAvatars$Query$FetchUser$AvatarsFromJson(
            Map<String, dynamic> json) =>
        FetchUserAvatars$Query$FetchUser$Avatars()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..guid = json['guid'] as String?
          ..gender = json['gender'] as String?
          ..photoUrl = json['photoUrl'] as String?
          ..thumbnailUrl = json['thumbnailUrl'] as String?
          ..productId = json['productId'] as String?
          ..isDefault = json['isDefault'] as bool?;

Map<String, dynamic> _$FetchUserAvatars$Query$FetchUser$AvatarsToJson(
        FetchUserAvatars$Query$FetchUser$Avatars instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guid': instance.guid,
      'gender': instance.gender,
      'photoUrl': instance.photoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'productId': instance.productId,
      'isDefault': instance.isDefault,
    };

FetchUserAvatars$Query$FetchUser _$FetchUserAvatars$Query$FetchUserFromJson(
        Map<String, dynamic> json) =>
    FetchUserAvatars$Query$FetchUser()
      ..avatars = (json['avatars'] as List<dynamic>?)
          ?.map((e) => FetchUserAvatars$Query$FetchUser$Avatars.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchUserAvatars$Query$FetchUserToJson(
        FetchUserAvatars$Query$FetchUser instance) =>
    <String, dynamic>{
      'avatars': instance.avatars?.map((e) => e.toJson()).toList(),
    };

FetchUserAvatars$Query _$FetchUserAvatars$QueryFromJson(
        Map<String, dynamic> json) =>
    FetchUserAvatars$Query()
      ..fetchUser = FetchUserAvatars$Query$FetchUser.fromJson(
          json['fetchUser'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchUserAvatars$QueryToJson(
        FetchUserAvatars$Query instance) =>
    <String, dynamic>{
      'fetchUser': instance.fetchUser.toJson(),
    };

FetchVerifyRequests$Query$FetchVerifyRequests
    _$FetchVerifyRequests$Query$FetchVerifyRequestsFromJson(
            Map<String, dynamic> json) =>
        FetchVerifyRequests$Query$FetchVerifyRequests()
          ..userId = (json['userId'] as num).toInt()
          ..status = json['status'] as String;

Map<String, dynamic> _$FetchVerifyRequests$Query$FetchVerifyRequestsToJson(
        FetchVerifyRequests$Query$FetchVerifyRequests instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'status': instance.status,
    };

FetchVerifyRequests$Query _$FetchVerifyRequests$QueryFromJson(
        Map<String, dynamic> json) =>
    FetchVerifyRequests$Query()
      ..fetchVerifyRequests = (json['fetchVerifyRequests'] as List<dynamic>)
          .map((e) => FetchVerifyRequests$Query$FetchVerifyRequests.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchVerifyRequests$QueryToJson(
        FetchVerifyRequests$Query instance) =>
    <String, dynamic>{
      'fetchVerifyRequests':
          instance.fetchVerifyRequests.map((e) => e.toJson()).toList(),
    };

FetchAvatars$Query$FetchAvatars _$FetchAvatars$Query$FetchAvatarsFromJson(
        Map<String, dynamic> json) =>
    FetchAvatars$Query$FetchAvatars()
      ..name = json['name'] as String?
      ..guid = json['guid'] as String?
      ..userId = (json['userId'] as num?)?.toInt()
      ..photoUrl = json['photoUrl'] as String?
      ..thumbnailUrl = json['thumbnailUrl'] as String?
      ..productId = json['productId'] as String?
      ..createdAt =
          fromGraphQLISO8601DateTimeToDartDateTime(json['createdAt'] as String)
      ..isDefault = json['isDefault'] as bool?;

Map<String, dynamic> _$FetchAvatars$Query$FetchAvatarsToJson(
        FetchAvatars$Query$FetchAvatars instance) =>
    <String, dynamic>{
      'name': instance.name,
      'guid': instance.guid,
      'userId': instance.userId,
      'photoUrl': instance.photoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'productId': instance.productId,
      'createdAt': fromDartDateTimeToGraphQLISO8601DateTime(instance.createdAt),
      'isDefault': instance.isDefault,
    };

FetchAvatars$Query _$FetchAvatars$QueryFromJson(Map<String, dynamic> json) =>
    FetchAvatars$Query()
      ..fetchAvatars = (json['fetchAvatars'] as List<dynamic>)
          .map((e) => FetchAvatars$Query$FetchAvatars.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchAvatars$QueryToJson(FetchAvatars$Query instance) =>
    <String, dynamic>{
      'fetchAvatars': instance.fetchAvatars.map((e) => e.toJson()).toList(),
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

GrantUserAvatarArguments _$GrantUserAvatarArgumentsFromJson(
        Map<String, dynamic> json) =>
    GrantUserAvatarArguments(
      input:
          GrantUserAvatarInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GrantUserAvatarArgumentsToJson(
        GrantUserAvatarArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

MarkAvatarAsDefaultArguments _$MarkAvatarAsDefaultArgumentsFromJson(
        Map<String, dynamic> json) =>
    MarkAvatarAsDefaultArguments(
      input: MarkAvatarDefaultInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarkAvatarAsDefaultArgumentsToJson(
        MarkAvatarAsDefaultArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
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

StartVideoMatchmakingArguments _$StartVideoMatchmakingArgumentsFromJson(
        Map<String, dynamic> json) =>
    StartVideoMatchmakingArguments(
      input: StartVideoMatchmakingInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StartVideoMatchmakingArgumentsToJson(
        StartVideoMatchmakingArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
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

AddDeviceTokenArguments _$AddDeviceTokenArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddDeviceTokenArguments(
      input:
          AddDeviceTokenInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddDeviceTokenArgumentsToJson(
        AddDeviceTokenArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

RemoveDeviceTokenArguments _$RemoveDeviceTokenArgumentsFromJson(
        Map<String, dynamic> json) =>
    RemoveDeviceTokenArguments(
      input: RemoveDeviceTokenInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoveDeviceTokenArgumentsToJson(
        RemoveDeviceTokenArguments instance) =>
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

SendMessageArguments _$SendMessageArgumentsFromJson(
        Map<String, dynamic> json) =>
    SendMessageArguments(
      input: SendMessageInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendMessageArgumentsToJson(
        SendMessageArguments instance) =>
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

UpdateMessageArguments _$UpdateMessageArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdateMessageArguments(
      input: UpdateMessageInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateMessageArgumentsToJson(
        UpdateMessageArguments instance) =>
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

ReportUserArguments _$ReportUserArgumentsFromJson(Map<String, dynamic> json) =>
    ReportUserArguments(
      input: ReportUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportUserArgumentsToJson(
        ReportUserArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

StopVideoMatchmakingArguments _$StopVideoMatchmakingArgumentsFromJson(
        Map<String, dynamic> json) =>
    StopVideoMatchmakingArguments(
      input: StopVideoMatchmakingInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StopVideoMatchmakingArgumentsToJson(
        StopVideoMatchmakingArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

GetDistanceBetweenUsersArguments _$GetDistanceBetweenUsersArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetDistanceBetweenUsersArguments(
      input: GetDistanceBetweenUsersInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetDistanceBetweenUsersArgumentsToJson(
        GetDistanceBetweenUsersArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

AcceptVideoChatArguments _$AcceptVideoChatArgumentsFromJson(
        Map<String, dynamic> json) =>
    AcceptVideoChatArguments(
      input:
          AcceptVideoCallInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AcceptVideoChatArgumentsToJson(
        AcceptVideoChatArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

AddFavoriteMusicArguments _$AddFavoriteMusicArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddFavoriteMusicArguments(
      input:
          AddFavoriteMusicInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddFavoriteMusicArgumentsToJson(
        AddFavoriteMusicArguments instance) =>
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

LikeUserArguments _$LikeUserArgumentsFromJson(Map<String, dynamic> json) =>
    LikeUserArguments(
      input: LikeUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikeUserArgumentsToJson(LikeUserArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

GrantUserPremiumArguments _$GrantUserPremiumArgumentsFromJson(
        Map<String, dynamic> json) =>
    GrantUserPremiumArguments(
      input:
          GrantUserPremiumInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GrantUserPremiumArgumentsToJson(
        GrantUserPremiumArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

UnmatchUserArguments _$UnmatchUserArgumentsFromJson(
        Map<String, dynamic> json) =>
    UnmatchUserArguments(
      input: UnmatchUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnmatchUserArgumentsToJson(
        UnmatchUserArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

DeleteUserArguments _$DeleteUserArgumentsFromJson(Map<String, dynamic> json) =>
    DeleteUserArguments(
      input: DeleteUserInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteUserArgumentsToJson(
        DeleteUserArguments instance) =>
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

SendVideoChatRequestArguments _$SendVideoChatRequestArgumentsFromJson(
        Map<String, dynamic> json) =>
    SendVideoChatRequestArguments(
      input: SendVideoChatRequestInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendVideoChatRequestArgumentsToJson(
        SendVideoChatRequestArguments instance) =>
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

UndoLikeArguments _$UndoLikeArgumentsFromJson(Map<String, dynamic> json) =>
    UndoLikeArguments(
      input: UndoLikeInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UndoLikeArgumentsToJson(UndoLikeArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

FindVideoChatMatchArguments _$FindVideoChatMatchArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindVideoChatMatchArguments(
      input: FindVideoChatMatchInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FindVideoChatMatchArgumentsToJson(
        FindVideoChatMatchArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

AddSuperLikesArguments _$AddSuperLikesArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddSuperLikesArguments(
      input: AddSuperLikesInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddSuperLikesArgumentsToJson(
        AddSuperLikesArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

DenyVideoCallArguments _$DenyVideoCallArgumentsFromJson(
        Map<String, dynamic> json) =>
    DenyVideoCallArguments(
      input: DenyVideoCallInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DenyVideoCallArgumentsToJson(
        DenyVideoCallArguments instance) =>
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

DeleteFavoriteMusicArguments _$DeleteFavoriteMusicArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeleteFavoriteMusicArguments(
      input: DeleteFavoriteMusicInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteFavoriteMusicArgumentsToJson(
        DeleteFavoriteMusicArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

FetchLobbyCountArguments _$FetchLobbyCountArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchLobbyCountArguments(
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$FetchLobbyCountArgumentsToJson(
        FetchLobbyCountArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

FetchMessagesArguments _$FetchMessagesArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchMessagesArguments(
      conversationId: json['conversationId'] as String,
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FetchMessagesArgumentsToJson(
        FetchMessagesArguments instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'page': instance.page,
    };

FetchFeedArguments _$FetchFeedArgumentsFromJson(Map<String, dynamic> json) =>
    FetchFeedArguments(
      params: FetchFeedInput.fromJson(json['params'] as Map<String, dynamic>),
      otherUserId: json['otherUserId'] as String,
    );

Map<String, dynamic> _$FetchFeedArgumentsToJson(FetchFeedArguments instance) =>
    <String, dynamic>{
      'params': instance.params.toJson(),
      'otherUserId': instance.otherUserId,
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

FetchUserAvatarsArguments _$FetchUserAvatarsArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchUserAvatarsArguments(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FetchUserAvatarsArgumentsToJson(
        FetchUserAvatarsArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

FetchVerifyRequestsArguments _$FetchVerifyRequestsArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchVerifyRequestsArguments(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FetchVerifyRequestsArgumentsToJson(
        FetchVerifyRequestsArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

FetchAvatarsArguments _$FetchAvatarsArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchAvatarsArguments(
      query: json['query'] as String?,
      page: (json['page'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$FetchAvatarsArgumentsToJson(
        FetchAvatarsArguments instance) =>
    <String, dynamic>{
      'query': instance.query,
      'page': instance.page,
      'userId': instance.userId,
      'gender': instance.gender,
    };

FetchStickersArguments _$FetchStickersArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchStickersArguments(
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$FetchStickersArgumentsToJson(
        FetchStickersArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
    };
