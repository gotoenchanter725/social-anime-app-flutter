part of 'occupation_bloc.dart';

@immutable
abstract class OccupationEvent {}

class OnOccupationInitEvent extends OccupationEvent {
  final String school;
  final String occupation;

  OnOccupationInitEvent({required this.school, required this.occupation});
}

class OnUniversityChangedEvent extends OccupationEvent {
  final String university;

  OnUniversityChangedEvent({required this.university});
}

class OnJobTitleChangedEvent extends OccupationEvent {
  final String jobTitle;

  OnJobTitleChangedEvent({required this.jobTitle});
}

class NextTappedEvent extends OccupationEvent {}
