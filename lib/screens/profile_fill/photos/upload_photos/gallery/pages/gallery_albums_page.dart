import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/bloc/upload_photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/widgets/gallery_albums_content.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/widgets/photos_app_bar_leading.dart';
import 'package:senpai/utils/constants.dart';

class GalleryAlbumsPage extends StatelessWidget {
  const GalleryAlbumsPage({super.key});

  void _onTapBack(BuildContext context) {
    final bloc = BlocProvider.of<UploadPhotosBloc>(context);

    bloc.add(OnChangePhotoManagerStepEvent(
      step: PhotoManagerStep.photoManager,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: R.strings.galleryText,
        leading: PhotosAppBarLeading(
          onTapBack: () => _onTapBack(context),
        ),
      ),
      body: const GalleryAlbumsContent(),
    );
  }
}
