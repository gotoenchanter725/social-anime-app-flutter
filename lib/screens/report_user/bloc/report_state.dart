part of 'report_bloc.dart';

@immutable
abstract class ReportState {}

class ReportInitial extends ReportState {}

class ErrorState extends ReportState {
  final String message;

  ErrorState({required this.message});
}

class ValidState extends ReportState {}

class LoadingState extends ReportState {}

class ReportSucssesfulState extends ReportState {}
