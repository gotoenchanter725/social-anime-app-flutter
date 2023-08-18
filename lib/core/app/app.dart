// Main page widget resides here

import 'package:flutter/material.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;
  MyApp({super.key, required this.theme});

  final _appRouter = AppRouter();

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
