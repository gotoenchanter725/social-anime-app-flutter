// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matches_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchesUsersModel _$MatchesUsersModelFromJson(Map<String, dynamic> json) {
  return _MatchesUsersModel.fromJson(json);
}

/// @nodoc
mixin _$MatchesUsersModel {
//add match with Conversation
//  conversation,
  UserProfileModel? get user => throw _privateConstructorUsedError;
  UserProfileModel? get matchee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchesUsersModelCopyWith<MatchesUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesUsersModelCopyWith<$Res> {
  factory $MatchesUsersModelCopyWith(
          MatchesUsersModel value, $Res Function(MatchesUsersModel) then) =
      _$MatchesUsersModelCopyWithImpl<$Res, MatchesUsersModel>;
  @useResult
  $Res call({UserProfileModel? user, UserProfileModel? matchee});

  $UserProfileModelCopyWith<$Res>? get user;
  $UserProfileModelCopyWith<$Res>? get matchee;
}

/// @nodoc
class _$MatchesUsersModelCopyWithImpl<$Res, $Val extends MatchesUsersModel>
    implements $MatchesUsersModelCopyWith<$Res> {
  _$MatchesUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? matchee = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      matchee: freezed == matchee
          ? _value.matchee
          : matchee // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserProfileModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res>? get matchee {
    if (_value.matchee == null) {
      return null;
    }

    return $UserProfileModelCopyWith<$Res>(_value.matchee!, (value) {
      return _then(_value.copyWith(matchee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchesUsersModelCopyWith<$Res>
    implements $MatchesUsersModelCopyWith<$Res> {
  factory _$$_MatchesUsersModelCopyWith(_$_MatchesUsersModel value,
          $Res Function(_$_MatchesUsersModel) then) =
      __$$_MatchesUsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileModel? user, UserProfileModel? matchee});

  @override
  $UserProfileModelCopyWith<$Res>? get user;
  @override
  $UserProfileModelCopyWith<$Res>? get matchee;
}

/// @nodoc
class __$$_MatchesUsersModelCopyWithImpl<$Res>
    extends _$MatchesUsersModelCopyWithImpl<$Res, _$_MatchesUsersModel>
    implements _$$_MatchesUsersModelCopyWith<$Res> {
  __$$_MatchesUsersModelCopyWithImpl(
      _$_MatchesUsersModel _value, $Res Function(_$_MatchesUsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? matchee = freezed,
  }) {
    return _then(_$_MatchesUsersModel(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
      matchee: freezed == matchee
          ? _value.matchee
          : matchee // ignore: cast_nullable_to_non_nullable
              as UserProfileModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchesUsersModel implements _MatchesUsersModel {
  const _$_MatchesUsersModel({this.user, this.matchee});

  factory _$_MatchesUsersModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchesUsersModelFromJson(json);

//add match with Conversation
//  conversation,
  @override
  final UserProfileModel? user;
  @override
  final UserProfileModel? matchee;

  @override
  String toString() {
    return 'MatchesUsersModel(user: $user, matchee: $matchee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchesUsersModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.matchee, matchee) || other.matchee == matchee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, matchee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchesUsersModelCopyWith<_$_MatchesUsersModel> get copyWith =>
      __$$_MatchesUsersModelCopyWithImpl<_$_MatchesUsersModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesUsersModelToJson(
      this,
    );
  }
}

abstract class _MatchesUsersModel implements MatchesUsersModel {
  const factory _MatchesUsersModel(
      {final UserProfileModel? user,
      final UserProfileModel? matchee}) = _$_MatchesUsersModel;

  factory _MatchesUsersModel.fromJson(Map<String, dynamic> json) =
      _$_MatchesUsersModel.fromJson;

  @override //add match with Conversation
//  conversation,
  UserProfileModel? get user;
  @override
  UserProfileModel? get matchee;
  @override
  @JsonKey(ignore: true)
  _$$_MatchesUsersModelCopyWith<_$_MatchesUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
