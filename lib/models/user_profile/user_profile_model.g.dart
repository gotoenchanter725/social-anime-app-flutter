// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      id: json['id'] as String,
      phone: json['phone'] as String,
      firstName: json['firstName'] as String?,
      country: json['country'] as String?,
      role: json['role'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      gender: json['gender'] as String?,
      desiredGender: json['desiredGender'] as String?,
      verified: json['verified'] as bool,
      occupation: json['occupation'] as String?,
      school: json['school'] as String?,
      bio: json['bio'] as String?,
      displayCity: json['displayCity'] as String?,
      displayState: json['displayState'] as String?,
      spotifyEmail: json['spotifyEmail'] as String?,
      animes: (json['animes'] as List<dynamic>?)
          ?.map((e) => AnimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery: json['gallery'] == null
          ? null
          : GalleryUserModel.fromJson(json['gallery'] as Map<String, dynamic>),
      lonlat: json['lonlat'] as String?,
      onlineStatus: json['onlineStatus'] as String?,
      premium: json['premium'] as bool?,
      superLikeCount: json['superLikeCount'] as int?,
      favoriteMusic: (json['favoriteMusic'] as List<dynamic>?)
          ?.map(
              (e) => UserFavoriteMusicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasLocationHidden: json['hasLocationHidden'] as bool?,
      milesAway: json['milesAway'] as int?,
      nextPaymentDate: json['nextPaymentDate'] == null
          ? null
          : DateTime.parse(json['nextPaymentDate'] as String),
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'country': instance.country,
      'role': instance.role,
      'birthday': instance.birthday?.toIso8601String(),
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'verified': instance.verified,
      'occupation': instance.occupation,
      'school': instance.school,
      'bio': instance.bio,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
      'spotifyEmail': instance.spotifyEmail,
      'animes': instance.animes,
      'gallery': instance.gallery,
      'lonlat': instance.lonlat,
      'onlineStatus': instance.onlineStatus,
      'premium': instance.premium,
      'superLikeCount': instance.superLikeCount,
      'favoriteMusic': instance.favoriteMusic,
      'hasLocationHidden': instance.hasLocationHidden,
      'milesAway': instance.milesAway,
      'nextPaymentDate': instance.nextPaymentDate?.toIso8601String(),
    };
