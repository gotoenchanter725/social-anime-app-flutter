part of 'biography_bloc.dart';

@immutable
abstract class BiographyEvent {}

class OnBiographyInitEvent extends BiographyEvent {
  final String bio;

  OnBiographyInitEvent({required this.bio});
}

class OnBiographyChangedEvent extends BiographyEvent {
  final String biography;

  OnBiographyChangedEvent({required this.biography});
}

class NextTappedEvent extends BiographyEvent {}
