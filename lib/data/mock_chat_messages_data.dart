import 'package:senpai/models/chat/chat_message.dart';

final List<ChatMessage> mockConversation = [
  ChatMessage(
    id: '1',
    senderId: 'user1',
    text: 'Hello!',
    timestamp: DateTime.now().subtract(const Duration(days: 1)),
    isRead: true,
  ),
  ChatMessage(
    id: '2',
    senderId: 'user2',
    text: 'Hi there!',
    timestamp: DateTime.now().subtract(const Duration(hours: 3)),
    isRead: true,
  ),
  ChatMessage(
    id: '3',
    senderId: 'user1',
    text: 'How are you?',
    timestamp: DateTime.now().subtract(const Duration(minutes: 30)),
    isRead: true,
  ),
  ChatMessage(
    id: '4',
    senderId: 'user2',
    text: 'I\'m good, thanks! :heart: ',
    timestamp: DateTime.now().subtract(const Duration(minutes: 25)),
    isRead: true,
  ),
  ChatMessage(
    id: '5',
    senderId: 'user1',
    text: 'That\'s great to hear!',
    timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
    isRead: true,
  ),
];
