import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/signup/bloc/create_user_bloc.dart';
import 'package:senpai/screens/signup/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:senpai/screens/signup/widgets/sign_up_content.dart';
import 'package:senpai/utils/methods/aliases.dart';

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
              body: Stack(
                children: [
                  const SignupContent(),
                  BlocBuilder<CreateUserBloc, MutationState>(
                    builder: (context, state) {
                      return state.maybeWhen<Widget>(
                          loading: () => const SenpaiLoading(),
                          failed: (error, result) {
                            WidgetsBinding.instance.addPostFrameCallback(
                              (_) {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    SnackBar(
                                      /// need to set following properties for best effect of awesome_snackbar_content
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: 'On Snap!',
                                        message: TextConstants.serverError,

                                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                        contentType: ContentType.failure,
                                      ),
                                    ),
                                  );
                              },
                            );

                            return const SizedBox.shrink();
                          },
                          orElse: () => const SizedBox.shrink());
                    },
                  )
                ],
              ),
            ),
          );
        }),
        listener: (_, state) {
          state.mapOrNull(
            succeeded: (data) {
              final response = data.result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got recorded");
                return;
              }

              String phone = response["createUser"]["user"]["phone"];
              String id = response["createUser"]["user"]["id"];
              context.router.push(VerifyPhoneRoute(phone: phone, id: id));
            },
          );
        },
      ),
    );
  }
}
