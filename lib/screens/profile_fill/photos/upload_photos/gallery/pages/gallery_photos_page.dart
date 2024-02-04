import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/bloc/upload_photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/widgets/gallery_photos_content.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/widgets/photos_app_bar_leading.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class GalleryPhotosPage extends StatelessWidget {
  const GalleryPhotosPage({
    super.key,
  });

  String _appBarTitle(BuildContext context) {
    final bloc = BlocProvider.of<UploadPhotosBloc>(context);

    if (bloc.selectedAssetsList.isNotEmpty) {
      return '${R.strings.selectedText} ${bloc.selectedAssetsList.length} '
          '${R.strings.ofText} ${bloc.maxCount}';
    } else {
      return R.strings.recentsText;
    }
  }

  void _onTapBack(BuildContext context) {
    final bloc = BlocProvider.of<UploadPhotosBloc>(context);

    bloc.add(OnChangePhotoManagerStepEvent(
      step: PhotoManagerStep.galleryAlbums,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadPhotosBloc, UploadPhotosState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<UploadPhotosBloc>(context);
        return Scaffold(
          backgroundColor: $constants.palette.darkBlue,
          appBar: SenpaiAppBar(
            leading: PhotosAppBarLeading(
              onTapBack: () => _onTapBack(context),
            ),
            title: _appBarTitle(context),
            actions: [_buildAppBarAction(context)],
          ),
          body: GalleryPhotosContent(bloc: bloc),
        );
      },
    );
  }

  Widget _buildAppBarAction(BuildContext context) {
    final bloc = BlocProvider.of<UploadPhotosBloc>(context);
    if (bloc.assetsList.isEmpty) {
      return const SizedBox.shrink();
    }
    return GestureDetector(
      onTap: () {
        final blocPhotos = BlocProvider.of<PhotosBloc>(context);
        blocPhotos.add(OnUploadPhotosEvent(photos: bloc.selectedAssetsList));
        context.router.pop();
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(right: $constants.insets.sm),
          child: Text(
            R.strings.doneText,
            style: getTextTheme(context).titleSmall,
          ),
        ),
      ),
    );
  }
}
