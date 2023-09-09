import 'package:senpai/models/chat/chat_conversation.dart';

final List<ChatConversation> mockChatItems = [
  ChatConversation(
    id: '1',
    contactName: 'Alice',
    lastMessage: 'Hi there!',
    lastMessageTime: DateTime.now(),
    profileUrl:
        'https://images.pexels.com/photos/6426224/pexels-photo-6426224.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    unreadMessagesCount: 2,
  ),
  ChatConversation(
    id: '2',
    contactName: 'Bob',
    lastMessage: 'Hello!',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 1)),
    profileUrl:
        'https://images.pexels.com/photos/4926674/pexels-photo-4926674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    unreadMessagesCount: 0,
  ),
  ChatConversation(
    id: '3',
    contactName: 'Charlie',
    lastMessage: 'Hey!',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 2)),
    profileUrl:
        'https://images.pexels.com/photos/5226193/pexels-photo-5226193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    unreadMessagesCount: 1,
  ),
];
