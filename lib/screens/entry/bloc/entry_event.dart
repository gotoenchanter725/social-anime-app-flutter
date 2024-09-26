part of 'entry_bloc.dart';

@immutable
abstract class EntryEvent {}

class OnChangeStatusAppTrackingEvent extends EntryEvent {
  OnChangeStatusAppTrackingEvent();
}
