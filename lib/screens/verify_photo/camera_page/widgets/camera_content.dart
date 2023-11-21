import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/profile_fill/widgets/custom_close_button.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/screens/verify_photo/camera_page/camera_bloc/camera_bloc.dart';
import 'package:senpai/screens/verify_photo/camera_page/widgets/camera_bottom_buttons.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class CameraContent extends StatelessWidget {
  const CameraContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CameraBloc, CameraState>(
      listenWhen: (_, currState) => currState is CameraSucssesfulState,
      listener: (context, state) {
        final bloc = BlocProvider.of<VerifyPhotoBloc>(context);
        final cameraBloc = BlocProvider.of<CameraBloc>(context);
        if (state is CameraSucssesfulState) {
          bloc.add(OnVerifyPhotoInitEvent(photo: cameraBloc.photo));
          context.router.pop();
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<CameraBloc>(context);
        return Scaffold(
          body: bloc.isCameraInitialized
              ? Stack(
                  children: [
                    Container(
                      color: $constants.palette.black,
                      height: getSize(context).height,
                      width: getSize(context).width,
                    ),
                    AspectRatio(
                      aspectRatio: 1 / bloc.cameraController!.value.aspectRatio,
                      child: bloc.cameraController!.buildPreview(),
                    ),
                    Positioned(
                      top: $constants.insets.offset,
                      left: $constants.insets.sm,
                      right: $constants.insets.sm,
                      child: _buildTopHeader(context),
                    ),
                    Positioned(
                      bottom: $constants.insets.lg,
                      left: $constants.insets.xxl,
                      right: $constants.insets.xxl,
                      child: _buildBottomButtons(context),
                    ),
                  ],
                )
              : const SizedBox(),
        );
      },
    );
  }

  Widget _buildTopHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCloseButton(
          borderColor: Colors.transparent,
          backgroundColor: $constants.palette.appBackground.withOpacity(0.5),
          onTapButton: () {
            context.router.pop();
          },
        ),
        Image.asset(
          PathConstants.verifyUserPhoto,
          width: 128,
          height: 160,
        ),
      ],
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    final bloc = BlocProvider.of<CameraBloc>(context);
    return CameraBottomButtons(
      flashMode: bloc.currentFlashMode,
      onTapLightning: () {
        bloc.add(OnChangeLightningEvent());
      },
      onTapTakePhoto: () {
        bloc.add(OnTakePhotoEvent());
      },
      onTapRotate: () {
        bloc.add(OnChangeRotateEvent());
      },
    );
  }
}
