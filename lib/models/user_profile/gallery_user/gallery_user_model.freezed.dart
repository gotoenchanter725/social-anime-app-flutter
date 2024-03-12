// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GalleryUserModel _$GalleryUserModelFromJson(Map<String, dynamic> json) {
  return _GalleryUserModel.fromJson(json);
}

/// @nodoc
mixin _$GalleryUserModel {
  List<UploadPhotoModel> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryUserModelCopyWith<GalleryUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryUserModelCopyWith<$Res> {
  factory $GalleryUserModelCopyWith(
          GalleryUserModel value, $Res Function(GalleryUserModel) then) =
      _$GalleryUserModelCopyWithImpl<$Res, GalleryUserModel>;
  @useResult
  $Res call({List<UploadPhotoModel> photos});
}

/// @nodoc
class _$GalleryUserModelCopyWithImpl<$Res, $Val extends GalleryUserModel>
    implements $GalleryUserModelCopyWith<$Res> {
  _$GalleryUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UploadPhotoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryUserModelImplCopyWith<$Res>
    implements $GalleryUserModelCopyWith<$Res> {
  factory _$$GalleryUserModelImplCopyWith(_$GalleryUserModelImpl value,
          $Res Function(_$GalleryUserModelImpl) then) =
      __$$GalleryUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UploadPhotoModel> photos});
}

/// @nodoc
class __$$GalleryUserModelImplCopyWithImpl<$Res>
    extends _$GalleryUserModelCopyWithImpl<$Res, _$GalleryUserModelImpl>
    implements _$$GalleryUserModelImplCopyWith<$Res> {
  __$$GalleryUserModelImplCopyWithImpl(_$GalleryUserModelImpl _value,
      $Res Function(_$GalleryUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$GalleryUserModelImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UploadPhotoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryUserModelImpl implements _GalleryUserModel {
  const _$GalleryUserModelImpl({required final List<UploadPhotoModel> photos})
      : _photos = photos;

  factory _$GalleryUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryUserModelImplFromJson(json);

  final List<UploadPhotoModel> _photos;
  @override
  List<UploadPhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'GalleryUserModel(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryUserModelImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryUserModelImplCopyWith<_$GalleryUserModelImpl> get copyWith =>
      __$$GalleryUserModelImplCopyWithImpl<_$GalleryUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryUserModelImplToJson(
      this,
    );
  }
}

abstract class _GalleryUserModel implements GalleryUserModel {
  const factory _GalleryUserModel(
      {required final List<UploadPhotoModel> photos}) = _$GalleryUserModelImpl;

  factory _GalleryUserModel.fromJson(Map<String, dynamic> json) =
      _$GalleryUserModelImpl.fromJson;

  @override
  List<UploadPhotoModel> get photos;
  @override
  @JsonKey(ignore: true)
  _$$GalleryUserModelImplCopyWith<_$GalleryUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
