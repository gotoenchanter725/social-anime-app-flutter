import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/utils/constants.dart';

part 'carousel_photo_state.dart';
part 'carousel_photo_event.dart';

class CarouselPhotoBloc extends Bloc<CarouselPhotoEvent, CarouselPhotoState> {
  final PageController pageController = PageController(keepPage: false);
  int currentIndex = 0;

  CarouselPhotoBloc() : super(CarouselPhotoInitial()) {
    on<OnTapChangeImage>((event, emit) {
      emit(LoadingState());
      final direction = event.details.localPosition.direction;
      if (direction > $constants.carousel.direction && currentIndex != 0) {
        pageController.previousPage(
          duration: $constants.times.fast,
          curve: Curves.linear,
        );
        currentIndex -= 1;
      }
      if (direction < $constants.carousel.direction &&
          currentIndex < event.maxLenght - 1) {
        pageController.nextPage(
          duration: $constants.times.fast,
          curve: Curves.linear,
        );
        currentIndex += 1;
      }
      emit(ValidState());
    });

    on<OnTapIndicator>((event, emit) {
      emit(LoadingState());
      pageController.animateToPage(
        event.index,
        duration: $constants.times.fast,
        curve: Curves.linear,
      );
      currentIndex = event.index;
      emit(ValidState());
    });
  }
  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
