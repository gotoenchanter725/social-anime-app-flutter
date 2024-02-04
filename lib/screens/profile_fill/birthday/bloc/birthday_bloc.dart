import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/methods/utils.dart';

part 'birthday_event.dart';
part 'birthday_state.dart';

class BirthdayBloc extends Bloc<BirthdayEvent, BirthdayState> {
  DateTime? birthdayDate;
  List<String> birthdayDateList = ['D', 'D', 'M', 'M', 'Y', 'Y', 'Y', 'Y'];

  DateTime firstDate = DateTime(1900);
  DateTime lastDate = DateTime(
    DateTime.now().year - 18,
    DateTime.now().month,
    DateTime.now().day - 1,
  );

  BirthdayBloc() : super(BirthdayInitial()) {
    on<OnBirthdayInitEvent>((event, emit) {
      if (event.birthday != null) {
        emit(ValidState());
        birthdayDate = event.birthday;
        birthdayDateList = convertDateTimeToList(birthdayDate!);
      }
    });
    on<OnBirthdayChangedEvent>((event, emit) {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
      birthdayDateList = convertDateTimeToList(event.birthday);
      birthdayDate = event.birthday;
    });

    on<NextTappedEvent>((event, emit) async {
      if (birthdayDate != null) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(BirthdaySucssesfulState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });
  }
}
