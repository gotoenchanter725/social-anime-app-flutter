import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/location/location_user_model.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_location/bloc/edit_location_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_location/widgets/edit_location_content.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class EditLocationPage extends StatelessWidget {
  final EditProfileBloc editBloc;

  const EditLocationPage({
    super.key,
    required this.editBloc,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => EditLocationBloc()
              ..add(OnEditLocationInitEvent(
                lonlat: editBloc.user.lonlat,
              ))),
        BlocProvider.value(value: editBloc),
        BlocProvider(create: (_) => getIt<SetUserLocationBloc>()),
        BlocProvider.value(value: getIt<HomeStorageBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const EditLocationContent(),
              _buildSetUserLocationListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSetUserLocationListeners() {
    return BlocBuilder<SetUserLocationBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, R.strings.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf(
                    "A successful empty response just got set user location");
                return const SizedBox.shrink();
              }

              final user = response["setUserLocation"]["user"];
              if (user == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }

              LocationUserModel locationUserModel =
                  LocationUserModel.fromJson(user);

              editBloc.add(
                OnUpdateUserLocationEvent(
                  lonlat: locationUserModel.lonlat,
                  displayCity: locationUserModel.displayCity,
                  displayState: locationUserModel.displayState,
                ),
              );
              context.router.pop();
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
