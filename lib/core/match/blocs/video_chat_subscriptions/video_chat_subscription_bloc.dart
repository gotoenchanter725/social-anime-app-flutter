import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';

class VideoChatSubscriptionsBloc extends ActionCableBloc<Map<String, dynamic>> {
  VideoChatSubscriptionsBloc() : super('VideoChatRequestChannel', {}) {
    connect();
  }
}
