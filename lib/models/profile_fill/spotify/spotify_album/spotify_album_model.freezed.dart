// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_album_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyAlbumModel _$SpotifyAlbumModelFromJson(Map<String, dynamic> json) {
  return _SpotifyAlbumModel.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAlbumModel {
  String get name => throw _privateConstructorUsedError;
  List<SpotifyImageModel>? get images => throw _privateConstructorUsedError;
  List<SpotifyArtistModel> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyAlbumModelCopyWith<SpotifyAlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAlbumModelCopyWith<$Res> {
  factory $SpotifyAlbumModelCopyWith(
          SpotifyAlbumModel value, $Res Function(SpotifyAlbumModel) then) =
      _$SpotifyAlbumModelCopyWithImpl<$Res, SpotifyAlbumModel>;
  @useResult
  $Res call(
      {String name,
      List<SpotifyImageModel>? images,
      List<SpotifyArtistModel> artists});
}

/// @nodoc
class _$SpotifyAlbumModelCopyWithImpl<$Res, $Val extends SpotifyAlbumModel>
    implements $SpotifyAlbumModelCopyWith<$Res> {
  _$SpotifyAlbumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = freezed,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImageModel>?,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtistModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAlbumModelImplCopyWith<$Res>
    implements $SpotifyAlbumModelCopyWith<$Res> {
  factory _$$SpotifyAlbumModelImplCopyWith(_$SpotifyAlbumModelImpl value,
          $Res Function(_$SpotifyAlbumModelImpl) then) =
      __$$SpotifyAlbumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<SpotifyImageModel>? images,
      List<SpotifyArtistModel> artists});
}

/// @nodoc
class __$$SpotifyAlbumModelImplCopyWithImpl<$Res>
    extends _$SpotifyAlbumModelCopyWithImpl<$Res, _$SpotifyAlbumModelImpl>
    implements _$$SpotifyAlbumModelImplCopyWith<$Res> {
  __$$SpotifyAlbumModelImplCopyWithImpl(_$SpotifyAlbumModelImpl _value,
      $Res Function(_$SpotifyAlbumModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = freezed,
    Object? artists = null,
  }) {
    return _then(_$SpotifyAlbumModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImageModel>?,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtistModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyAlbumModelImpl implements _SpotifyAlbumModel {
  const _$SpotifyAlbumModelImpl(
      {required this.name,
      final List<SpotifyImageModel>? images,
      required final List<SpotifyArtistModel> artists})
      : _images = images,
        _artists = artists;

  factory _$SpotifyAlbumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAlbumModelImplFromJson(json);

  @override
  final String name;
  final List<SpotifyImageModel>? _images;
  @override
  List<SpotifyImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SpotifyArtistModel> _artists;
  @override
  List<SpotifyArtistModel> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'SpotifyAlbumModel(name: $name, images: $images, artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAlbumModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAlbumModelImplCopyWith<_$SpotifyAlbumModelImpl> get copyWith =>
      __$$SpotifyAlbumModelImplCopyWithImpl<_$SpotifyAlbumModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAlbumModelImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAlbumModel implements SpotifyAlbumModel {
  const factory _SpotifyAlbumModel(
          {required final String name,
          final List<SpotifyImageModel>? images,
          required final List<SpotifyArtistModel> artists}) =
      _$SpotifyAlbumModelImpl;

  factory _SpotifyAlbumModel.fromJson(Map<String, dynamic> json) =
      _$SpotifyAlbumModelImpl.fromJson;

  @override
  String get name;
  @override
  List<SpotifyImageModel>? get images;
  @override
  List<SpotifyArtistModel> get artists;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyAlbumModelImplCopyWith<_$SpotifyAlbumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
