import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class LobbyPage extends StatelessWidget {
  const LobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: R.strings.lobbyAppBarTitle,
        hasLeading: true,
      ),
      body: const Center(
        child: Text("To be implemented"),
      ),
    );
  }
}
