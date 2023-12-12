class ChatConversation {
  final String id;
  final String contactName;
  final String profileUrl;
  final String lastMessage;
  final bool isOnline;
  final DateTime lastMessageTime;
  final int unreadMessagesCount;
  final bool isTyping;
  final bool isMuted;
  final bool isPinned;
  final bool hasAttachment;

  ChatConversation({
    required this.id,
    required this.contactName,
    required this.profileUrl,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.unreadMessagesCount,
    this.isTyping = false,
    this.isMuted = false,
    this.isPinned = false,
    this.hasAttachment = false,
    this.isOnline = false,
  });
}
