part of 'location_bloc.dart';

@immutable
abstract class LocationEvent {}

class OnLocationInitEvent extends LocationEvent {
  final LocationUserModel? location;

  OnLocationInitEvent({this.location});
}

class OnLocationChangedEvent extends LocationEvent {
  final Position? position;

  OnLocationChangedEvent({this.position});
}
