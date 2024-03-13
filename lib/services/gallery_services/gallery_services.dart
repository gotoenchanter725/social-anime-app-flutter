import 'dart:io';

import 'package:photo_manager/photo_manager.dart';

class AssetPathEntityWithCount {
  final AssetPathEntity assetPathEntity;
  final int assetCount;
  final AssetEntity? previewImage;

  AssetPathEntityWithCount({
    required this.assetPathEntity,
    required this.assetCount,
    required this.previewImage,
  });
}

class GalleryServices {
  Future<bool> havePermissionsForGallery() async {
    PermissionState permission = await PhotoManager.requestPermissionExtend();
    if (Platform.isAndroid ||
        permission.isAuth == true ||
        permission == PermissionState.limited) {
      return true;
    } else {
      PhotoManager.openSetting();
      return false;
    }
  }

  Future<List<AssetPathEntityWithCount>> loadAlbumsWithItemCount(
    RequestType requestType,
  ) async {
    List<AssetPathEntityWithCount> assetPathEntityWithCount = [];
    await PhotoManager.getAssetPathList(
      type: requestType,
    ).then((albumList) async {
      for (var item in albumList) {
        final assetCount = await item.assetCountAsync;
        final previewImage = await item.getAssetListRange(start: 0, end: 1);

        assetPathEntityWithCount.add(
          AssetPathEntityWithCount(
            assetPathEntity: item,
            assetCount: assetCount,
            previewImage: previewImage.isNotEmpty ? previewImage.first : null,
          ),
        );
      }
    });
    return assetPathEntityWithCount;
  }

  Future<List<AssetEntity>> loadAssets(AssetPathEntity selectedAlbum) async {
    List<AssetEntity> assetsList = await selectedAlbum.getAssetListRange(
      start: 0,
      end: await selectedAlbum.assetCountAsync + 1,
    );
    return assetsList;
  }
}
