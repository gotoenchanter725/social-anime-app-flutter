class ChatRoomParams {
  final String roomId;
  final User reciepient;
  final User currentUser;
  final bool isOnline;

  ChatRoomParams({
    required this.roomId,
    required this.reciepient,
    required this.currentUser,
    this.isOnline = false,
  });
}

class User {
  final String id;
  final String name;
  final String profileUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.profileUrl,
    this.isOnline = false,
  });
}
