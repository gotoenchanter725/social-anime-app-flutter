import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/location/bloc/location_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:geolocator/geolocator.dart';

class LocationContent extends StatelessWidget {
  const LocationContent({super.key});

  void _getCurrentLocation(BuildContext context) async {
    await _determinePosition().then((position) {
      final bloc = BlocProvider.of<LocationBloc>(context);
      bloc.add(OnLocationChangedEvent(position: position));
    });
  }

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          _buildHeader(context),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Image.asset(
            PathConstants.locationBg,
            height: getSize(context).height * 0.3,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildLocationButton(context),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: R.strings.enableLocationText,
      description: R.strings.enableLocationDescription,
      isCenterTitle: true,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.photos,
          ),
        );
      },
    );
  }

  Widget _buildLocationButton(BuildContext context) {
    final bloc = BlocProvider.of<LocationBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    final serviceBloc = BlocProvider.of<SetUserLocationBloc>(context);
    return BlocListener<LocationBloc, LocationState>(
      listenWhen: (_, currState) => currState is LocationSucssesfulState,
      listener: (context, state) {
        if (bloc.location != null) {
          blocProfileFill.add(OnChangeStepEvent(step: ProfileFillStep.spotify));
        } else {
          if (bloc.position != null) {
            serviceBloc.setUserLocation(
              userId: blocProfileFill.userId,
              longitude: bloc.position!.longitude.toString(),
              latitude: bloc.position!.latitude.toString(),
            );
          }
        }
      },
      child: PrimaryButton(
        text: R.strings.allowLocationText,
        onPressed: () async {
          _getCurrentLocation(context);
        },
      ),
    );
  }
}
