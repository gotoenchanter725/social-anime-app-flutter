part of 'report_bloc.dart';

@immutable
abstract class ReportEvent {}

class OnReasonChangedEvent extends ReportEvent {
  final ReportUserReason reportUserReason;

  OnReasonChangedEvent({required this.reportUserReason});
}
