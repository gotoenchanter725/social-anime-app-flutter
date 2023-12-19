import 'package:senpai/models/chat/chat_room_params.dart';

class MatchUserData {
  final String id;
  final String imageUrl;
  final String userName;
  final bool isOnline;
  final User currentUser;
  final User reciever;
  final DateTime roomCreationDate;

  MatchUserData({
    required this.id,
    required this.imageUrl,
    required this.userName,
    required this.currentUser,
    required this.reciever,
    required this.roomCreationDate,
    this.isOnline = false,
  });
}
