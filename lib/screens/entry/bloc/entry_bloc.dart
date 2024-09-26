import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'entry_event.dart';
part 'entry_state.dart';

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  EntryBloc() : super(EntryInitial()) {
    on<OnChangeStatusAppTrackingEvent>((event, emit) async {
      if (Platform.isIOS) {
        //TODO: need for apple store
        await AppTrackingTransparency.requestTrackingAuthorization();
        emit(EntryValidState());
      } else {
        emit(EntryValidState());
      }
    });
  }
}
