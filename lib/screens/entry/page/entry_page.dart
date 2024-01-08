// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:senpai/screens/entry/widgets/entry_content.dart';
//
// @RoutePage()
// class EntryPage extends StatelessWidget {
//   const EntryPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: EntryContent(),
//     );
//   }
// }


import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/entry/widgets/entry_content.dart';

@RoutePage()
class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  void _checkAndSignIn(SignInBloc bloc) async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();

    if (authModel != null) {
      bloc.signInExistingUser(
          authModel.token); // Assuming this method exists in your SignInBloc
    }
  }

  Widget _buildListeners(BuildContext context) {
    return BlocBuilder<SignInBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          initial: () {
            final signInBloc = BlocProvider.of<SignInBloc>(context);
            _checkAndSignIn(signInBloc);
            return const SizedBox.shrink();
          },
          loading: () => const SenpaiLoading(),
          succeeded: (data, result) {
            print("Successful state");
            final signInBloc = BlocProvider.of<SignInBloc>(context);
            final bool isSignedIn =
                signInBloc.signInUser(context.router, result.data);
            if (isSignedIn) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.router.replaceAll([const HomeRoute()]);
              });
            }
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SignInBloc>(
        create: (_) => getIt<SignInBloc>(),
        child: Stack(
          children: [
            const EntryContent(),
            _buildListeners(context),
          ],
        ),
      ),
    );
  }
}