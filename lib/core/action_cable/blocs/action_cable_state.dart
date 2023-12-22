part of 'action_cable_bloc.dart';

@freezed
class ActionCableState<T> with _$ActionCableState<T?> {
  const factory ActionCableState.initial() = _ActionCableStateInitial;

  const factory ActionCableState.connected() = _ActionCableStateConnected;

  const factory ActionCableState.disconnected() = _ActionCableStateDisconnected;

  const factory ActionCableState.error({
    required String message,
  }) = _ActionCableStateError<T>;

  const factory ActionCableState.subscribed() = _ActionCableStateSubscribed;

  const factory ActionCableState.unsubscribed() = _ActionCableStateUnsubscribed;

  const factory ActionCableState.data({
    required Map data,
  }) = _ActionCableStateData<T>;
}
