import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';

class CameraBottomButtons extends StatelessWidget {
  final VoidCallback onTapLightning;
  final VoidCallback onTapTakePhoto;
  final VoidCallback onTapRotate;

  final FlashMode? flashMode;

  const CameraBottomButtons({
    super.key,
    required this.onTapLightning,
    required this.onTapTakePhoto,
    required this.onTapRotate,
    this.flashMode,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onTapLightning,
          child: SvgPicture.asset(
            PathConstants.lightningIcon,
            width: 32,
            height: 32,
            colorFilter: ColorFilter.mode(
              flashMode == FlashMode.torch
                  ? $constants.palette.yellow
                  : $constants.palette.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        InkWell(
          onTap: onTapTakePhoto,
          child: SvgPicture.asset(
            PathConstants.photoCircleIcon,
            width: 72,
            height: 72,
          ),
        ),
        InkWell(
          onTap: onTapRotate,
          child: SvgPicture.asset(
            PathConstants.rotateIcon,
            width: 32,
            height: 32,
          ),
        ),
      ],
    );
  }
}
