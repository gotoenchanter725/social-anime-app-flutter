import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senpai/core/app/app.dart';
// import 'package:senpai/core/bloc_observer/bloc_observer.dart';
import 'package:senpai/core/sentry/sentry_module.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/i18n/strings.g.dart';
import 'package:senpai/models/auth/device_token_model.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/theme/app_theme.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:universal_platform/universal_platform.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

AndroidNotificationChannel? channel;

FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
late FirebaseMessaging messaging;

void notificationTapBackground(NotificationResponse notificationResponse) {
  logIt.info('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

Future<void> main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
    await configureInjection(Environment.prod);

    // Inits sentry for error tracking.
    await initializeSentry();
    await R.ensureInitialized();

    // Inits firebase for push notifications.
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
    if (apnsToken != null) {
      // APNS token is available, make FCM plugin API requests...
      logIt.debug('APN Token: $apnsToken');
    }

    String? token = await messaging.getToken();
    if (env.debug) {
      logIt.debug('Firebase Token: $token');
    }

    // Set the background messaging handler early on, as a named top-level function
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    channel = const AndroidNotificationChannel(
        'makeshift.inc.senpai/notification', // id
        'senpai', // title
        importance: Importance.high,
        enableLights: true,
        enableVibration: true,
        showBadge: true,
        playSound: true);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iOS = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: iOS);

    await flutterLocalNotificationsPlugin!.initialize(initSettings,
        onDidReceiveNotificationResponse: notificationTapBackground,
        onDidReceiveBackgroundNotificationResponse: notificationTapBackground);

    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    DeviceTokenModel? savedToken =
        await getIt<TokenStorage<DeviceTokenModel>>().read();
    if (savedToken == null || savedToken.token != token) {
      await getIt<TokenStorage<DeviceTokenModel>>()
          .write(DeviceTokenModel(token: token ?? ''));
    }

    // Listen to notifications.

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
        child: MyApp(theme: theme),
      ),
    );
  }, (error, stack) async {
    await Sentry.captureException(
      error,
      stackTrace: stack,
    );
  });
}
