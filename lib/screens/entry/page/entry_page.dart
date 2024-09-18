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
import 'package:senpai/screens/entry/bloc/entry_bloc.dart';
import 'package:senpai/screens/entry/widgets/entry_content.dart';

@RoutePage()
class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  void _checkAndSignIn(SignInBloc bloc, BuildContext context) async {
    final storage = getIt<TokenStorage<AuthModel>>();
    await storage.read().then((authModel) {
      if (authModel != null) {
        if (authModel.isProfileFilled == true) {
          // Assuming this method exists in your SignInBloc
          bloc.signInExistingUser(authModel.token);
        } else {
          context.router.push(ProfileFillRoute(
            id: authModel.user.id,
            phone: authModel.user.phone,
          ));
        }
      }
    });
  }

  Widget _buildListeners(BuildContext context) {
    return BlocBuilder<SignInBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          initial: () {
            final signInBloc = BlocProvider.of<SignInBloc>(context);
            _checkAndSignIn(signInBloc, context);
            return const SizedBox.shrink();
          },
          loading: () => const SenpaiLoading(),
          succeeded: (data, result) {
            final signInBloc = BlocProvider.of<SignInBloc>(context);
            final bool isSignedIn =
                signInBloc.signInUser(context.router, result.data);
            if (isSignedIn) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.router.replaceAll([HomeRoute()]);
                //video chat
                //context.router.replaceAll([UnityViewVideoChatRoute()]);
                //avatar test
                // context.router.replaceAll([UnityViewRoute()]);
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
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SignInBloc>(create: (_) => getIt<SignInBloc>()),
          BlocProvider<EntryBloc>(
            create: (context) =>
                EntryBloc()..add(OnChangeStatusAppTrackingEvent()),
          ),
        ],
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
