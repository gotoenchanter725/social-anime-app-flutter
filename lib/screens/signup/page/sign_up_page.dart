import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/core/auth/blocs/create_user_bloc.dart';
import 'package:senpai/screens/signup/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:senpai/screens/signup/widgets/sign_up_content.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key, required this.isExistingUser});

  final bool isExistingUser;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreateUserBloc>(
          create: (_) => getIt<CreateUserBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ResendVerificationCodeBloc>(),
        ),
      ],
      child: BlocProvider<SignUpFormBloc>(
        create: (context) => SignUpFormBloc(),
        child: Scaffold(
          body: Stack(
            children: [
              SignupContent(
                isExistingUser: isExistingUser,
              ),
              _buildCreateUserListeners(),
              _buildSignInListeners(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocListener<CreateUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            if (error.graphqlErrors.isNotEmpty) {
              _showSnackBarError(
                context,
                R.strings.alreadyHasAccount,
                isWarning: true,
              );
            } else {
              _showSnackBarError(context, R.strings.serverError);
            }
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["createUser"]["user"];
              if (model != null) {
                String phone = model["phone"];
                String id = model["id"];
                context.router.push(VerifyPhoneRoute(phone: phone, id: id));
              }
            } catch (e) {
              logIt.error(
                  "Error accessing createUser or user from response: $e");
              model = null;
            }
            if (model == null) {
              _showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<CreateUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildSignInListeners() {
    return BlocListener<ResendVerificationCodeBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            if (error.graphqlErrors.isNotEmpty) {
              _showSnackBarError(
                context,
                R.strings.noAccountWithThisNumber,
                isWarning: true,
              );
            } else {
              _showSnackBarError(context, R.strings.serverError);
            }
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["resendVerifyText"]["user"];
              if (model != null) {
                String phone = model["phone"];
                String id = model["id"];
                context.router.push(VerifyPhoneRoute(phone: phone, id: id));
              }
            } catch (e) {
              logIt.error(
                  "Error accessing resendVerifyText or user from response: $e");
              model = null;
            }
            if (model == null) {
              _showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user without an account just tried to sign in");
            }
          },
        );
      },
      child: BlocBuilder<ResendVerificationCodeBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  _showSnackBarError(
    BuildContext context,
    String message, {
    bool isWarning = false,
  }) {
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
                message: message,

                /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                contentType:
                    isWarning ? ContentType.warning : ContentType.failure,
              ),
            ),
          );
      },
    );
  }
}
