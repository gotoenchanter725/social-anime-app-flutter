part of 'upload_photos_bloc.dart';

@immutable
abstract class UploadPhotosEvent {}

class OnInitAssetsListLenghtEvent extends UploadPhotosEvent {
  final int count;

  OnInitAssetsListLenghtEvent({required this.count});
}

class OnFetchdAlbumsListEvent extends UploadPhotosEvent {
  OnFetchdAlbumsListEvent();
}

class OnFetchdAssetsListEvent extends UploadPhotosEvent {
  final AssetPathEntity album;

  OnFetchdAssetsListEvent({required this.album});
}

class OnChangeSelectedAssetsListEvent extends UploadPhotosEvent {
  final AssetEntity selectedPhoto;

  OnChangeSelectedAssetsListEvent({required this.selectedPhoto});
}

class OnChangePhotoManagerStepEvent extends UploadPhotosEvent {
  final PhotoManagerStep step;

  OnChangePhotoManagerStepEvent({required this.step});
}
