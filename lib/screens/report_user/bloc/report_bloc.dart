import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/screens/report_user/enums/report_user_enums.dart';

part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportUserReason reportUserReason = ReportUserReason.inappropriateBehavior;

  ReportBloc() : super(ReportInitial()) {
    on<OnReasonChangedEvent>((event, emit) {
      emit(ValidState());
      reportUserReason = event.reportUserReason;
    });
  }
}
