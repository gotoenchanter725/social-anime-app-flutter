import 'package:flutter_bloc/flutter_bloc.dart';

class LobbyCubit extends Cubit<int> {
  LobbyCubit() : super(0);

  void setNumberOfPeople(int number) => emit(number);
}
