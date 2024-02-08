import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senpai/l10n/resources.dart';

part 'camera_event.dart';
part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  File? photo;
  CameraController? cameraController;

  ResolutionPreset currentResolutionPreset = ResolutionPreset.max;
  List<CameraDescription> cameraDescriptionList = [];

  bool isRearCameraSelected = true;
  bool isCameraInitialized = false;
  FlashMode? currentFlashMode;

  CameraBloc() : super(CameraInitial()) {
    on<OnCameraInitEvent>((event, emit) {
      if (event.photo != null) {
        emit(ValidState());
        photo = event.photo;
      }
    });

    on<OnInitCameraEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final cameraDescription = await availableCameras();
        cameraDescriptionList = cameraDescription;

        cameraController = CameraController(
          cameraDescriptionList[0],
          currentResolutionPreset,
          imageFormatGroup: ImageFormatGroup.jpeg,
        );

        if (cameraController != null) {
          await cameraController?.initialize();
          currentFlashMode = cameraController?.value.flashMode;
          isCameraInitialized = true;
          cameraController!.addListener(() {});
        }
        emit(ValidState());
      } catch (e) {
        emit(ErrorState(message: R.strings.cameraError, isEnabled: true));
      }
    });

    on<OnInitRotateCameraEvent>((event, emit) async {
      emit(LoadingState());
      isRearCameraSelected = !isRearCameraSelected;
      if (cameraController != null) {
        await cameraController!.setDescription(
          isRearCameraSelected
              ? cameraDescriptionList[0]
              : cameraDescriptionList[1],
        );
        currentFlashMode = cameraController?.value.flashMode;
        emit(ValidState());
      } else {
        emit(ErrorState(message: R.strings.cameraError, isEnabled: true));
      }
    });

    on<OnTakePhotoEvent>((event, emit) async {
      emit(LoadingState());

      if (cameraController != null && cameraController!.value.isTakingPicture) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
      try {
        XFile? file = await cameraController?.takePicture();
        if (file != null) {
          photo = File(file.path);

          int currentUnix = DateTime.now().millisecondsSinceEpoch;
          final directory = await getApplicationDocumentsDirectory();
          String fileFormat = photo!.path.split('.').last;

          await photo!
              .copy('${directory.path}/$currentUnix.$fileFormat')
              .then((value) => emit(CameraSucssesfulState()));
        } else {
          emit(ErrorState(message: R.strings.serverError, isEnabled: true));
        }
      } on CameraException catch (_) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });

    on<OnChangeLightningEvent>((event, emit) async {
      emit(LoadingState());

      if (cameraController != null) {
        currentFlashMode = currentFlashMode == FlashMode.torch
            ? FlashMode.off
            : FlashMode.torch;
        await cameraController!.setFlashMode(currentFlashMode ?? FlashMode.off);
        emit(ValidState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });

    on<OnChangeRotateEvent>((event, emit) async {
      emit(LoadingState());
      isRearCameraSelected = !isRearCameraSelected;
      if (cameraController != null) {
        await cameraController?.setDescription(
          isRearCameraSelected
              ? cameraDescriptionList[0]
              : cameraDescriptionList[1],
        );
        currentFlashMode = cameraController?.value.flashMode;
        await cameraController?.setFlashMode(currentFlashMode ?? FlashMode.off);
        emit(ValidState());
      } else {
        emit(ErrorState(message: R.strings.cameraError, isEnabled: true));
      }
    });
  }

  @override
  Future<void> close() {
    cameraController?.dispose();
    return super.close();
  }
}
