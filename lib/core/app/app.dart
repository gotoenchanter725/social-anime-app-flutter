// Main page widget resides here

import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;
  MyApp({super.key, required this.theme});

  final _appRouter = appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: $constants.appTitle,
      theme: theme,
      routerConfig: _appRouter.config(),
    );
  }
}
