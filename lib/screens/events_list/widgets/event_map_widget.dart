import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:senpai/utils/constants.dart';

class EventMapWidget extends StatelessWidget {
  EventMapWidget({super.key, required this.eventCoordinates});

  final LatLng eventCoordinates;
  final mapController = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: eventCoordinates,
          zoom: $constants.map.zoom,
        ),
        zoomControlsEnabled: false,
        mapToolbarEnabled: false,
        myLocationButtonEnabled: false,
        markers: {
          Marker(
            markerId: const MarkerId('event'),
            position: eventCoordinates,
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          mapController.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
                topLeft: Radius.circular(100))),
        backgroundColor: $constants.palette.white,
        onPressed: goToTheEvent,
        child: Icon(
          Icons.my_location_outlined,
          color: $constants.palette.darkGrey,
        ),
      ),
    );
  }

  Future<void> goToTheEvent() async {
    final controller = await mapController.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: eventCoordinates,
      zoom: $constants.map.zoom,
    )));
  }
}
