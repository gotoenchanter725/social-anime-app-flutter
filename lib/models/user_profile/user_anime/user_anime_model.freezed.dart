// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAnimeModel _$UserAnimeModelFromJson(Map<String, dynamic> json) {
  return _UserAnimeModel.fromJson(json);
}

/// @nodoc
mixin _$UserAnimeModel {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnimeModelCopyWith<UserAnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnimeModelCopyWith<$Res> {
  factory $UserAnimeModelCopyWith(
          UserAnimeModel value, $Res Function(UserAnimeModel) then) =
      _$UserAnimeModelCopyWithImpl<$Res, UserAnimeModel>;
  @useResult
  $Res call({String id, String? title, String? cover});
}

/// @nodoc
class _$UserAnimeModelCopyWithImpl<$Res, $Val extends UserAnimeModel>
    implements $UserAnimeModelCopyWith<$Res> {
  _$UserAnimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAnimeModelImplCopyWith<$Res>
    implements $UserAnimeModelCopyWith<$Res> {
  factory _$$UserAnimeModelImplCopyWith(_$UserAnimeModelImpl value,
          $Res Function(_$UserAnimeModelImpl) then) =
      __$$UserAnimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? title, String? cover});
}

/// @nodoc
class __$$UserAnimeModelImplCopyWithImpl<$Res>
    extends _$UserAnimeModelCopyWithImpl<$Res, _$UserAnimeModelImpl>
    implements _$$UserAnimeModelImplCopyWith<$Res> {
  __$$UserAnimeModelImplCopyWithImpl(
      _$UserAnimeModelImpl _value, $Res Function(_$UserAnimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$UserAnimeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAnimeModelImpl implements _UserAnimeModel {
  const _$UserAnimeModelImpl({required this.id, this.title, this.cover});

  factory _$UserAnimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAnimeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? cover;

  @override
  String toString() {
    return 'UserAnimeModel(id: $id, title: $title, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAnimeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAnimeModelImplCopyWith<_$UserAnimeModelImpl> get copyWith =>
      __$$UserAnimeModelImplCopyWithImpl<_$UserAnimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAnimeModelImplToJson(
      this,
    );
  }
}

abstract class _UserAnimeModel implements UserAnimeModel {
  const factory _UserAnimeModel(
      {required final String id,
      final String? title,
      final String? cover}) = _$UserAnimeModelImpl;

  factory _UserAnimeModel.fromJson(Map<String, dynamic> json) =
      _$UserAnimeModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$UserAnimeModelImplCopyWith<_$UserAnimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
