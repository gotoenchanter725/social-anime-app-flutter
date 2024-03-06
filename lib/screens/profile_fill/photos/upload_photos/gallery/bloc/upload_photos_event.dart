part of 'upload_photos_bloc.dart';


@immutable
abstract class UploadPhotosEvent {}

class OnInitAssetsListLengthEvent extends UploadPhotosEvent {
  final int count;

  OnInitAssetsListLengthEvent({required this.count});
}

class OnFetchAlbumsListEvent extends UploadPhotosEvent {
  OnFetchAlbumsListEvent();
}

class OnFetchAssetsListEvent extends UploadPhotosEvent {
  final AssetPathEntity album;

  OnFetchAssetsListEvent({required this.album});
}

class OnChangeSelectedAssetsListEvent extends UploadPhotosEvent {
  final AssetEntity selectedPhoto;

  OnChangeSelectedAssetsListEvent({required this.selectedPhoto});
}

class OnChangePhotoManagerStepEvent extends UploadPhotosEvent {
  final PhotoManagerStep step;

  OnChangePhotoManagerStepEvent({required this.step});
}
