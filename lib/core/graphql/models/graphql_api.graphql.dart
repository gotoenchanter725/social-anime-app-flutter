// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:senpai/core/graphql/scalars/datetime_scalar.dart';
part 'graphql_api.graphql.g.dart';

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

  int? musicType;

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

  int? gender;

  int? desiredGender;

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

  @override
  List<Object?> get props => [order, url];
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

  int? musicType;

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

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable)
  DateTime? birthday;

  String? bio;

  int? gender;

  int? desiredGender;

  late String phone;

  late bool verified;

  String? school;

  String? occupation;

  String? displayCity;

  String? displayState;

  String? spotifyEmail;

  List<FetchUser$Query$FetchUser$Matches>? matches;

  FetchUser$Query$FetchUser$Gallery? gallery;

  List<FetchUser$Query$FetchUser$Animes>? animes;

  List<FetchUser$Query$FetchUser$FavoriteMusic>? favoriteMusic;

  @override
  List<Object?> get props => [
        id,
        role,
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
        matches,
        gallery,
        animes,
        favoriteMusic
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
    required this.page,
    this.title,
  });

  factory AnimeInput.fromJson(Map<String, dynamic> json) =>
      _$AnimeInputFromJson(json);

  late int page;

  String? title;

  @override
  List<Object?> get props => [page, title];
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

  int? reaction;

  late FetchConversations$Query$FetchConversations$Messages$Sticker sticker;

  late String attachment;

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
