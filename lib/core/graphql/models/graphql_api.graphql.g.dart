// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
          ..musicType = json['musicType'] as int?;

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
      ..gender = json['gender'] as int?
      ..desiredGender = json['desiredGender'] as int?
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
          ..url = json['url'] as String;

Map<String, dynamic> _$FetchUser$Query$FetchUser$Gallery$PhotosToJson(
        FetchUser$Query$FetchUser$Gallery$Photos instance) =>
    <String, dynamic>{
      'order': instance.order,
      'url': instance.url,
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
          ..musicType = json['musicType'] as int?
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
      ..gender = json['gender'] as int?
      ..desiredGender = json['desiredGender'] as int?
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
      page: json['page'] as int,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$AnimeInputToJson(AnimeInput instance) =>
    <String, dynamic>{
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
          ..reaction = json['reaction'] as int?
          ..sticker =
              FetchConversations$Query$FetchConversations$Messages$Sticker
                  .fromJson(json['sticker'] as Map<String, dynamic>)
          ..attachment = json['attachment'] as String;

Map<String, dynamic>
    _$FetchConversations$Query$FetchConversations$MessagesToJson(
            FetchConversations$Query$FetchConversations$Messages instance) =>
        <String, dynamic>{
          'content': instance.content,
          'senderId': instance.senderId,
          'reaction': instance.reaction,
          'sticker': instance.sticker.toJson(),
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
