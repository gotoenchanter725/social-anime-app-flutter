// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadPhotoModel _$UploadPhotoModelFromJson(Map<String, dynamic> json) {
  return _UploadPhotoModel.fromJson(json);
}

/// @nodoc
mixin _$UploadPhotoModel {
  String get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadPhotoModelCopyWith<UploadPhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotoModelCopyWith<$Res> {
  factory $UploadPhotoModelCopyWith(
          UploadPhotoModel value, $Res Function(UploadPhotoModel) then) =
      _$UploadPhotoModelCopyWithImpl<$Res, UploadPhotoModel>;
  @useResult
  $Res call({String id, String? url, int? order});
}

/// @nodoc
class _$UploadPhotoModelCopyWithImpl<$Res, $Val extends UploadPhotoModel>
    implements $UploadPhotoModelCopyWith<$Res> {
  _$UploadPhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadPhotoModelImplCopyWith<$Res>
    implements $UploadPhotoModelCopyWith<$Res> {
  factory _$$UploadPhotoModelImplCopyWith(_$UploadPhotoModelImpl value,
          $Res Function(_$UploadPhotoModelImpl) then) =
      __$$UploadPhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? url, int? order});
}

/// @nodoc
class __$$UploadPhotoModelImplCopyWithImpl<$Res>
    extends _$UploadPhotoModelCopyWithImpl<$Res, _$UploadPhotoModelImpl>
    implements _$$UploadPhotoModelImplCopyWith<$Res> {
  __$$UploadPhotoModelImplCopyWithImpl(_$UploadPhotoModelImpl _value,
      $Res Function(_$UploadPhotoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? order = freezed,
  }) {
    return _then(_$UploadPhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadPhotoModelImpl implements _UploadPhotoModel {
  const _$UploadPhotoModelImpl({required this.id, this.url, this.order});

  factory _$UploadPhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadPhotoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? url;
  @override
  final int? order;

  @override
  String toString() {
    return 'UploadPhotoModel(id: $id, url: $url, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPhotoModelImplCopyWith<_$UploadPhotoModelImpl> get copyWith =>
      __$$UploadPhotoModelImplCopyWithImpl<_$UploadPhotoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadPhotoModelImplToJson(
      this,
    );
  }
}

abstract class _UploadPhotoModel implements UploadPhotoModel {
  const factory _UploadPhotoModel(
      {required final String id,
      final String? url,
      final int? order}) = _$UploadPhotoModelImpl;

  factory _UploadPhotoModel.fromJson(Map<String, dynamic> json) =
      _$UploadPhotoModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get url;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$UploadPhotoModelImplCopyWith<_$UploadPhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
