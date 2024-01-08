import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';

class OnlineStatusBloc extends ActionCableBloc<Map<String, dynamic>> {
  OnlineStatusBloc() : super('AppearanceChannel', {}) {
    connect();
  }

  void appear(String appearingOn) {
    performAction('appear', {'appearing_on': appearingOn});
  }

  void disappear() {
    performAction('disappear', {});
  }
}
