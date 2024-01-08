import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tab_bar_event.dart';
part 'tab_bar_state.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  int currentIndex = 0;
  bool isSelected = false;

  TabBarBloc() : super(TabBarInitial()) {
    on<TabBarItemTappedEvent>((event, emit) {
      currentIndex = event.index;
      emit(TabBarItemSelectedState(index: currentIndex));
    });
  }
}
