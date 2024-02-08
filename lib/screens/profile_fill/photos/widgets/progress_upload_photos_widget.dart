import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/progress_line_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProgressUploadPhotosWidget extends StatelessWidget {
  const ProgressUploadPhotosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<PhotosBloc>(context);
        final isUploadSuccess =
            bloc.uploadedPhotosCount == bloc.newPhotos.length;
        return SizedBox(
          height: $constants.insets.xxl,
          child: ListTile(
            minVerticalPadding: 0,
            contentPadding: const EdgeInsets.all(4),
            titleAlignment: ListTileTitleAlignment.top,
            visualDensity: VisualDensity.compact,
            leading: _buildLeading(),
            title: isUploadSuccess
                ? _buildSuccessfullyTitle(context)
                : _buildProgressTitle(context),
            trailing: _buildTrailing(context),
          ),
        );
      },
    );
  }

  Widget _buildLeading() {
    return Container(
      alignment: Alignment.center,
      height: $constants.insets.xl,
      width: $constants.insets.xl,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: $constants.palette.lightBlue,
      ),
      child: SvgPicture.asset(
        PathConstants.photosIcon,
        width: $constants.insets.md,
        height: $constants.insets.md,
        fit: BoxFit.contain,
        alignment: Alignment.center,
      ),
    );
  }

  Widget _buildProgressTitle(BuildContext context) {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    final uploadedCount = bloc.uploadedPhotosCount;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: $constants.insets.xs),
        Text(
          '${R.strings.uploadingPhoto} $uploadedCount/${bloc.newPhotos.length}',
          textAlign: TextAlign.start,
          style: getTextTheme(context).bodySmall?.copyWith(
                letterSpacing: 0,
              ),
        ),
        SizedBox(height: $constants.insets.xs),
        ProgressLineWidget(
          progressIndex: uploadedCount,
          maxDivisions: bloc.newPhotos.length,
          hasAllBorderRadius: true,
          isLoading: true,
        ),
      ],
    );
  }

  Widget _buildSuccessfullyTitle(BuildContext context) {
    return Text(
      R.strings.yourPhotoSuccessfullyAdded,
      textAlign: TextAlign.start,
      style: getTextTheme(context).bodySmall?.copyWith(
            letterSpacing: 0,
          ),
    );
  }

  Widget _buildTrailing(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop();
      },
      child: SizedBox(
        child: SvgPicture.asset(
          PathConstants.closeIcon,
          width: $constants.insets.md,
          height: $constants.insets.md,
          fit: BoxFit.contain,
          alignment: Alignment.topRight,
        ),
      ),
    );
  }
}
