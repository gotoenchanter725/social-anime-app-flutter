import 'package:action_cable/action_cable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/utils/methods/aliases.dart';

part 'action_cable_event.dart';
part 'action_cable_state.dart';
part 'action_cable_bloc.freezed.dart';

abstract class ActionCableBloc<T>
    extends Bloc<ActionCableEvent<T>, ActionCableState<T?>> {
  late ActionCable _actionCable;
  final String _channelName;

  final Map<String, dynamic> _params;

  T parseData(Map<String, dynamic>? data);

  ActionCableBloc(this._channelName, this._params)
      : super(const ActionCableState.initial()) {
    on<ActionCableEvent<T>>(_onEvent);
  }

  void _onEvent(
    ActionCableEvent<T> event,
    Emitter<ActionCableState<T?>> emit,
  ) async {
    await event.map(
      connect: (e) async {
        final storage = getIt<TokenStorage<AuthModel>>();
        AuthModel? authModel = await storage.read();
        if (authModel == null) {
          emit(const ActionCableState.error());
          return;
        }
        String url = "${env.webSocketUrl}?token=${authModel.token}";
        _actionCable = ActionCable.Connect(url, onConnected: () {
          emit(const ActionCableState.connected());
        }, onConnectionLost: () {
          emit(const ActionCableState.disconnected());
        }, onCannotConnect: () {
          emit(const ActionCableState.error());
        });
      },
      disconnect: (e) {
        _actionCable.disconnect();
      },
      subscribe: (e) {
        _actionCable.subscribe(
          _channelName,
          channelParams: _params,
          onSubscribed: () {
            emit(const ActionCableState.subscribed());
          },
          onMessage: (Map<dynamic, dynamic> data) {
            emit(ActionCableState.data(data: data));
          },
          onDisconnected: () {
            emit(const ActionCableState.unsubscribed());
          },
        );
      },
      unsubscribe: (e) {
        _actionCable.unsubscribe(_channelName);
      },
      performAction: (e) {
        _actionCable.performAction(_channelName,
            action: e.actionName, channelParams: _params, actionParams: e.data);
      },
    );
  }

  void connect() {
    add(const ActionCableEvent.connect());
  }

  void disconnect() {
    add(const ActionCableEvent.disconnect());
  }

  void subscribe() {
    add(const ActionCableEvent.subscribe());
  }

  void unsubscribe() {
    add(const ActionCableEvent.unsubscribe());
  }

  void performAction(String actionName, Map<String, dynamic> data) {
    add(ActionCableEvent.performAction(
      actionName: actionName,
      data: data,
    ));
  }

  void dispose() {
    _actionCable.disconnect();
  }
}
