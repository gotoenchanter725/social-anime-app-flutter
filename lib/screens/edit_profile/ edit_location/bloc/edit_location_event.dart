part of 'edit_location_bloc.dart';

@immutable
abstract class EditLocationEvent {}

class OnEditLocationInitEvent extends EditLocationEvent {
  final String? lonlat;

  OnEditLocationInitEvent({
    this.lonlat,
  });
}

class OnEditLocationChangedEvent extends EditLocationEvent {
  final LatLng updatedPoint;
  OnEditLocationChangedEvent({required this.updatedPoint});
}

class OnStartEditLocationChangedEvent extends EditLocationEvent {
  OnStartEditLocationChangedEvent();
}

class OnCameraZoomChangedEvent extends EditLocationEvent {
  final double zoom;

  OnCameraZoomChangedEvent({required this.zoom});
}

class OnChangeLocationStepEvent extends EditLocationEvent {
  final EditLocationStep step;
  OnChangeLocationStepEvent({required this.step});
}

class OnMoveToMyLocationEvent extends EditLocationEvent {
  final Position position;
  OnMoveToMyLocationEvent({required this.position});
}
