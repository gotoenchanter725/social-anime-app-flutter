import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senpai/core/app/app.dart';
import 'package:senpai/core/notification/notification_manager.dart';
// import 'package:senpai/core/bloc_observer/bloc_observer.dart';
import 'package:senpai/core/sentry/sentry_module.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/i18n/strings.g.dart';
import 'package:senpai/models/auth/device_token_model.dart';
import 'package:senpai/theme/app_theme.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:universal_platform/universal_platform.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
    await configureInjection(Environment.prod);

    // Inits sentry for error tracking.
    await initializeSentry();

    // Inits firebase for push notifications.
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    String? token = await messaging.getToken();
    if (env.debug) {
      logIt.debug('Token: $token');
    }
    DeviceTokenModel? savedToken =
        await getIt<TokenStorage<DeviceTokenModel>>().read();
    if (savedToken == null || savedToken.token != token) {
      await getIt<TokenStorage<DeviceTokenModel>>()
          .write(DeviceTokenModel(token: token ?? ''));
    }

    // Listen to notifications.
    final notificationManager = NotificationManager();
    notificationManager.listenToNotifications();

    await notificationManager.initialiseNotificationSettings();

    // Set bloc observer and hydrated bloc storage.
    // Bloc.observer = Observer();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: UniversalPlatform.isWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
    );

    final theme = await createTheme(brightness: Brightness.dark);
    runApp(
      DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: TranslationProvider(
          child: MyApp(theme: theme),
          // child: MatchPage(),
        ),
      ),
    );
  }, (error, stack) async {
    await Sentry.captureException(
      error,
      stackTrace: stack,
    );
  });
}
