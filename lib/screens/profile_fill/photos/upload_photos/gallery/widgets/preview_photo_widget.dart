import 'dart:io';

import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';

const double _photoHeight = 300;
const double _photoAspectRatio = 6 / 8;

class PreviewPhotoWidget extends StatelessWidget {
  final File? selectedFile;

  const PreviewPhotoWidget({super.key, this.selectedFile});
  @override
  Widget build(BuildContext context) {
    if (selectedFile != null) {
      return Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: _photoHeight,
            child: AspectRatio(
              aspectRatio: _photoAspectRatio,
              child: Image(
                image: FileImage(selectedFile!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _buildMeshContainer(),
        ],
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildMeshContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.insets.sm),
        border: Border.all(
          color: $constants.palette.white,
          width: 1.0,
        ),
      ),
      height: _photoHeight - $constants.insets.xxs,
      child: AspectRatio(
        aspectRatio: _photoAspectRatio,
        child: CustomPaint(
          size: Size.infinite,
          painter: MeshPainter(),
        ),
      ),
    );
  }
}

class MeshPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double stepX = _photoHeight / 4;
    const double stepY = _photoHeight / 3;
    final Paint paint = Paint()
      ..color = $constants.palette.white
      ..strokeWidth = 1.0;

    for (double x = stepX; x < size.width; x += stepX) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    for (double y = stepY; y < size.height; y += stepY) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
