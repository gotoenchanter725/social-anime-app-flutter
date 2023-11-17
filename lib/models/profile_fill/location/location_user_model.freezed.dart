// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationUserModel _$LocationUserModelFromJson(Map<String, dynamic> json) {
  return _LocationUserModel.fromJson(json);
}

/// @nodoc
mixin _$LocationUserModel {
  String get id => throw _privateConstructorUsedError;
  String? get lonlat => throw _privateConstructorUsedError;
  String? get displayCity => throw _privateConstructorUsedError;
  String? get displayState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationUserModelCopyWith<LocationUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationUserModelCopyWith<$Res> {
  factory $LocationUserModelCopyWith(
          LocationUserModel value, $Res Function(LocationUserModel) then) =
      _$LocationUserModelCopyWithImpl<$Res, LocationUserModel>;
  @useResult
  $Res call(
      {String id, String? lonlat, String? displayCity, String? displayState});
}

/// @nodoc
class _$LocationUserModelCopyWithImpl<$Res, $Val extends LocationUserModel>
    implements $LocationUserModelCopyWith<$Res> {
  _$LocationUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lonlat = freezed,
    Object? displayCity = freezed,
    Object? displayState = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lonlat: freezed == lonlat
          ? _value.lonlat
          : lonlat // ignore: cast_nullable_to_non_nullable
              as String?,
      displayCity: freezed == displayCity
          ? _value.displayCity
          : displayCity // ignore: cast_nullable_to_non_nullable
              as String?,
      displayState: freezed == displayState
          ? _value.displayState
          : displayState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationUserModelCopyWith<$Res>
    implements $LocationUserModelCopyWith<$Res> {
  factory _$$_LocationUserModelCopyWith(_$_LocationUserModel value,
          $Res Function(_$_LocationUserModel) then) =
      __$$_LocationUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? lonlat, String? displayCity, String? displayState});
}

/// @nodoc
class __$$_LocationUserModelCopyWithImpl<$Res>
    extends _$LocationUserModelCopyWithImpl<$Res, _$_LocationUserModel>
    implements _$$_LocationUserModelCopyWith<$Res> {
  __$$_LocationUserModelCopyWithImpl(
      _$_LocationUserModel _value, $Res Function(_$_LocationUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lonlat = freezed,
    Object? displayCity = freezed,
    Object? displayState = freezed,
  }) {
    return _then(_$_LocationUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lonlat: freezed == lonlat
          ? _value.lonlat
          : lonlat // ignore: cast_nullable_to_non_nullable
              as String?,
      displayCity: freezed == displayCity
          ? _value.displayCity
          : displayCity // ignore: cast_nullable_to_non_nullable
              as String?,
      displayState: freezed == displayState
          ? _value.displayState
          : displayState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationUserModel implements _LocationUserModel {
  const _$_LocationUserModel(
      {required this.id, this.lonlat, this.displayCity, this.displayState});

  factory _$_LocationUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationUserModelFromJson(json);

  @override
  final String id;
  @override
  final String? lonlat;
  @override
  final String? displayCity;
  @override
  final String? displayState;

  @override
  String toString() {
    return 'LocationUserModel(id: $id, lonlat: $lonlat, displayCity: $displayCity, displayState: $displayState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lonlat, lonlat) || other.lonlat == lonlat) &&
            (identical(other.displayCity, displayCity) ||
                other.displayCity == displayCity) &&
            (identical(other.displayState, displayState) ||
                other.displayState == displayState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, lonlat, displayCity, displayState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationUserModelCopyWith<_$_LocationUserModel> get copyWith =>
      __$$_LocationUserModelCopyWithImpl<_$_LocationUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationUserModelToJson(
      this,
    );
  }
}

abstract class _LocationUserModel implements LocationUserModel {
  const factory _LocationUserModel(
      {required final String id,
      final String? lonlat,
      final String? displayCity,
      final String? displayState}) = _$_LocationUserModel;

  factory _LocationUserModel.fromJson(Map<String, dynamic> json) =
      _$_LocationUserModel.fromJson;

  @override
  String get id;
  @override
  String? get lonlat;
  @override
  String? get displayCity;
  @override
  String? get displayState;
  @override
  @JsonKey(ignore: true)
  _$$_LocationUserModelCopyWith<_$_LocationUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
