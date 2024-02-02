import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/methods/aliases.dart';

class NotificationManager {
  void listenToNotifications() {
    _listenToForegroundNotifications();
    _listenToBackgroundNotifications();
  }

  void _listenToForegroundNotifications() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      handleNotification(message);
    });
  }

  void handleNotification(RemoteMessage message) {
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

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();

    handleNotification(message);
  }

  // Define a map of handlers for each notification type
  Map<String, Function> get _notificationHandlers => {
        'new_match': _handleNewMatch,
        'verify_profile': _handleVerifyProfile,
        'new_message': _handleNewMessage,
      };

  void _handleNewMatch(RemoteMessage message) {
    appRouter.push(const HomeRoute());
  }

  void _handleVerifyProfile(RemoteMessage message) {
    appRouter.push(const HomeRoute());
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
