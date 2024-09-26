import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  int pageIndex = 0;
  final pageController = PageController(initialPage: 0);

  OnboardingBloc() : super(OnboardingInitial()) {
    on<PageChangedEvent>((event, emit) {
      if (pageIndex == 2 || event.pageIndex == 2) {
        if (Platform.isIOS) {
          emit(CheckAppTrackingTransparencyState());
        } else {
          emit(NextScreenState());
        }
        return;
      }

      pageIndex += 1;

      pageController.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );

      emit(PageChangedState(counter: pageIndex));
    });

    on<PageSwipedEvent>((event, emit) {
      pageIndex = event.index;
      emit(PageChangedState(counter: pageIndex));
    });

    on<OnChangeStatusAppTrackingEvent>((event, emit) {
      emit(OnboardingInitial());
      emit(NextScreenState());
    });
  }
}
