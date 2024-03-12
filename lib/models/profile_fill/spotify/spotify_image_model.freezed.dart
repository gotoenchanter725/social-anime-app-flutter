// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyImageModel _$SpotifyImageModelFromJson(Map<String, dynamic> json) {
  return _SpotifyImageModel.fromJson(json);
}

/// @nodoc
mixin _$SpotifyImageModel {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyImageModelCopyWith<SpotifyImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyImageModelCopyWith<$Res> {
  factory $SpotifyImageModelCopyWith(
          SpotifyImageModel value, $Res Function(SpotifyImageModel) then) =
      _$SpotifyImageModelCopyWithImpl<$Res, SpotifyImageModel>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$SpotifyImageModelCopyWithImpl<$Res, $Val extends SpotifyImageModel>
    implements $SpotifyImageModelCopyWith<$Res> {
  _$SpotifyImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyImageModelImplCopyWith<$Res>
    implements $SpotifyImageModelCopyWith<$Res> {
  factory _$$SpotifyImageModelImplCopyWith(_$SpotifyImageModelImpl value,
          $Res Function(_$SpotifyImageModelImpl) then) =
      __$$SpotifyImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$SpotifyImageModelImplCopyWithImpl<$Res>
    extends _$SpotifyImageModelCopyWithImpl<$Res, _$SpotifyImageModelImpl>
    implements _$$SpotifyImageModelImplCopyWith<$Res> {
  __$$SpotifyImageModelImplCopyWithImpl(_$SpotifyImageModelImpl _value,
      $Res Function(_$SpotifyImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$SpotifyImageModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyImageModelImpl implements _SpotifyImageModel {
  const _$SpotifyImageModelImpl({required this.url});

  factory _$SpotifyImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyImageModelImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'SpotifyImageModel(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyImageModelImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyImageModelImplCopyWith<_$SpotifyImageModelImpl> get copyWith =>
      __$$SpotifyImageModelImplCopyWithImpl<_$SpotifyImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyImageModelImplToJson(
      this,
    );
  }
}

abstract class _SpotifyImageModel implements SpotifyImageModel {
  const factory _SpotifyImageModel({required final String url}) =
      _$SpotifyImageModelImpl;

  factory _SpotifyImageModel.fromJson(Map<String, dynamic> json) =
      _$SpotifyImageModelImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyImageModelImplCopyWith<_$SpotifyImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
