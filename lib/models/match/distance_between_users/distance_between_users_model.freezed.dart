// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance_between_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistanceBetweenUsersModel _$DistanceBetweenUsersModelFromJson(
    Map<String, dynamic> json) {
  return _DistanceBetweenUsersModel.fromJson(json);
}

/// @nodoc
mixin _$DistanceBetweenUsersModel {
  int get mi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistanceBetweenUsersModelCopyWith<DistanceBetweenUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceBetweenUsersModelCopyWith<$Res> {
  factory $DistanceBetweenUsersModelCopyWith(DistanceBetweenUsersModel value,
          $Res Function(DistanceBetweenUsersModel) then) =
      _$DistanceBetweenUsersModelCopyWithImpl<$Res, DistanceBetweenUsersModel>;
  @useResult
  $Res call({int mi});
}

/// @nodoc
class _$DistanceBetweenUsersModelCopyWithImpl<$Res,
        $Val extends DistanceBetweenUsersModel>
    implements $DistanceBetweenUsersModelCopyWith<$Res> {
  _$DistanceBetweenUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mi = null,
  }) {
    return _then(_value.copyWith(
      mi: null == mi
          ? _value.mi
          : mi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistanceBetweenUsersModelCopyWith<$Res>
    implements $DistanceBetweenUsersModelCopyWith<$Res> {
  factory _$$_DistanceBetweenUsersModelCopyWith(
          _$_DistanceBetweenUsersModel value,
          $Res Function(_$_DistanceBetweenUsersModel) then) =
      __$$_DistanceBetweenUsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int mi});
}

/// @nodoc
class __$$_DistanceBetweenUsersModelCopyWithImpl<$Res>
    extends _$DistanceBetweenUsersModelCopyWithImpl<$Res,
        _$_DistanceBetweenUsersModel>
    implements _$$_DistanceBetweenUsersModelCopyWith<$Res> {
  __$$_DistanceBetweenUsersModelCopyWithImpl(
      _$_DistanceBetweenUsersModel _value,
      $Res Function(_$_DistanceBetweenUsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mi = null,
  }) {
    return _then(_$_DistanceBetweenUsersModel(
      mi: null == mi
          ? _value.mi
          : mi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistanceBetweenUsersModel implements _DistanceBetweenUsersModel {
  const _$_DistanceBetweenUsersModel({required this.mi});

  factory _$_DistanceBetweenUsersModel.fromJson(Map<String, dynamic> json) =>
      _$$_DistanceBetweenUsersModelFromJson(json);

  @override
  final int mi;

  @override
  String toString() {
    return 'DistanceBetweenUsersModel(mi: $mi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistanceBetweenUsersModel &&
            (identical(other.mi, mi) || other.mi == mi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistanceBetweenUsersModelCopyWith<_$_DistanceBetweenUsersModel>
      get copyWith => __$$_DistanceBetweenUsersModelCopyWithImpl<
          _$_DistanceBetweenUsersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistanceBetweenUsersModelToJson(
      this,
    );
  }
}

abstract class _DistanceBetweenUsersModel implements DistanceBetweenUsersModel {
  const factory _DistanceBetweenUsersModel({required final int mi}) =
      _$_DistanceBetweenUsersModel;

  factory _DistanceBetweenUsersModel.fromJson(Map<String, dynamic> json) =
      _$_DistanceBetweenUsersModel.fromJson;

  @override
  int get mi;
  @override
  @JsonKey(ignore: true)
  _$$_DistanceBetweenUsersModelCopyWith<_$_DistanceBetweenUsersModel>
      get copyWith => throw _privateConstructorUsedError;
}
