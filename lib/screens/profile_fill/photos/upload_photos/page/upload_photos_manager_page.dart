import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/gallery/bloc/upload_photos_bloc.dart';

import 'package:senpai/screens/profile_fill/photos/upload_photos/widgets/upload_photos_manager_content.dart';

import 'package:senpai/utils/constants.dart';

@RoutePage()
class UploadPhotosManagerPage extends StatelessWidget {
  final PhotosBloc bloc;

  const UploadPhotosManagerPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: bloc),
        BlocProvider<UploadPhotosBloc>(
          create: (context) => UploadPhotosBloc()
            ..add(OnInitAssetsListLengthEvent(
              count: bloc.uploadedPhotos.length,
            )),
        ),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: Stack(
          children: [
            const UploadPhotosManagerContent(),
            _buildGalleryLoadingListeners()
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryLoadingListeners() {
    return BlocBuilder<UploadPhotosBloc, UploadPhotosState>(
      builder: (context, state) {
        return state is LoadingUploadPhotosState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
