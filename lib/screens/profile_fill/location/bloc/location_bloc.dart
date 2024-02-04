import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/location/location_user_model.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  Position? position;
  LocationUserModel? location;

  LocationBloc() : super(LocationInitial()) {
    on<OnLocationInitEvent>((event, emit) {
      if (event.location != null) {
        emit(ValidState());
        location = event.location;
      }
    });

    on<OnLocationChangedEvent>((event, emit) {
      if (event.position != null) {
        emit(ErrorState(
          message: R.strings.serverError,
          isEnabled: false,
        ));
        emit(ValidState());
        emit(LoadingState());
        emit(LocationSucssesfulState());
        position = event.position;
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });
  }
}
