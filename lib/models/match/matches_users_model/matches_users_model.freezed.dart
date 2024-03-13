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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchesUsersModel _$MatchesUsersModelFromJson(Map<String, dynamic> json) {
  return _MatchesUsersModel.fromJson(json);
}

/// @nodoc
mixin _$MatchesUsersModel {
  MatchesUsersConversationModel? get conversation =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {MatchesUsersConversationModel? conversation,
      UserProfileModel? user,
      UserProfileModel? matchee});

  $MatchesUsersConversationModelCopyWith<$Res>? get conversation;
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
    Object? conversation = freezed,
    Object? user = freezed,
    Object? matchee = freezed,
  }) {
    return _then(_value.copyWith(
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as MatchesUsersConversationModel?,
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
  $MatchesUsersConversationModelCopyWith<$Res>? get conversation {
    if (_value.conversation == null) {
      return null;
    }

    return $MatchesUsersConversationModelCopyWith<$Res>(_value.conversation!,
        (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
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
abstract class _$$MatchesUsersModelImplCopyWith<$Res>
    implements $MatchesUsersModelCopyWith<$Res> {
  factory _$$MatchesUsersModelImplCopyWith(_$MatchesUsersModelImpl value,
          $Res Function(_$MatchesUsersModelImpl) then) =
      __$$MatchesUsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MatchesUsersConversationModel? conversation,
      UserProfileModel? user,
      UserProfileModel? matchee});

  @override
  $MatchesUsersConversationModelCopyWith<$Res>? get conversation;
  @override
  $UserProfileModelCopyWith<$Res>? get user;
  @override
  $UserProfileModelCopyWith<$Res>? get matchee;
}

/// @nodoc
class __$$MatchesUsersModelImplCopyWithImpl<$Res>
    extends _$MatchesUsersModelCopyWithImpl<$Res, _$MatchesUsersModelImpl>
    implements _$$MatchesUsersModelImplCopyWith<$Res> {
  __$$MatchesUsersModelImplCopyWithImpl(_$MatchesUsersModelImpl _value,
      $Res Function(_$MatchesUsersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = freezed,
    Object? user = freezed,
    Object? matchee = freezed,
  }) {
    return _then(_$MatchesUsersModelImpl(
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as MatchesUsersConversationModel?,
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
class _$MatchesUsersModelImpl implements _MatchesUsersModel {
  const _$MatchesUsersModelImpl({this.conversation, this.user, this.matchee});

  factory _$MatchesUsersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchesUsersModelImplFromJson(json);

  @override
  final MatchesUsersConversationModel? conversation;
  @override
  final UserProfileModel? user;
  @override
  final UserProfileModel? matchee;

  @override
  String toString() {
    return 'MatchesUsersModel(conversation: $conversation, user: $user, matchee: $matchee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesUsersModelImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.matchee, matchee) || other.matchee == matchee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conversation, user, matchee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesUsersModelImplCopyWith<_$MatchesUsersModelImpl> get copyWith =>
      __$$MatchesUsersModelImplCopyWithImpl<_$MatchesUsersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchesUsersModelImplToJson(
      this,
    );
  }
}

abstract class _MatchesUsersModel implements MatchesUsersModel {
  const factory _MatchesUsersModel(
      {final MatchesUsersConversationModel? conversation,
      final UserProfileModel? user,
      final UserProfileModel? matchee}) = _$MatchesUsersModelImpl;

  factory _MatchesUsersModel.fromJson(Map<String, dynamic> json) =
      _$MatchesUsersModelImpl.fromJson;

  @override
  MatchesUsersConversationModel? get conversation;
  @override
  UserProfileModel? get user;
  @override
  UserProfileModel? get matchee;
  @override
  @JsonKey(ignore: true)
  _$$MatchesUsersModelImplCopyWith<_$MatchesUsersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesUsersConversationModel _$MatchesUsersConversationModelFromJson(
    Map<String, dynamic> json) {
  return _MatchesUsersConversationModel.fromJson(json);
}

/// @nodoc
mixin _$MatchesUsersConversationModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchesUsersConversationModelCopyWith<MatchesUsersConversationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesUsersConversationModelCopyWith<$Res> {
  factory $MatchesUsersConversationModelCopyWith(
          MatchesUsersConversationModel value,
          $Res Function(MatchesUsersConversationModel) then) =
      _$MatchesUsersConversationModelCopyWithImpl<$Res,
          MatchesUsersConversationModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MatchesUsersConversationModelCopyWithImpl<$Res,
        $Val extends MatchesUsersConversationModel>
    implements $MatchesUsersConversationModelCopyWith<$Res> {
  _$MatchesUsersConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchesUsersConversationModelImplCopyWith<$Res>
    implements $MatchesUsersConversationModelCopyWith<$Res> {
  factory _$$MatchesUsersConversationModelImplCopyWith(
          _$MatchesUsersConversationModelImpl value,
          $Res Function(_$MatchesUsersConversationModelImpl) then) =
      __$$MatchesUsersConversationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$MatchesUsersConversationModelImplCopyWithImpl<$Res>
    extends _$MatchesUsersConversationModelCopyWithImpl<$Res,
        _$MatchesUsersConversationModelImpl>
    implements _$$MatchesUsersConversationModelImplCopyWith<$Res> {
  __$$MatchesUsersConversationModelImplCopyWithImpl(
      _$MatchesUsersConversationModelImpl _value,
      $Res Function(_$MatchesUsersConversationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MatchesUsersConversationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchesUsersConversationModelImpl
    implements _MatchesUsersConversationModel {
  const _$MatchesUsersConversationModelImpl({required this.id});

  factory _$MatchesUsersConversationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MatchesUsersConversationModelImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'MatchesUsersConversationModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesUsersConversationModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesUsersConversationModelImplCopyWith<
          _$MatchesUsersConversationModelImpl>
      get copyWith => __$$MatchesUsersConversationModelImplCopyWithImpl<
          _$MatchesUsersConversationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchesUsersConversationModelImplToJson(
      this,
    );
  }
}

abstract class _MatchesUsersConversationModel
    implements MatchesUsersConversationModel {
  const factory _MatchesUsersConversationModel({required final String id}) =
      _$MatchesUsersConversationModelImpl;

  factory _MatchesUsersConversationModel.fromJson(Map<String, dynamic> json) =
      _$MatchesUsersConversationModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MatchesUsersConversationModelImplCopyWith<
          _$MatchesUsersConversationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
