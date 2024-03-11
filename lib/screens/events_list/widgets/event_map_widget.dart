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
            markerId: MarkerId($constants.map.markerId),
            position: eventCoordinates,
          ),
        },
        onMapCreated: (GoogleMapController controller) {
          mapController.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular($constants.corners.rounded),
                bottomLeft: Radius.circular($constants.corners.rounded),
                bottomRight: Radius.circular($constants.corners.rounded),
                topLeft: Radius.circular($constants.corners.rounded))),
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
