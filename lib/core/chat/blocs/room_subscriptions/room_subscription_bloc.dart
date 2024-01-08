import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/models/chat/chat_message.dart';

class RoomSubscriptionsBloc extends ActionCableBloc<Map<String, dynamic>> {
  final String roomId;
  RoomSubscriptionsBloc({
    required this.roomId,
  }) : super('RoomChannel', {"room_id": roomId}) {
    connect();
  }

  void enterRoom(String roomId) {
    performAction('enter', {'room_id': roomId});
  }

  void subscribeToRoom() {
    subscribe();
  }

  void speakInRoom(String roomId, ChatMessage message) {
    performAction('speak', {
      'room_id': roomId,
      'message': message.text,
      'sticker_id': message.sticker?.id,
      'reaction': message.reaction,
    });
  }
}
