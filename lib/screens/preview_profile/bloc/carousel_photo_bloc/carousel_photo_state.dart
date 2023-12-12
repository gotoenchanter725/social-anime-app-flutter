part of 'carousel_photo_bloc.dart';

@immutable
abstract class CarouselPhotoState {}

class CarouselPhotoInitial extends CarouselPhotoState {}

class ValidState extends CarouselPhotoState {}

class LoadingState extends CarouselPhotoState {}
