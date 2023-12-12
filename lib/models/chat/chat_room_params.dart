class ChatRoomParams {
  final String roomId;
  final String reciepientName;
  final String reciepientProfileUrl;
  final bool isOnline;

  ChatRoomParams({
    required this.roomId,
    required this.reciepientName,
    required this.reciepientProfileUrl,
    this.isOnline = false,
  });
}
