part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {}

class OnFetchUser extends ProfileEvent {
  final UserProfileModel user;

  OnFetchUser({required this.user});
}

class OnInitUserID extends ProfileEvent {
  OnInitUserID();
}
