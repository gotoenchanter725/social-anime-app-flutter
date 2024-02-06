// Main page widget resides here

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:senpai/i18n/strings.g.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

class MyApp extends StatefulWidget {
  final ThemeData theme;
  MyApp({super.key, required this.theme});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      theme: widget.theme,
      routerConfig: _appRouter.config(),

      /// EasyLocalization configuration.
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }

  Future<void> setupInteractedMessage() async {
    await FirebaseMessaging.instance
        .getInitialMessage()
        .then((value) => _handleMessage(value != null ? value.data : Map()));
  }

  void _handleMessage(Map<String, dynamic> data) {
    if (data['redirect'] == "match") {
      // TODO: should actually send the user to chat page of this match
      WidgetsBinding.instance.addPostFrameCallback((_) {
        appRouter.replaceAll([HomeRoute()]);
      });
    } else if (data['redirect'] == "chat") {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        appRouter.replaceAll([HomeRoute(defaultIndex: 1)]);
      });
    } else if (data['redirect'] == "profile") {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        appRouter.replaceAll([HomeRoute(defaultIndex: 2)]);
      });
    }
  }
}
