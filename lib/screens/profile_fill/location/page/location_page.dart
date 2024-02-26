import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/location/location_user_model.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/location/bloc/location_bloc.dart';
import 'package:senpai/screens/profile_fill/location/widgets/location_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class LocationPage extends StatelessWidget {
  final LocationUserModel? location;
  const LocationPage({super.key, this.location});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationBloc>(
          create: (context) => LocationBloc()
            ..add(OnLocationInitEvent(
              location: location,
            )),
        ),
        BlocProvider(
          create: (_) => getIt<SetUserLocationBloc>(),
        ),
      ],
      child: Stack(
        children: [
          const SafeArea(
            child: LocationContent(),
          ),
          _buildSetUserLocationListeners(),
        ],
      ),
    );
  }

  Widget _buildSetUserLocationListeners() {
    return BlocListener<SetUserLocationBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf(
                  "A successful empty response just got set user location");
              return;
            }
            dynamic model;
            try {
              model = response["setUserLocation"]["user"];
              if (model != null) {
                final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
                LocationUserModel locationUserModel = LocationUserModel.fromJson(model);
                blocProfileFill.add(
                  OnLocationSaveEvent(
                    location: locationUserModel,
                  ),
                );
              }
            } catch (e) {
              logIt.error( "Error accessing setUserLocation or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A deleteFavoriteMusic with error");
            }
          },
        );
      },
      child: BlocBuilder<SetUserLocationBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
