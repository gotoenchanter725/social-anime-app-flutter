import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_location/bloc/edit_location_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_location/widgets/flutter_map_content.dart';
import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/profile/widgets/profile_list_tile_button.dart';
import 'package:senpai/utils/constants.dart';

class EditLocationContent extends StatelessWidget {
  const EditLocationContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditLocationBloc, EditLocationState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<EditLocationBloc>(context);
        return Column(
          children: [
            SizedBox(height: $constants.insets.sm),
            _buildHeader(context),
            bloc.step == EditLocationStep.map
                ? const Expanded(child: FlutterMapContent())
                : _buildEditLocationContent(context),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    final locationBloc = BlocProvider.of<EditLocationBloc>(context);
    final serviceBloc = BlocProvider.of<SetUserLocationBloc>(context);
    final blocEditProfile = BlocProvider.of<EditProfileBloc>(context);

    return ProfileAppBar(
      title: R.strings.locationTitle,
      hasLeading: true,
      onTapLeading: () {
        if (locationBloc.step == EditLocationStep.map) {
          locationBloc.add(
            OnChangeLocationStepEvent(
              step: EditLocationStep.startPage,
            ),
          );
        } else {
          context.router.pop();
        }
      },
      onDoneTap: () {
        serviceBloc.setUserLocation(
          userId: int.parse(blocEditProfile.user.id),
          longitude: locationBloc.updatedPoint.longitude.toString(),
          latitude: locationBloc.updatedPoint.latitude.toString(),
        );
      },
    );
  }

  Widget _buildEditLocationContent(BuildContext context) {
    final bloc = BlocProvider.of<EditLocationBloc>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          ProfileListTileButton(
            icon: PathConstants.locationIcon,
            title: R.strings.findCityNearbyTitle,
            onTap: () {
              bloc.add(OnChangeLocationStepEvent(step: EditLocationStep.map));
            },
          ),
          SizedBox(height: $constants.insets.md),
          Divider(height: 1, color: $constants.palette.buttonBorder),
          SizedBox(height: $constants.insets.md),
          _buildLocationSwitch(),
        ],
      ),
    );
  }

  Widget _buildLocationSwitch() {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<EditProfileBloc>(context);
      return SenpaiSwitchWithTitle(
        value: bloc.hideLocation,
        title: R.strings.hideLocationTitle,
        onChanged: (isHideLocation) {
          bloc.add(OnChangeHideLocationEvent(
            isHideLocation: isHideLocation,
          ));
        },
      );
    });
  }
}
