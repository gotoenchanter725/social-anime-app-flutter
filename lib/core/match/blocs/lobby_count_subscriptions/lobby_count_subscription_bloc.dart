import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';

class LobbyCountSubScriptionBloc extends ActionCableBloc<Map<String, dynamic>> {
  LobbyCountSubScriptionBloc() : super('VideoChatLobbyChannel', {}) {
    connect();
  }
}
