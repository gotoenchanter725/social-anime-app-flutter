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
        emit(const ActionCableState.connected());
      },
      disconnect: (e) {
        emit(const ActionCableState.disconnected());
      },
      subscribe: (e) {
        emit(const ActionCableState.subscribed());
      },
      unsubscribe: (e) {
        emit(const ActionCableState.unsubscribed());
      },
      performAction: (e) {
        // do nothing
      },
      data: (e) {
        emit(ActionCableState.data(data: e.data as Map<dynamic, dynamic>));
      },
      error: (e) {
        emit(ActionCableState.error(message: e.message));
      },
    );
  }

  void connect() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      add(const ActionCableEvent.error(message: "AuthModel is null"));
      return;
    }
    String url = "${env.webSocketUrl}?token=${authModel.token}";
    _actionCable = ActionCable.Connect(url, onConnected: () {
      add(const ActionCableEvent.connect());
    }, onConnectionLost: () {
      add(const ActionCableEvent.error(message: "Connection is lost"));
    }, onCannotConnect: () {
      add(const ActionCableEvent.error(
          message: "Cannot Establish a connection"));
    });
  }

  void disconnect() {
    logIt.error("ActionCable disconnecting");
    _actionCable.disconnect();
    add(const ActionCableEvent.disconnect());
  }

  void subscribe() {
    _actionCable.subscribe(
      _channelName,
      channelParams: _params,
      onSubscribed: () {
        logIt.info("ActionCable subscribed");
        add(const ActionCableEvent.subscribe());
      },
      onMessage: (Map<dynamic, dynamic> data) {
        logIt.info("ActionCable message received");
        add(ActionCableEvent.data(data: data as T));
      },
      onDisconnected: () {
        logIt.error("ActionCable disconnected");
        add(const ActionCableEvent.unsubscribe());
      },
    );
  }

  void performAction(String actionName, Map<String, dynamic> data) {
    _actionCable.performAction(_channelName,
        action: actionName, channelParams: _params, actionParams: data);
    add(ActionCableEvent.performAction(
      actionName: actionName,
      data: data,
    ));
  }

  void dispose() {
    _actionCable.disconnect();
  }

  void unsubscribe() {
    _actionCable.unsubscribe(_channelName);
  }
}
