import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/models/recieved_notification.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/methods/aliases.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

final StreamController<ReceivedNotification> didReceiveLocalNotificationStream =
    StreamController<ReceivedNotification>.broadcast();

final StreamController<String?> selectNotificationStream =
    StreamController<String?>.broadcast();

const MethodChannel platform =
    MethodChannel('makeshift.inc.senpai/notification');

const String portName = 'notification_send_port';

/// A notification action which triggers a url launch event
const String urlLaunchActionId = 'notification_url_launch_action';

/// A notification action which triggers a App navigation event
const String navigationActionId = 'notification_navigation_action';

/// Defines a iOS/MacOS notification category for text input actions.
const String darwinNotificationCategoryText = 'navigation_text_input_action';

/// Defines a iOS/MacOS notification category for plain actions.
const String darwinNotificationCategoryPlain = 'navigation_plain_action';

void notificationTapBackground(NotificationResponse notificationResponse) {
  // ignore: avoid_print
  logIt.info('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    // ignore: avoid_print
    logIt.info(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  logIt.info('Handling a background message: ${message.messageId}');
}

class NotificationManager {
  String? selectedNotificationPayload;

  void listenToNotifications() {
    _listenToForegroundNotifications();
    _listenToBackgroundNotifications();
  }

  Future<void> checkAndRouteIfNotificationLaunchedApp() async {
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        Platform.isLinux
            ? null
            : await flutterLocalNotificationsPlugin
                .getNotificationAppLaunchDetails();
    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      selectedNotificationPayload =
          notificationAppLaunchDetails!.notificationResponse?.payload;
      // TODO: route to the selected page as per the payload
      logIt.info('notification payload: $selectedNotificationPayload');
    }
  }

  Future<void> initialiseNotificationSettings() async {
    try {
      var initializationSettingsAndroid =
          const AndroidInitializationSettings('@mipmap/ic_launcher');
      var initializationSettingsDarwin = const DarwinInitializationSettings();
      final InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
      );
      await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) {
          switch (notificationResponse.notificationResponseType) {
            case NotificationResponseType.selectedNotification:
              selectNotificationStream.add(notificationResponse.payload);
              break;
            case NotificationResponseType.selectedNotificationAction:
              if (notificationResponse.actionId == navigationActionId) {
                selectNotificationStream.add(notificationResponse.payload);
              }
              break;
          }
        },
        onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
      );
    } catch (e) {
      logIt.error('Error initializing notification settings: $e');
    }
  }

  void _listenToForegroundNotifications() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      logIt.info('Got a message whilst in the foreground!');
      handleNotification(message);
    });
  }

  void _showLocalNotification(RemoteMessage message) {
    final notification = message.notification;
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'makeshift.inc.senpai/notification',
      'Senpai Notifications',
      channelDescription:
          'This channel is used for all application notifications',
      importance: Importance.high,
      priority: Priority.high,
      ticker: 'ticker',
    );
    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();
    const platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    flutterLocalNotificationsPlugin.show(
      0,
      notification!.title,
      notification.body,
      platformChannelSpecifics,
      payload: message.data['type'],
    );
  }

  void handleNotification(RemoteMessage message) {
    // Show a local notification
    _showLocalNotification(message);
    // Execute the corresponding handler based on the notification type
    final String type = message.data['type'];
    final Function? handler = _notificationHandlers[type];
    if (handler != null) {
      handler(message);
    } else {
      // Optional: Handle unknown notification type if needed
    }
  }

  void _listenToBackgroundNotifications() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  // Define a map of handlers for each notification type
  Map<String, Function> get _notificationHandlers => {
        'new_match': _handleNewMatch,
        'verify_profile': _handleVerifyProfile,
        'new_message': _handleNewMessage,
      };

  void _handleNewMatch(RemoteMessage message) {
    appRouter.push(HomeRoute());
  }

  void _handleVerifyProfile(RemoteMessage message) {
    appRouter.push(HomeRoute());
  }

  void _handleNewMessage(RemoteMessage message) {
    final match = message.data['match'];
    final sender = match['receiver']; // Assuming match is a Map
    final user = match['currentUser'];
    appRouter.push(
      ChatRoute(
        roomArgs: ChatRoomParams(
          roomId: match['id'],
          isOnline: match['isOnline'],
          reciepient: User(
              id: sender['id'],
              name: sender['name'],
              profileUrl: sender['profileUrl']),
          currentUser: User(
              id: user['id'],
              name: user['name'],
              profileUrl: user['profileUrl']),
          createdDate: DateTime.parse(match['roomCreationDate']),
        ),
      ),
    );
  }
}
