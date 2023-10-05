part of 'universities_bloc.dart';

@immutable
abstract class UniversitiesEvent {}

class OnUniversitiesFetchEvent extends UniversitiesEvent {
  final String searchText;

  OnUniversitiesFetchEvent({required this.searchText});
}
