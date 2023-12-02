import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';

class OnlineStatusBloc extends ActionCableBloc<Map<String, dynamic>> {
  OnlineStatusBloc() : super('AppearanceChannel', {});

  @override
  Map<String, dynamic> parseData(Map<String, dynamic>? data) {
    // TODO: Implement  logic to parse the data from WebSocket
    print(data);
    return data ?? {};
  }

  void appear(String appearingOn) {
    performAction('appear', {'appearing_on': appearingOn});
  }

  void disappear() {
    performAction('disappear', {});
  }

  @override
  void connect() {
    super.connect();
    subscribe();
  }

  @override
  void disconnect() {
    unsubscribe(); // Unsubscribe before disconnecting
    super.disconnect();
  }
}
