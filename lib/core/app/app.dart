// Main page widget resides here

import 'package:flutter/material.dart';
import 'package:senpai/screens/onboarding/page/onboarding_page.dart';
import 'package:senpai/utils/constants.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;
  const MyApp({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: $constants.appTitle,
      theme: theme,
      home: const OnboardingPage(),
    );
  }
}
