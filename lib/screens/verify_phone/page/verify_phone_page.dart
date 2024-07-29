import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart';
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart';
import 'package:senpai/core/auth/blocs/validate_phone_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/user/blocs/add_device_token/add_device_token_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/auth/user_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/verify_phone/blocs/otp_form_bloc/otp_form_bloc.dart';
import 'package:senpai/screens/verify_phone/widget/verify_phone_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class VerifyPhonePage extends StatelessWidget {
  const VerifyPhonePage({super.key, required this.phone, required this.id});

  final String phone;
  final String id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OTPFormBloc>(
          create: (context) => OTPFormBloc(),
        ),
        BlocProvider(
          create: (_) => getIt<ResendVerificationCodeBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ValidatePhoneBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<SignInBloc>(),
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            _buildOTPFormListeners(),
            _buildValidatePhoneBlocListeners(),
            _buildResendVerificationCodeListeners(),
            _buildSignInListeners(),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPFormListeners() {
    return BlocConsumer<OTPFormBloc, OtpFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          final serviceBloc = BlocProvider.of<ValidatePhoneBloc>(context);
          final formBloc = BlocProvider.of<OTPFormBloc>(context);

          final code = formBloc.state.otpCode;

          serviceBloc.validateUserAccount(int.parse(code), id);
        }
      },
      builder: (context, state) {
        return VerifyPhoneContent(
          phone: phone,
          id: id,
        );
      },
    );
  }

  Widget _buildValidatePhoneBlocListeners() {
    return BlocListener<ValidatePhoneBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            final formBloc = BlocProvider.of<OTPFormBloc>(context);
            formBloc.add(const OtpFormEvent.failed());
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showSnackBarError(context, R.strings.serverError);
            });
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["validatePhone"];
              String token = model["token"];
              bool hasFilledProfile = model["profileFilled"];
              UserModel user = UserModel.fromJson(model["user"]);
              final formBloc = BlocProvider.of<OTPFormBloc>(context);
              formBloc.isProfileFilled = hasFilledProfile;

              final storage = getIt<TokenStorage<AuthModel>>();
              storage.write(AuthModel(
                token: token,
                user: user,
                isProfileFilled: hasFilledProfile,
              ));

              // save the device token for notifications
              final addDeviceTokenBloc = getIt<AddDeviceTokenBloc>();
              addDeviceTokenBloc.checkStorageAndAddDeviceToken(
                userId: user.id,
              );

              final serviceBloc = BlocProvider.of<SignInBloc>(context);
              serviceBloc.signInExistingUser(token);
            } catch (e) {
              logIt.error("Error accessing validatePhone from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A validatePhone with error");
            }
          },
        );
      },
      child: BlocBuilder<ValidatePhoneBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildResendVerificationCodeListeners() {
    return BlocListener<ResendVerificationCodeBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            final formBloc = BlocProvider.of<OTPFormBloc>(context);
            formBloc.add(const OtpFormEvent.failed());
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showSnackBarError(context, R.strings.serverError);
            });
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

  Widget _buildSignInListeners() {
    return BlocListener<SignInBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            final formBloc = BlocProvider.of<OTPFormBloc>(context);
            formBloc.add(const OtpFormEvent.failed());
            WidgetsBinding.instance.addPostFrameCallback((_) {
              showSnackBarError(context, R.strings.serverError);
            });
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["signIn"]["user"];
              String id = model["id"];
              String phone = model["phone"];

              print("signed in user of id $id and phone $phone");

              final formBloc = BlocProvider.of<OTPFormBloc>(context);
              bool hasFilledProfile = formBloc.isProfileFilled;

              if (hasFilledProfile) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  context.router.replaceAll([HomeRoute()]);
                });
              } else {
                context.router.push(ProfileFillRoute(
                  id: id,
                  phone: phone,
                ));
              }
            } catch (e) {
              logIt.error("Error accessing signIn or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A signIn with error");
            }
          },
        );
      },
      child: BlocBuilder<SignInBloc, MutationState>(
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
