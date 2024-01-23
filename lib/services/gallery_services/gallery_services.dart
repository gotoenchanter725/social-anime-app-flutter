import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';


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
  Future<List<AssetPathEntityWithCount>> loadAlbumsWithItemCount(
    RequestType requestType,
  ) async {
    var permission = await PhotoManager.requestPermissionExtend();
    List<AssetPathEntityWithCount> assetPathEntityWithCount = [];

    if (permission.isAuth == true) {
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
    } else {
      PhotoManager.openSetting();
    }
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
