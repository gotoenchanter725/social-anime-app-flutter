class ChatRoomParams {
  final String roomId;
  final User reciepient;
  final User currentUser;
  final bool isOnline;
  final DateTime createdDate;

  ChatRoomParams({
    required this.roomId,
    required this.reciepient,
    required this.currentUser,
    this.isOnline = false,
    required this.createdDate,
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
