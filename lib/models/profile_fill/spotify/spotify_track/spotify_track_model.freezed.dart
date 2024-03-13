// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyTrackModel _$SpotifyTrackModelFromJson(Map<String, dynamic> json) {
  return _SpotifyTrackModel.fromJson(json);
}

/// @nodoc
mixin _$SpotifyTrackModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  SpotifyAlbumModel get album => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyTrackModelCopyWith<SpotifyTrackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyTrackModelCopyWith<$Res> {
  factory $SpotifyTrackModelCopyWith(
          SpotifyTrackModel value, $Res Function(SpotifyTrackModel) then) =
      _$SpotifyTrackModelCopyWithImpl<$Res, SpotifyTrackModel>;
  @useResult
  $Res call({String id, String name, SpotifyAlbumModel album});

  $SpotifyAlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class _$SpotifyTrackModelCopyWithImpl<$Res, $Val extends SpotifyTrackModel>
    implements $SpotifyTrackModelCopyWith<$Res> {
  _$SpotifyTrackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? album = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbumModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpotifyAlbumModelCopyWith<$Res> get album {
    return $SpotifyAlbumModelCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyTrackModelImplCopyWith<$Res>
    implements $SpotifyTrackModelCopyWith<$Res> {
  factory _$$SpotifyTrackModelImplCopyWith(_$SpotifyTrackModelImpl value,
          $Res Function(_$SpotifyTrackModelImpl) then) =
      __$$SpotifyTrackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, SpotifyAlbumModel album});

  @override
  $SpotifyAlbumModelCopyWith<$Res> get album;
}

/// @nodoc
class __$$SpotifyTrackModelImplCopyWithImpl<$Res>
    extends _$SpotifyTrackModelCopyWithImpl<$Res, _$SpotifyTrackModelImpl>
    implements _$$SpotifyTrackModelImplCopyWith<$Res> {
  __$$SpotifyTrackModelImplCopyWithImpl(_$SpotifyTrackModelImpl _value,
      $Res Function(_$SpotifyTrackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? album = null,
  }) {
    return _then(_$SpotifyTrackModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbumModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyTrackModelImpl implements _SpotifyTrackModel {
  const _$SpotifyTrackModelImpl(
      {required this.id, required this.name, required this.album});

  factory _$SpotifyTrackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyTrackModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final SpotifyAlbumModel album;

  @override
  String toString() {
    return 'SpotifyTrackModel(id: $id, name: $name, album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyTrackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, album);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyTrackModelImplCopyWith<_$SpotifyTrackModelImpl> get copyWith =>
      __$$SpotifyTrackModelImplCopyWithImpl<_$SpotifyTrackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyTrackModelImplToJson(
      this,
    );
  }
}

abstract class _SpotifyTrackModel implements SpotifyTrackModel {
  const factory _SpotifyTrackModel(
      {required final String id,
      required final String name,
      required final SpotifyAlbumModel album}) = _$SpotifyTrackModelImpl;

  factory _SpotifyTrackModel.fromJson(Map<String, dynamic> json) =
      _$SpotifyTrackModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  SpotifyAlbumModel get album;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyTrackModelImplCopyWith<_$SpotifyTrackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
