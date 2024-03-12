import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/services/gallery_services/gallery_services.dart';

part 'upload_photos_event.dart';
part 'upload_photos_state.dart';

enum PhotoManagerStep {
  photoManager,
  galleryAlbums,
  galleryPhotos,
}

class UploadPhotosBloc extends Bloc<UploadPhotosEvent, UploadPhotosState> {
  PhotoManagerStep step = PhotoManagerStep.photoManager;
  int maxCount = 6;
  RequestType requestType = RequestType.image;
  List<AssetEntity> assetsList = [];
  List<AssetPathEntityWithCount> albumList = [];
  List<AssetEntity> selectedAssetsList = [];
  File? selectedFile;

  UploadPhotosBloc() : super(GalleryInitial()) {
    on<OnInitAssetsListLengthEvent>((event, emit) {
      if (event.count > 0) {
        emit(ValidState());
        maxCount -= event.count;
      }
    });

    on<OnFetchAlbumsListEvent>((event, emit) async {
      emit(LoadingUploadPhotosState());
      try {
        albumList = await GalleryServices().loadAlbumsWithItemCount(
          requestType,
        );
        emit(ValidState());
      } catch (e) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });

    on<OnFetchAssetsListEvent>((event, emit) async {
      emit(LoadingUploadPhotosState());
      try {
        await GalleryServices().loadAssets(event.album).then((value) {
          assetsList = value;
          step = PhotoManagerStep.galleryPhotos;
        });
        emit(ValidState());
      } catch (e) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });

    on<OnChangeSelectedAssetsListEvent>((event, emit) async {
      if (selectedAssetsList.contains(event.selectedPhoto) == true) {
        selectedAssetsList.remove(event.selectedPhoto);

        final filePath = selectedAssetsList.isNotEmpty
            ? await selectedAssetsList.last.file
            : null;
        selectedFile = filePath;
      } else if (selectedAssetsList.length < maxCount) {
        final filePath = await event.selectedPhoto.file;
        selectedFile = filePath;
        selectedAssetsList.add(event.selectedPhoto);
      }
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
    });

    on<OnChangePhotoManagerStepEvent>((event, emit) async {
      final hasPermissions =
          await GalleryServices().havePermissionsForGallery();
      if (hasPermissions) {
        step = event.step;
        emit(ChangeStepSuccessfulState());
      }
    });
  }
}
