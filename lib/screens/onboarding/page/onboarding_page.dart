import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            currState is CheckAppTrackingTransparencyState,
        listener: (context, state) {
          if (state is CheckAppTrackingTransparencyState) {
            initAppTracking(context);
          }

          if (state is NextScreenState) {
            context.router.pushNamed('/entry');
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
