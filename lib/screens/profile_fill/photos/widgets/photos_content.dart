import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/widgets/list_photos_widget.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PhotosContent extends StatelessWidget {
  const PhotosContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildHeader(context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListPhotosWidget(
                    userId: BlocProvider.of<ProfileFillBloc>(context).userId,
                  ),
                  SizedBox(
                    height: $constants.insets.sm,
                  ),
                  _buildHelperText(
                    context,
                    R.strings.youCanChangeOrder,
                  ),
                  _buildHelperText(
                    context,
                    R.strings.justDragPhoto,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildSubmitButton(context),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: R.strings.uploadPhotosText,
      description: R.strings.uploadPhotosDescription,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.biography,
          ),
        );
      },
    );
  }

  Widget _buildHelperText(BuildContext context, String text) {
    return Text(
      text,
      style: getTextTheme(context)
          .labelMedium
          ?.copyWith(color: $constants.palette.grey),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocListener<PhotosBloc, PhotosState>(
      listenWhen: (_, currState) => currState is PhotosSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(OnPhotosListSaveEvent(photos: bloc.uploadedPhotos));
      },
      child: PrimaryButton(
        text: R.strings.nextText,
        onPressed: () async {
          bloc.add(NextTappedEvent());
        },
      ),
    );
  }
}
