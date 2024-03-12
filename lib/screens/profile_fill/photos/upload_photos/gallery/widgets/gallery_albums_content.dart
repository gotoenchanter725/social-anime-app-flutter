import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:senpai/data/path_constants.dart';

import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/bloc/upload_photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/widgets/custom_asset_image.dart';
import 'package:senpai/services/gallery_services/gallery_services.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class GalleryAlbumsContent extends StatelessWidget {
  const GalleryAlbumsContent({super.key});

  void _openGelleryPhotos(BuildContext context, AssetPathEntity album) {
    final bloc = BlocProvider.of<UploadPhotosBloc>(context);
    bloc.add(OnFetchAssetsListEvent(album: album));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadPhotosBloc, UploadPhotosState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<UploadPhotosBloc>(context);
        return SafeArea(
          child: ListView.builder(
            itemCount: bloc.albumList.length,
            itemBuilder: (context, index) {
              final album = bloc.albumList[index];
              return ListTile(
                onTap: () => _openGelleryPhotos(context, album.assetPathEntity),
                minVerticalPadding: 0,
                contentPadding: EdgeInsets.only(left: $constants.insets.sm),
                leading: _buildLeading(album.previewImage),
                title: _buildTitle(
                  context: context,
                  album: album,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildLeading(AssetEntity? previewImage) {
    return previewImage != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular($constants.insets.xxs),
            child: CustomAssetImage(
              previewImage,
              width: $constants.insets.xxl,
              height: $constants.insets.xxl,
            ),
          )
        : SizedBox(
            width: $constants.insets.xxl,
            height: $constants.insets.xxl,
            child: Center(
              child: SvgPicture.asset(
                PathConstants.senpaiLogoIcon,
                width: $constants.insets.xl,
                height: $constants.insets.xl,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          );
  }

  Widget _buildTitle({
    required BuildContext context,
    required AssetPathEntityWithCount album,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: $constants.insets.md),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: $constants.palette.buttonBorder,
          ),
        ),
      ),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: getTextTheme(context).titleMedium,
          children: [
            TextSpan(text: album.assetPathEntity.name),
            const TextSpan(text: '\n'),
            TextSpan(
              text: album.assetCount.toString(),
              style: getTextTheme(context).labelMedium!.copyWith(
                    color: $constants.palette.grey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
