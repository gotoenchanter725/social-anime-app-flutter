part of 'carousel_photo_bloc.dart';

@immutable
abstract class CarouselPhotoEvent {}

class OnTapChangeImage extends CarouselPhotoEvent {
  final TapUpDetails details;
  final int maxLenght;

  OnTapChangeImage({required this.details, required this.maxLenght});
}

class OnTapIndicator extends CarouselPhotoEvent {
  final int index;

  OnTapIndicator({required this.index});
}
