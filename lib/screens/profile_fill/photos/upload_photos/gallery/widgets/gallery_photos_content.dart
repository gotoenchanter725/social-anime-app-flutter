import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/bloc/upload_photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/widgets/custom_asset_image.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/widgets/preview_photo_widget.dart';
import 'package:senpai/utils/constants.dart';

class GalleryPhotosContent extends StatelessWidget {
  final UploadPhotosBloc bloc;

  const GalleryPhotosContent({
    super.key,
    required this.bloc,
  });

  void _selectAsset({
    required BuildContext context,
    required AssetEntity assetEntity,
  }) {
    bloc.add(OnChangeSelectedAssetsListEvent(selectedPhoto: assetEntity));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: bloc.assetsList.isEmpty
          ? Center(child: Text(R.strings.noPhotoFoundText))
          : Column(
              children: [
                PreviewPhotoWidget(selectedFile: bloc.selectedFile),
                Expanded(
                  child: _buildAssetsList(),
                ),
              ],
            ),
    );
  }

  Widget _buildAssetsList() {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: bloc.assetsList.length,
      itemBuilder: (context, index) {
        AssetEntity assetEntity = bloc.assetsList[index];
        return _buildAssetWidget(context, assetEntity);
      },
    );
  }

  Widget _buildAssetWidget(BuildContext context, AssetEntity assetEntity) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomAssetImage(
            assetEntity,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: _buildIconButton(context, assetEntity),
          ),
        ),
      ],
    );
  }

  Widget _buildIconButton(BuildContext context, AssetEntity assetEntity) {
    final bool isSelected =
        bloc.selectedAssetsList.contains(assetEntity) == true;
    return GestureDetector(
      onTap: () => _selectAsset(context: context, assetEntity: assetEntity),
      child: Container(
        margin: EdgeInsets.all($constants.insets.xxs),
        height: $constants.insets.md,
        width: $constants.insets.md,
        decoration: BoxDecoration(
          color: isSelected
              ? $constants.palette.blue
              : $constants.palette.black.withOpacity(0.5),
          shape: BoxShape.circle,
          border: Border.all(
            color: $constants.palette.white,
            width: 1,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.check,
            size: $constants.insets.sm,
            color: isSelected ? $constants.palette.white : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
