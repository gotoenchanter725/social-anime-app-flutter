import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';

import 'package:senpai/core/user/blocs/verify_photo_user/verify_photo_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';

import 'package:senpai/screens/verify_photo/widgets/verify_photo_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class VerifyPhotoPage extends StatelessWidget {
  final int? userID;

  const VerifyPhotoPage({
    super.key,
    this.userID,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VerifyPhotoBloc>(
          create: (context) => VerifyPhotoBloc()
            ..add(OnVerifyPhotoInitEvent(
              userId: userID,
            )),
        ),
        BlocProvider(
          create: (_) => getIt<VerifyPhotoUserBloc>(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const VerifyPhotoContent(),
              _buildVerifyPhotoUserListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerifyPhotoUserListeners() {
    return BlocListener<VerifyPhotoUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["submitVerifyRequest"]["user"];
              context.router.pop();
            } catch (e) {
              logIt.error(
                  "Error accessing submitVerifyRequest or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<VerifyPhotoUserBloc, MutationState>(
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
