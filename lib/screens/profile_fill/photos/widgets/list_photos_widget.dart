import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:senpai/core/profile_fill/blocs/delete_photo/delete_photo_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/reorder_photos/reorder_photos_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/upload_photo/upload_photo_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/dotted_border/dotted_border.dart';
import 'package:senpai/screens/profile_fill/widgets/custom_close_button.dart';

import 'package:senpai/utils/constants.dart';

const double _heightPhoto = 144;

class ListPhotosWidget extends StatelessWidget {
  final int userId;
  final bool isEditProfile;

  const ListPhotosWidget({
    super.key,
    required this.userId,
    this.isEditProfile = false,
  });

  void _onTapOpenGallery(BuildContext context) {
    context.router.push(
      UploadPhotosManagerRoute(
        bloc: BlocProvider.of<PhotosBloc>(context),
      ),
    );
  }

  Future<void> _uploadPhoto(BuildContext context) async {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    for (var i = 0; i < bloc.newPhotos.length; i++) {
      await MultipartFile.fromPath('image', bloc.newPhotos[i].path)
          .then((value) {
        final uploadPhotoBloc = BlocProvider.of<UploadPhotoBloc>(context);
        uploadPhotoBloc.uploadPhoto(
          image: value,
          order: bloc.uploadedPhotos.length + i,
          userId: userId,
        );
      });
    }
  }

  void _onReorderPhotosToServer(BuildContext context) async {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    for (var i = 0; i < bloc.uploadedPhotos.length; i++) {
      final reorderPhotoBloc = BlocProvider.of<ReorderPhotosBloc>(context);
      reorderPhotoBloc.reorderPhotos(
        order: i,
        photoId: bloc.uploadedPhotos[i].id,
      );
    }
  }

  void _onReorderPhotos(
    BuildContext context, {
    required int oldIndex,
    required int newIndex,
  }) {
    final bloc = BlocProvider.of<PhotosBloc>(context);

    bloc.add(OnPhotoChangeIndexEvent(
      oldIndex: oldIndex,
      newIndex: newIndex,
    ));
  }

  void _onPhotoDelete(BuildContext context, {required int index}) {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    final deletePhotoBloc = BlocProvider.of<DeletePhotoBloc>(context);
    if (bloc.uploadedPhotos.length == 1 && isEditProfile) {
      bloc.add(DeleteLastPhotoEvent());
    } else {
      deletePhotoBloc.deletePhoto(
        userId: userId,
        photoId: bloc.uploadedPhotos[index].id,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhotosBloc, PhotosState>(
      listenWhen: (_, currState) =>
          currState is PhotosReadyToSendState ||
          currState is PhotosReorderReadyToSendState,
      listener: (context, state) {
        if (state is PhotosReadyToSendState) {
          _uploadPhoto(context);
        }
        if (state is PhotosReorderReadyToSendState) {
          _onReorderPhotosToServer(context);
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<PhotosBloc>(context);
        return ReorderableGridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          dragEnabled: bloc.uploadedPhotos.length > 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: _heightPhoto,
          ),
          dragWidgetBuilder: (index, child) => _buildDragPhotoWidget(
            context,
            index,
          ),
          onReorder: (oldIndex, newIndex) {
            _onReorderPhotos(
              context,
              newIndex: newIndex,
              oldIndex: oldIndex,
            );
          },
          itemCount: 6,
          itemBuilder: (BuildContext _, int index) {
            final hasPhoto = bloc.uploadedPhotos.length > index;
            return Container(
              key: ValueKey(index.toString()),
              child: _buildItemPhoto(context, hasPhoto, index),
            );
          },
        );
      },
    );
  }

  Widget _buildPhotoWidget(BuildContext context, index) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all($constants.corners.xs),
          child: ClipRRect(
            borderRadius: BorderRadius.circular($constants.corners.md),
            child: _buildDragPhotoWidget(context, index),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CustomCloseButton(
            backgroundColor: $constants.palette.lightBlue,
            borderColor: $constants.palette.darkBlue,
            onTapButton: () => _onPhotoDelete(context, index: index),
          ),
        )
      ],
    );
  }

  Widget _buildItemPhoto(BuildContext context, bool hasPhoto, int index) {
    if (hasPhoto) {
      return _buildPhotoWidget(context, index);
    }
    return Padding(
      padding: EdgeInsets.all($constants.corners.xs),
      child: GestureDetector(
        onLongPress: () => _onTapOpenGallery(context),
        onTap: () => _onTapOpenGallery(context),
        child: DottedBorder(
          radius: Radius.circular($constants.corners.md),
          color: $constants.palette.buttonBorder,
          child: Container(
            alignment: Alignment.center,
            height: _heightPhoto,
            width: double.maxFinite,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular($constants.corners.md),
              ),
              color: $constants.palette.appBackground,
            ),
            child: _buildAddIcon(),
          ),
        ),
      ),
    );
  }

  Widget _buildAddIcon() {
    return SvgPicture.asset(
      PathConstants.addIcon,
      width: $constants.insets.lg,
      height: $constants.insets.lg,
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );
  }

  Widget _buildDragPhotoWidget(BuildContext context, int index) {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    final url = bloc.uploadedPhotos[index].url ?? '';

    return Image(
      key: ValueKey(Random().nextInt(100)),
      image: NetworkImage(url),
      fit: BoxFit.cover,
      height: _heightPhoto,
      width: double.maxFinite,
      repeat: ImageRepeat.noRepeat,
      errorBuilder: (_, __, ___) {
        return GestureDetector(
          onTap: () => bloc.add(OnRestartShowPhotosEvent()),
          child: const Center(
            child: Icon(Icons.refresh),
          ),
        );
      },
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Center(
          child: SenpaiLoading(
            radius: $constants.corners.md,
          ),
        );
      },
    );
  }
}
