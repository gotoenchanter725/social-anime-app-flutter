import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/screens/match/widgets/match_content.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: const SenpaiAppBar(title: "Waiting for a Match"),
      body: const MatchContent(),
    );
  }
}
