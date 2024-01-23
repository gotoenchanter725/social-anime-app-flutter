import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:senpai/utils/constants.dart';

class CustomAssetImage extends StatelessWidget {
  final AssetEntity image;
  final double? width;
  final double? height;

  const CustomAssetImage(
    this.image, {
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AssetEntityImage(
      image,
      isOriginal: false,
      thumbnailSize: const ThumbnailSize.square(250),
      fit: BoxFit.cover,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Icon(
            Icons.error,
            color: $constants.palette.red,
          ),
        );
      },
    );
  }
}
