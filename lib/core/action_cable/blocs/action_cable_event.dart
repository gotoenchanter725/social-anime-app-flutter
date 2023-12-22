part of 'action_cable_bloc.dart';

@freezed
class ActionCableEvent<T> with _$ActionCableEvent<T> {
  const factory ActionCableEvent.connect() = _ActionCableEventConnect<T>;

  const factory ActionCableEvent.disconnect() = _ActionCableEventDisconnect;

  const factory ActionCableEvent.subscribe() = _ActionCableEventSubscribe;

  const factory ActionCableEvent.unsubscribe() = _ActionCableEventUnsubscribe;

  const factory ActionCableEvent.performAction({
    required String actionName,
    required Map<String, dynamic> data,
  }) = _ActionCableEventPerformAction<T>;

  const factory ActionCableEvent.data({
    required T data,
  }) = _ActionCableEventData<T>;

  const factory ActionCableEvent.error({
    required String message,
  }) = _ActionCableEventError<T>;
}
