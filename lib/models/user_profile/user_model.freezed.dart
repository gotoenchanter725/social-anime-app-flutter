// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get desiredGender => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  String? get school => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get displayCity => throw _privateConstructorUsedError;
  String? get displayState => throw _privateConstructorUsedError;
  String? get spotifyEmail =>
      throw _privateConstructorUsedError; // List<UserAnimeModel>? animes,
  List<AnimeModel>? get animes => throw _privateConstructorUsedError;
  GalleryUserModel? get gallery => throw _privateConstructorUsedError;
  String? get lonlat =>
      throw _privateConstructorUsedError; // List<MatchUserData>? matches,
  String? get onlineStatus => throw _privateConstructorUsedError;
  bool? get premium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String phone,
      String? firstName,
      String? role,
      DateTime? birthday,
      String? gender,
      String? desiredGender,
      bool verified,
      String? occupation,
      String? school,
      String? bio,
      String? displayCity,
      String? displayState,
      String? spotifyEmail,
      List<AnimeModel>? animes,
      GalleryUserModel? gallery,
      String? lonlat,
      String? onlineStatus,
      bool? premium});

  $GalleryUserModelCopyWith<$Res>? get gallery;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? firstName = freezed,
    Object? role = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? desiredGender = freezed,
    Object? verified = null,
    Object? occupation = freezed,
    Object? school = freezed,
    Object? bio = freezed,
    Object? displayCity = freezed,
    Object? displayState = freezed,
    Object? spotifyEmail = freezed,
    Object? animes = freezed,
    Object? gallery = freezed,
    Object? lonlat = freezed,
    Object? onlineStatus = freezed,
    Object? premium = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      desiredGender: freezed == desiredGender
          ? _value.desiredGender
          : desiredGender // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      displayCity: freezed == displayCity
          ? _value.displayCity
          : displayCity // ignore: cast_nullable_to_non_nullable
              as String?,
      displayState: freezed == displayState
          ? _value.displayState
          : displayState // ignore: cast_nullable_to_non_nullable
              as String?,
      spotifyEmail: freezed == spotifyEmail
          ? _value.spotifyEmail
          : spotifyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      animes: freezed == animes
          ? _value.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeModel>?,
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as GalleryUserModel?,
      lonlat: freezed == lonlat
          ? _value.lonlat
          : lonlat // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: freezed == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GalleryUserModelCopyWith<$Res>? get gallery {
    if (_value.gallery == null) {
      return null;
    }

    return $GalleryUserModelCopyWith<$Res>(_value.gallery!, (value) {
      return _then(_value.copyWith(gallery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phone,
      String? firstName,
      String? role,
      DateTime? birthday,
      String? gender,
      String? desiredGender,
      bool verified,
      String? occupation,
      String? school,
      String? bio,
      String? displayCity,
      String? displayState,
      String? spotifyEmail,
      List<AnimeModel>? animes,
      GalleryUserModel? gallery,
      String? lonlat,
      String? onlineStatus,
      bool? premium});

  @override
  $GalleryUserModelCopyWith<$Res>? get gallery;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? firstName = freezed,
    Object? role = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? desiredGender = freezed,
    Object? verified = null,
    Object? occupation = freezed,
    Object? school = freezed,
    Object? bio = freezed,
    Object? displayCity = freezed,
    Object? displayState = freezed,
    Object? spotifyEmail = freezed,
    Object? animes = freezed,
    Object? gallery = freezed,
    Object? lonlat = freezed,
    Object? onlineStatus = freezed,
    Object? premium = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      desiredGender: freezed == desiredGender
          ? _value.desiredGender
          : desiredGender // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      displayCity: freezed == displayCity
          ? _value.displayCity
          : displayCity // ignore: cast_nullable_to_non_nullable
              as String?,
      displayState: freezed == displayState
          ? _value.displayState
          : displayState // ignore: cast_nullable_to_non_nullable
              as String?,
      spotifyEmail: freezed == spotifyEmail
          ? _value.spotifyEmail
          : spotifyEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      animes: freezed == animes
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeModel>?,
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as GalleryUserModel?,
      lonlat: freezed == lonlat
          ? _value.lonlat
          : lonlat // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStatus: freezed == onlineStatus
          ? _value.onlineStatus
          : onlineStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      premium: freezed == premium
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.id,
      required this.phone,
      this.firstName,
      this.role,
      this.birthday,
      this.gender,
      this.desiredGender,
      required this.verified,
      this.occupation,
      this.school,
      this.bio,
      this.displayCity,
      this.displayState,
      this.spotifyEmail,
      final List<AnimeModel>? animes,
      this.gallery,
      this.lonlat,
      this.onlineStatus,
      this.premium})
      : _animes = animes;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String id;
  @override
  final String phone;
  @override
  final String? firstName;
  @override
  final String? role;
  @override
  final DateTime? birthday;
  @override
  final String? gender;
  @override
  final String? desiredGender;
  @override
  final bool verified;
  @override
  final String? occupation;
  @override
  final String? school;
  @override
  final String? bio;
  @override
  final String? displayCity;
  @override
  final String? displayState;
  @override
  final String? spotifyEmail;
