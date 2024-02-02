import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:senpai/screens/onboarding/widgets/onboarding_content.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  Future<void> initAppTracking(BuildContext context) async {
    final bloc = BlocProvider.of<OnboardingBloc>(context);
    final TrackingStatus status =
        await AppTrackingTransparency.requestTrackingAuthorization();

    bloc.add(OnChangeStatusAppTrackingEvent(status: status));
  }

  Future<void> showCustomTrackingDialog(BuildContext context) async =>
      await showDialog<void>(
        context: context,
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<OnboardingBloc>(context),
          child: AlertDialog(
            title: const Text(TextConstants.dearUserText),
            content: const Text(TextConstants.dearUserDescription),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  openAppSettings();
                },
                child: const Text(TextConstants.continueText),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<OnboardingBloc> _buildBody(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (BuildContext context) => OnboardingBloc(),
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listenWhen: (_, currState) =>
            currState is NextScreenState ||
            currState is CheckAppTrackingTransparencyState ||
            currState is ShowDialogState,
        listener: (context, state) {
          if (state is CheckAppTrackingTransparencyState) {
            initAppTracking(context);
          }

          if (state is NextScreenState) {
            context.router.pushNamed('/entry');
          }

          if (state is ShowDialogState) {
            showCustomTrackingDialog(context);
          }
        },
        buildWhen: (_, currState) => currState is OnboardingInitial,
        builder: (context, state) {
          return const OnboardingContent();
        },
      ),
    );
  }
}
