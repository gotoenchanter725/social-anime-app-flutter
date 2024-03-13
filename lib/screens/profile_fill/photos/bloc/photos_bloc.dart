import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/photos/upload_photo_model.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  List<File> newPhotos = [];
  List<AssetEntity> selectedAssetsList = [];
  bool isShowProgressDialog = false;
  int uploadedPhotosCount = 0;

  List<UploadPhotoModel> uploadedPhotos = [];

  PhotosBloc() : super(PhotosInitial()) {
    on<OnPhotosInitEvent>((event, emit) {
      if (event.photos.isNotEmpty) {
        emit(ValidState());
      }
    });

    on<OnRestartShowPhotosEvent>((event, emit) async {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
    });

    on<OnChangeShowProgressDialogEvent>((event, emit) {
      isShowProgressDialog = event.isShowDialog;
      emit(ValidState());
    });

    on<OnChangeUploadedPhotosCountEvent>((event, emit) {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      uploadedPhotosCount += 1;
      emit(ValidState());
    });

    on<OnChangedPhotoByCameraEvent>((event, emit) {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
      newPhotos = [];
      uploadedPhotosCount = 0;
      newPhotos.add(event.photo);
      emit(PhotosReadyToSendState());
    });

    on<OnUploadPhotosEvent>((event, emit) async {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
      selectedAssetsList = event.photos;
      newPhotos = [];
      uploadedPhotosCount = 0;
      for (var item in selectedAssetsList) {
        final file = await item.file;
        newPhotos.add(file!);
      }
      emit(PhotosReadyToSendState());
    });

    on<OnPhotoDeleteEvent>((event, emit) {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
      uploadedPhotos.removeAt(event.index);
    });

    on<OnPhotoChangeIndexEvent>((event, emit) {
      final element = uploadedPhotos.removeAt(event.oldIndex);
      uploadedPhotos.insert(event.newIndex, element);
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      emit(ValidState());
      emit(PhotosReorderReadyToSendState());
    });

    on<OnChangeUploadedPhotosFromServerEvent>((event, emit) {
      emit(ErrorState(message: R.strings.serverError, isEnabled: false));
      uploadedPhotos = [];
      uploadedPhotos.addAll(event.uploadedPhotos);
      uploadedPhotos.sort((a, b) => a.order!.compareTo(b.order!));
      emit(ValidState());
    });

    on<NextTappedEvent>((event, emit) async {
      if (uploadedPhotos.length >= 2) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(PhotosSucssesfulState());
      } else {
        emit(ErrorState(
          message: R.strings.uploadPhotosDescription,
          isEnabled: true,
        ));
      }
    });

    on<DeleteLastPhotoEvent>((event, emit) async {
      if (uploadedPhotos.length > 1) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
      } else {
        emit(ErrorState(
          message: R.strings.uploadPhotoError,
          isEnabled: true,
        ));
      }
    });
  }
}
