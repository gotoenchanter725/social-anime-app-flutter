// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_artist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyArtistModel _$SpotifyArtistModelFromJson(Map<String, dynamic> json) {
  return _SpotifyArtistModel.fromJson(json);
}

/// @nodoc
mixin _$SpotifyArtistModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SpotifyImageModel>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyArtistModelCopyWith<SpotifyArtistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyArtistModelCopyWith<$Res> {
  factory $SpotifyArtistModelCopyWith(
          SpotifyArtistModel value, $Res Function(SpotifyArtistModel) then) =
      _$SpotifyArtistModelCopyWithImpl<$Res, SpotifyArtistModel>;
  @useResult
  $Res call({String id, String name, List<SpotifyImageModel>? images});
}

/// @nodoc
class _$SpotifyArtistModelCopyWithImpl<$Res, $Val extends SpotifyArtistModel>
    implements $SpotifyArtistModelCopyWith<$Res> {
  _$SpotifyArtistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyArtistModelImplCopyWith<$Res>
    implements $SpotifyArtistModelCopyWith<$Res> {
  factory _$$SpotifyArtistModelImplCopyWith(_$SpotifyArtistModelImpl value,
          $Res Function(_$SpotifyArtistModelImpl) then) =
      __$$SpotifyArtistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<SpotifyImageModel>? images});
}

/// @nodoc
class __$$SpotifyArtistModelImplCopyWithImpl<$Res>
    extends _$SpotifyArtistModelCopyWithImpl<$Res, _$SpotifyArtistModelImpl>
    implements _$$SpotifyArtistModelImplCopyWith<$Res> {
  __$$SpotifyArtistModelImplCopyWithImpl(_$SpotifyArtistModelImpl _value,
      $Res Function(_$SpotifyArtistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
  }) {
    return _then(_$SpotifyArtistModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyArtistModelImpl implements _SpotifyArtistModel {
  const _$SpotifyArtistModelImpl(
      {required this.id,
      required this.name,
      final List<SpotifyImageModel>? images})
      : _images = images;

  factory _$SpotifyArtistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyArtistModelImplFromJson(json);

  @override
  final String id;
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

  @override
  String toString() {
    return 'SpotifyArtistModel(id: $id, name: $name, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyArtistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyArtistModelImplCopyWith<_$SpotifyArtistModelImpl> get copyWith =>
      __$$SpotifyArtistModelImplCopyWithImpl<_$SpotifyArtistModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyArtistModelImplToJson(
      this,
    );
  }
}

abstract class _SpotifyArtistModel implements SpotifyArtistModel {
  const factory _SpotifyArtistModel(
      {required final String id,
      required final String name,
      final List<SpotifyImageModel>? images}) = _$SpotifyArtistModelImpl;

  factory _SpotifyArtistModel.fromJson(Map<String, dynamic> json) =
      _$SpotifyArtistModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SpotifyImageModel>? get images;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyArtistModelImplCopyWith<_$SpotifyArtistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
