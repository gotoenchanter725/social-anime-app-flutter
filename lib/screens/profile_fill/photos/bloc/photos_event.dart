part of 'photos_bloc.dart';

@immutable
abstract class PhotosEvent {}

class OnPhotosInitEvent extends PhotosEvent {
  final String photos;

  OnPhotosInitEvent({required this.photos});
}

class OnChangedPhotoByCameraEvent extends PhotosEvent {
  final File photo;

  OnChangedPhotoByCameraEvent({required this.photo});
}

class OnUploadPhotosEvent extends PhotosEvent {
  final List<AssetEntity> photos;

  OnUploadPhotosEvent({required this.photos});
}

class OnPhotoDeleteEvent extends PhotosEvent {
  final int index;

  OnPhotoDeleteEvent({required this.index});
}

class OnPhotoChangeIndexEvent extends PhotosEvent {
  final int oldIndex;
  final int newIndex;

  OnPhotoChangeIndexEvent({required this.oldIndex, required this.newIndex});
}

class OnChangeShowProgressDialogEvent extends PhotosEvent {
  final bool isShowDialog;

  OnChangeShowProgressDialogEvent({required this.isShowDialog});
}

class OnChangeUploadedPhotosCountEvent extends PhotosEvent {
  OnChangeUploadedPhotosCountEvent();
}

class OnChangeUploadedPhotosFromServerEvent extends PhotosEvent {
  final List<UploadPhotoModel> uploadedPhotos;

  OnChangeUploadedPhotosFromServerEvent(this.uploadedPhotos);
}

class OnRestartShowPhotosEvent extends PhotosEvent {
  OnRestartShowPhotosEvent();
}

class NextTappedEvent extends PhotosEvent {}

class DeleteLastPhotoEvent extends PhotosEvent {}
