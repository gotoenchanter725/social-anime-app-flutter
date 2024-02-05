import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map_dragmarker/flutter_map_dragmarker.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/edit_location/bloc/edit_location_bloc.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class FlutterMapContent extends StatelessWidget {
  const FlutterMapContent({super.key});

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        openAppSettings();
        return Future.error(R.strings.locationPermissionsDenied);
      }
    }
    if (permission == LocationPermission.deniedForever) {
      openAppSettings();
      return Future.error(R.strings.locationPermissionsPermanentlyDenied);
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<EditLocationBloc>(context);

    return BlocBuilder<EditLocationBloc, EditLocationState>(
      buildWhen: (previous, current) => current is ValidState,
      builder: (context, state) {
        return FlutterMap(
          mapController: bloc.mapController,
          options: MapOptions(
            initialCenter: bloc.initPoint,
            minZoom: bloc.minZoom,
            maxZoom: bloc.maxZoom,
            initialZoom: bloc.initialZoom,
            onMapEvent: (event) {
              if (event.source == MapEventSource.multiFingerEnd) {
                final bloc = BlocProvider.of<EditLocationBloc>(context);
                bloc.add(OnCameraZoomChangedEvent(zoom: event.camera.zoom));
              }
            },
            interactionOptions: const InteractionOptions(
              enableMultiFingerGestureRace: true,
              debugMultiFingerGestureWinner: true,
              rotationWinGestures: MultiFingerGesture.none,
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: bloc.urlTemplate,
              userAgentPackageName: bloc.userAgentPackageName,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: _buildMyLocation(context),
            ),
            _buildCircleMarker(context),
            _buildDragMarker(context),
          ],
        );
      },
    );
  }

  Widget _buildCircleMarker(BuildContext context) {
    final storageBloc = BlocProvider.of<HomeStorageBloc>(context);
    return BlocBuilder<EditLocationBloc, EditLocationState>(
      buildWhen: (previous, current) => current is ValidCircleMarkerState,
      builder: (context, state) {
        final bloc = BlocProvider.of<EditLocationBloc>(context);
        if (bloc.isShowMatchRadius) {
          return CircleLayer(
            circles: [
              CircleMarker(
                point: bloc.updatedPoint,
                radius: matchRadius(storageBloc.filters.milesAway),
                useRadiusInMeter: true,
                color: $constants.palette.disabledTextButton.withOpacity(0.2),
                borderColor:
                    $constants.palette.progressBackground.withOpacity(0.7),
                borderStrokeWidth: 2,
              )
            ],
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _buildDragMarker(BuildContext context) {
    final bloc = BlocProvider.of<EditLocationBloc>(context);
    final size = Size.square(bloc.cameraZoom * 3);
    return DragMarkers(
      markers: [
        DragMarker(
          key: GlobalKey<DragMarkerWidgetState>(),
          point: bloc.updatedPoint,
          size: size,
          builder: (_, __, ___) => Center(
            child: Image.asset(PathConstants.markerIcon),
          ),
          onDragStart: (details, point) {
            bloc.add(OnStartEditLocationChangedEvent());
          },
          onDragEnd: (details, point) {
            bloc.add(OnEditLocationChangedEvent(updatedPoint: point));
          },
          scrollMapNearEdge: true,
          scrollNearEdgeRatio: 2.0,
          scrollNearEdgeSpeed: 2.0,
        ),
      ],
    );
  }

  Widget _buildMyLocation(BuildContext context) {
    final bloc = BlocProvider.of<EditLocationBloc>(context);

    return GestureDetector(
      onTap: () {
        _determinePosition().then(
          (value) => bloc.add(OnMoveToMyLocationEvent(position: value)),
        );
      },
      child: Container(
        margin: EdgeInsets.all($constants.corners.md),
        padding: EdgeInsets.all($constants.corners.md),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: $constants.palette.buttonBorder,
        ),
        child: const Icon(
          Icons.my_location,
          color: Colors.white,
        ),
      ),
    );
  }
}
