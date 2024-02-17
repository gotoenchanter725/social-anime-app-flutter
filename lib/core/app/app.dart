// Main page widget resides here

import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:senpai/main.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/generated/app_localizations.dart';
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

  @override
  void initState() {
    super.initState();

    setupInteractedMessage();

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {
      RemoteNotification? notification = message?.notification!;

      logIt.debug(notification != null ? notification.title : notification);
    });

    FirebaseMessaging.onMessage.listen((message) async {
      RemoteNotification? notification = message.notification;

      if (notification != null && !kIsWeb) {
        String action = jsonEncode(message.data);
        logIt.debug(message.toMap());

        flutterLocalNotificationsPlugin!.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel!.id,
                channel!.name,
                priority: Priority.high,
                importance: Importance.max,
              ),
              iOS: const DarwinNotificationDetails(),
            ),
            payload: action);
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final mySystemTheme = SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: $constants.palette.lightBlue,
    );

    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<ApplicationLocaleBloc>()..add(InitApplicationLocaleEvent()),
        ),
      ],
      child: BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
        builder: (BuildContext context, ApplicationLocaleState state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: $constants.appTitle,
            theme: widget.theme,
            routerConfig: _appRouter.config(),
            locale: state.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          );
        },
      ),
    );
  }

  Future<dynamic> onSelectNotification(payload) async {
    Map<String, dynamic> action = jsonDecode(payload);
    _handleMessage(action);
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