// List<UserAnimeModel>? animes,
  final List<AnimeModel>? _animes;
// List<UserAnimeModel>? animes,
  @override
  List<AnimeModel>? get animes {
    final value = _animes;
    if (value == null) return null;
    if (_animes is EqualUnmodifiableListView) return _animes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GalleryUserModel? gallery;
  @override
  final String? lonlat;
// List<MatchUserData>? matches,
  @override
  final String? onlineStatus;
  @override
  final bool? premium;

  @override
  String toString() {
    return 'UserModel(id: $id, phone: $phone, firstName: $firstName, role: $role, birthday: $birthday, gender: $gender, desiredGender: $desiredGender, verified: $verified, occupation: $occupation, school: $school, bio: $bio, displayCity: $displayCity, displayState: $displayState, spotifyEmail: $spotifyEmail, animes: $animes, gallery: $gallery, lonlat: $lonlat, onlineStatus: $onlineStatus, premium: $premium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.desiredGender, desiredGender) ||
                other.desiredGender == desiredGender) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.displayCity, displayCity) ||
                other.displayCity == displayCity) &&
            (identical(other.displayState, displayState) ||
                other.displayState == displayState) &&
            (identical(other.spotifyEmail, spotifyEmail) ||
                other.spotifyEmail == spotifyEmail) &&
            const DeepCollectionEquality().equals(other._animes, _animes) &&
            (identical(other.gallery, gallery) || other.gallery == gallery) &&
            (identical(other.lonlat, lonlat) || other.lonlat == lonlat) &&
            (identical(other.onlineStatus, onlineStatus) ||
                other.onlineStatus == onlineStatus) &&
            (identical(other.premium, premium) || other.premium == premium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        phone,
        firstName,
        role,
        birthday,
        gender,
        desiredGender,
        verified,
        occupation,
        school,
        bio,
        displayCity,
        displayState,
        spotifyEmail,
        const DeepCollectionEquality().hash(_animes),
        gallery,
        lonlat,
        onlineStatus,
        premium
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String phone,
      final String? firstName,
      final String? role,
      final DateTime? birthday,
      final String? gender,
      final String? desiredGender,
      required final bool verified,
      final String? occupation,
      final String? school,
      final String? bio,
      final String? displayCity,
      final String? displayState,
      final String? spotifyEmail,
      final List<AnimeModel>? animes,
      final GalleryUserModel? gallery,
      final String? lonlat,
      final String? onlineStatus,
      final bool? premium}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get id;
  @override
  String get phone;
  @override
  String? get firstName;
  @override
  String? get role;
  @override
  DateTime? get birthday;
  @override
  String? get gender;
  @override
  String? get desiredGender;
  @override
  bool get verified;
  @override
  String? get occupation;
  @override
  String? get school;
  @override
  String? get bio;
  @override
  String? get displayCity;
  @override
  String? get displayState;
  @override
  String? get spotifyEmail;
  @override // List<UserAnimeModel>? animes,
  List<AnimeModel>? get animes;
  @override
  GalleryUserModel? get gallery;
  @override
  String? get lonlat;
  @override // List<MatchUserData>? matches,
  String? get onlineStatus;
  @override
  bool? get premium;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
