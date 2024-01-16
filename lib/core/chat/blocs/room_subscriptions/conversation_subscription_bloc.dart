import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';

class ConversationSubscriptionsBloc
    extends ActionCableBloc<Map<String, dynamic>> {
  ConversationSubscriptionsBloc() : super('NotificationChannel', {}) {
    connect();
  }
}
