import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';

import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_birthday.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_gender.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_input_widget.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_location_widget.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_occupation_widget.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_spotify_content.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/user_favorite_anime_widget.dart';
import 'package:senpai/screens/profile_fill/desired_gender/enums/desired_gender_enum.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/widgets/list_photos_widget.dart';
import 'package:senpai/screens/profile_fill/user_gender/enums/user_gender_enum.dart';

import 'package:senpai/utils/constants.dart';

class EditProfileContent extends StatelessWidget {
  const EditProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<EditProfileBloc>(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: $constants.insets.md,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      _buildListPhotos(context),
                      SizedBox(height: $constants.insets.md),
                      _buildNameWidget(context, state),
                      SizedBox(height: $constants.insets.sm),
                      _buildBioWidget(context),
                      SizedBox(height: $constants.insets.sm),
                      EditProfileBirthday(
                        birthday:
                            bloc.updateUserModel.birthday ?? bloc.user.birthday,
                      ),
                      SizedBox(height: $constants.insets.sm),
                      EditProfileGender(
                        gender: bloc.updateUserModel.gender ??
                            genderFromServerString(bloc.user.gender),
                        desiredGender: bloc.updateUserModel.desiredGender ??
                            desiredGenderFromServerString(
                                bloc.user.desiredGender),
                      ),
                      SizedBox(height: $constants.insets.sm),
                      EditProfileOccupationWidget(
                        occupation: bloc.updateUserModel.occupation ??
                            bloc.user.occupation ??
                            '',
                        school: bloc.updateUserModel.school ??
                            bloc.user.school ??
                            '',
                      ),
                      SizedBox(height: $constants.insets.sm),
                      EditProfileLocationWidget(
                        displayCity: bloc.user.displayCity ?? '',
                        displayState: bloc.user.displayState ?? '',
                      ),
                      SizedBox(height: $constants.insets.xs),
                      SenpaiSwitchWithTitle(
                        value: bloc.hideLocation,
                        title: R.strings.hideLocationTitle,
                        height: $constants.insets.xl,
                        onChanged: (isHideLocation) {
                          bloc.add(OnChangeHideLocationEvent(
                            isHideLocation: isHideLocation,
                          ));
                        },
                      ),
                      SizedBox(height: $constants.insets.sm),
                      const EditSpotifyContent(),
                      SizedBox(height: $constants.insets.sm),
                      UserFavoriteAnimeWidget(
                        animes: bloc.user.animes ?? [],
                      ),
                      SizedBox(height: $constants.insets.sm),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildListPhotos(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    final userId = int.tryParse(bloc.user.id);

    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (context, state) {
        if (userId != null) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
            color: $constants.palette.appBackground,
            child: ListPhotosWidget(userId: userId, isEditProfile: true),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _buildNameWidget(BuildContext context, EditProfileState state) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    return EditProfileInputWidget(
      placeholder: R.strings.nameTitle,
      controller: bloc.firstNameController,
      onTextChanged: (String firstName) {
        bloc.add(OnFirstNameSaveEvent(firstName: firstName));
      },
      errorText: R.strings.invalidFirstNameError,
      isError: state is ErrorEditProfileNameState,
    );
  }

  Widget _buildBioWidget(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    return EditProfileInputWidget(
      placeholder: R.strings.bioTitle,
      controller: bloc.biographyController,
      onTextChanged: (String biography) {
        bloc.add(OnBiographySaveEvent(biography: biography));
      },
      maxLines: 4,
      errorText: R.strings.serverError,
      isError: false,
    );
  }
}
