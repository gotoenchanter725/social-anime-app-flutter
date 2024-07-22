import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/start_match.dart';

@RoutePage()
class MatchPage extends StatelessWidget {
  final int defaultStep;

  const MatchPage({super.key, this.defaultStep = 0});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {
          if (defaultStep == 0) {
            return MatchBloc(MatchStep.initial);
          }
          return MatchBloc(MatchStep.lobby);
        })
      ],
      child: const StartMatch(),
    );
  }
}
