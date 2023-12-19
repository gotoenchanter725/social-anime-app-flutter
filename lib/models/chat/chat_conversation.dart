import 'package:senpai/models/chat/chat_room_params.dart';

class ChatConversation {
  final String id;
  final String contactName;
  final String profileUrl;
  final String lastMessage;
  final bool isOnline;
  final DateTime roomCreationDate;
  final DateTime lastMessageTime;
  final int unreadMessagesCount;
  final bool isTyping;
  final bool isMuted;
  final bool isPinned;
  final bool hasAttachment;
  final User currentUser;
  final User reciever;

  ChatConversation({
    required this.id,
    required this.contactName,
    required this.profileUrl,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.unreadMessagesCount,
    required this.currentUser,
    required this.reciever,
    required this.roomCreationDate,
    this.isTyping = false,
    this.isMuted = false,
    this.isPinned = false,
    this.hasAttachment = false,
    this.isOnline = false,
  });
}
