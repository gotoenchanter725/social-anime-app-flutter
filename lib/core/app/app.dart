// Main page widget resides here

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senpai/l10n/generated/app_localizations.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;
  MyApp({super.key, required this.theme});

  final _appRouter = appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      title: $constants.appTitle,
      theme: theme,
      routerConfig: _appRouter.config(),

      /// EasyLocalization configuration.
      // locale: const Locale('en'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}
