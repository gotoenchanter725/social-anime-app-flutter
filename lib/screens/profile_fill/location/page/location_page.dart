import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
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
    return BlocBuilder<SetUserLocationBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              _showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf(
                    "A successful empty response just got set user location");
                return const SizedBox.shrink();
              }

              final user = response["setUserLocation"]["user"];
              if (user == null) {
                _showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }

              LocationUserModel locationUserModel =
                  LocationUserModel.fromJson(user);

              blocProfileFill.add(
                OnLocationSaveEvent(location: locationUserModel),
              );
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  _showSnackBarError(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AwesomeSnackbarContent(
                title: 'On Snap!',
                message: message,
                contentType: ContentType.failure,
              ),
            ),
          );
      },
    );
  }
}
