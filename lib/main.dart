import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senpai/core/app/app.dart';
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

AndroidNotificationChannel? channel;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  RemoteNotification? notification = message.notification;
  String action = jsonEncode(message.data);
  logIt.debug(message.toMap());

  if (notification == null) {
    return;
  }

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

    String? token = await messaging.getToken();

    // Handle token refresh
    messaging.onTokenRefresh.listen((newToken) async {
      DeviceTokenModel? savedToken =
          await getIt<TokenStorage<DeviceTokenModel>>().read();

      if (savedToken == null || savedToken.token != newToken) {
        // Save the new token
        await getIt<TokenStorage<DeviceTokenModel>>()
            .write(DeviceTokenModel(token: newToken));

        logIt.info('Device token refreshed and updated: $newToken');
      }
    });

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

      logIt.info('Device token updated: $token');
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
