import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/signup/bloc/create_user_bloc.dart';
import 'package:senpai/screens/signup/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:senpai/screens/signup/widgets/sign_up_content.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateUserBloc>(
      create: (_) => getIt<CreateUserBloc>(),
      child: BlocConsumer<CreateUserBloc, MutationState>(
          builder: ((context, state) {
        return BlocProvider<SignUpFormBloc>(
          create: (context) => SignUpFormBloc(),
          child: Scaffold(
            body: Stack(children: [
              const SignupContent(),
              BlocBuilder<CreateUserBloc, MutationState>(
                  builder: (context, state) {
                state.whenOrNull(loading: () => const SenpaiLoading());
                return const SizedBox.shrink();
              })
            ]),
          ),
        );
      }), listener: (_, state) {
        state.mapOrNull(succeeded: (_) {
          context.router.pushNamed('/verify_code');
        });
      }),
    );
  }
}
