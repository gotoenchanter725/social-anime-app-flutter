// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorite_music_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoriteMusicModel _$UserFavoriteMusicModelFromJson(
    Map<String, dynamic> json) {
  return _UserFavoriteMusicModel.fromJson(json);
}

/// @nodoc
mixin _$UserFavoriteMusicModel {
  String get id => throw _privateConstructorUsedError;
  String get coverUrl => throw _privateConstructorUsedError;
  String get musicType => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  String? get trackName => throw _privateConstructorUsedError;
  String? get spotifyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoriteMusicModelCopyWith<UserFavoriteMusicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteMusicModelCopyWith<$Res> {
  factory $UserFavoriteMusicModelCopyWith(UserFavoriteMusicModel value,
          $Res Function(UserFavoriteMusicModel) then) =
      _$UserFavoriteMusicModelCopyWithImpl<$Res, UserFavoriteMusicModel>;
  @useResult
  $Res call(
      {String id,
      String coverUrl,
      String musicType,
      String? artistName,
      String? trackName,
      String? spotifyId});
}

/// @nodoc
class _$UserFavoriteMusicModelCopyWithImpl<$Res,
        $Val extends UserFavoriteMusicModel>
    implements $UserFavoriteMusicModelCopyWith<$Res> {
  _$UserFavoriteMusicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coverUrl = null,
    Object? musicType = null,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? spotifyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      musicType: null == musicType
          ? _value.musicType
          : musicType // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      spotifyId: freezed == spotifyId
          ? _value.spotifyId
          : spotifyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoriteMusicModelImplCopyWith<$Res>
    implements $UserFavoriteMusicModelCopyWith<$Res> {
  factory _$$UserFavoriteMusicModelImplCopyWith(
          _$UserFavoriteMusicModelImpl value,
          $Res Function(_$UserFavoriteMusicModelImpl) then) =
      __$$UserFavoriteMusicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String coverUrl,
      String musicType,
      String? artistName,
      String? trackName,
      String? spotifyId});
}

/// @nodoc
class __$$UserFavoriteMusicModelImplCopyWithImpl<$Res>
    extends _$UserFavoriteMusicModelCopyWithImpl<$Res,
        _$UserFavoriteMusicModelImpl>
    implements _$$UserFavoriteMusicModelImplCopyWith<$Res> {
  __$$UserFavoriteMusicModelImplCopyWithImpl(
      _$UserFavoriteMusicModelImpl _value,
      $Res Function(_$UserFavoriteMusicModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coverUrl = null,
    Object? musicType = null,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? spotifyId = freezed,
  }) {
    return _then(_$UserFavoriteMusicModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: null == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String,
      musicType: null == musicType
          ? _value.musicType
          : musicType // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      spotifyId: freezed == spotifyId
          ? _value.spotifyId
          : spotifyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoriteMusicModelImpl implements _UserFavoriteMusicModel {
  const _$UserFavoriteMusicModelImpl(
      {required this.id,
      required this.coverUrl,
      required this.musicType,
      this.artistName,
      this.trackName,
      this.spotifyId});

  factory _$UserFavoriteMusicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteMusicModelImplFromJson(json);

  @override
  final String id;
  @override
  final String coverUrl;
  @override
  final String musicType;
  @override
  final String? artistName;
  @override
  final String? trackName;
  @override
  final String? spotifyId;

  @override
  String toString() {
    return 'UserFavoriteMusicModel(id: $id, coverUrl: $coverUrl, musicType: $musicType, artistName: $artistName, trackName: $trackName, spotifyId: $spotifyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteMusicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.musicType, musicType) ||
                other.musicType == musicType) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.trackName, trackName) ||
                other.trackName == trackName) &&
            (identical(other.spotifyId, spotifyId) ||
                other.spotifyId == spotifyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, coverUrl, musicType, artistName, trackName, spotifyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteMusicModelImplCopyWith<_$UserFavoriteMusicModelImpl>
      get copyWith => __$$UserFavoriteMusicModelImplCopyWithImpl<
          _$UserFavoriteMusicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteMusicModelImplToJson(
      this,
    );
  }
}

abstract class _UserFavoriteMusicModel implements UserFavoriteMusicModel {
  const factory _UserFavoriteMusicModel(
      {required final String id,
      required final String coverUrl,
      required final String musicType,
      final String? artistName,
      final String? trackName,
      final String? spotifyId}) = _$UserFavoriteMusicModelImpl;

  factory _UserFavoriteMusicModel.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteMusicModelImpl.fromJson;

  @override
  String get id;
  @override
  String get coverUrl;
  @override
  String get musicType;
  @override
  String? get artistName;
  @override
  String? get trackName;
  @override
  String? get spotifyId;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoriteMusicModelImplCopyWith<_$UserFavoriteMusicModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
