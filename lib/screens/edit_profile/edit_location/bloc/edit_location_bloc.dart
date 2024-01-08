import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:latlong2/latlong.dart';

part 'edit_location_event.dart';
part 'edit_location_state.dart';

enum EditLocationStep {
  startPage,
  map;
}

class EditLocationBloc extends Bloc<EditLocationEvent, EditLocationState> {
  MapController mapController = MapController();
  double initialZoom = 10;
  double minZoom = 7;
  double maxZoom = 20;

  String urlTemplate = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  String userAgentPackageName = 'com.senpai.app';

  LatLng initPoint = const LatLng(37.785834, -122.406417);
  LatLng updatedPoint = const LatLng(37.785834, -122.406417);

  bool isShowMatchRadius = true;

  double cameraZoom = 10;
  EditLocationStep step = EditLocationStep.startPage;

  EditLocationBloc() : super(EditLocationInitial()) {
    on<OnEditLocationInitEvent>((event, emit) async {
      emit(LoadingState());

      initPoint = stringToLatLng(event.lonlat);
      updatedPoint = stringToLatLng(event.lonlat);

      emit(ValidState());
    });

    on<OnEditLocationChangedEvent>((event, emit) {
      emit(LoadingState());
      updatedPoint = event.updatedPoint;
      isShowMatchRadius = true;
      emit(ValidState());
      emit(ValidCircleMarkerState());
    });

    on<OnStartEditLocationChangedEvent>((event, emit) {
      emit(LoadingState());
      isShowMatchRadius = false;
      emit(ValidCircleMarkerState());
    });

    on<OnCameraZoomChangedEvent>((event, emit) {
      cameraZoom = event.zoom;
      emit(ValidState());
    });

    on<OnChangeLocationStepEvent>((event, emit) {
      emit(LoadingState());
      step = event.step;
      if (event.step == EditLocationStep.map) {
        initPoint = updatedPoint;
      }
      emit(ValidState());
    });
    on<OnMoveToMyLocationEvent>((event, emit) {
      emit(LoadingState());
      updatedPoint = LatLng(event.position.latitude, event.position.longitude);
      mapController.move(updatedPoint, cameraZoom);
      emit(ValidState());
    });
  }

  LatLng stringToLatLng(String? pointString) {
    if (pointString == null) {
      return const LatLng(37.785834, -122.406417);
    }
    RegExp regex = RegExp(r'POINT \((-?\d+\.\d+) (-?\d+\.\d+)\)');
    RegExpMatch? match = regex.firstMatch(pointString);

    if (match != null && match.groupCount == 2) {
      double latitude = double.parse(match.group(2)!);
      double longitude = double.parse(match.group(1)!);
      LatLng latLng = LatLng(latitude, longitude);
      return latLng;
    } else {
      return const LatLng(37.785834, -122.406417);
    }
  }

  @override
  Future<void> close() {
    mapController.dispose();
    return super.close();
  }
}
