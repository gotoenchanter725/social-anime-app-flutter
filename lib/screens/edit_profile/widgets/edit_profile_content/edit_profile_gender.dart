import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/senpai_radio_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_list_tile_button.dart';
import 'package:senpai/screens/preview_profile/widgets/cupertino_modal_element.dart';
import 'package:senpai/screens/profile_fill/desired_gender/enums/desired_gender_enum.dart';
import 'package:senpai/screens/profile_fill/user_gender/enums/user_gender_enum.dart'
    as genderEnum;
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

class EditProfileGender extends StatelessWidget {
  final int? gender;
  final int? desiredGender;

  const EditProfileGender({
    super.key,
    this.gender,
    this.desiredGender,
  });

  String _gender(int gender) {
    return genderToString(DesiredGender.genderFromServer(gender));
  }

  void _showGenderDialog(BuildContext context, Widget child) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);

    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext builder) {
        return BlocProvider.value(
          value: bloc,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EditProfileListTileButton(
          title: R.strings.genderTitle,
          text: gender != null ? _gender(gender!) : '',
          onTap: () => _showGenderDialog(
            context,
            _buildCupertinoDialog(context, true),
          ),
        ),
        SizedBox(height: $constants.insets.sm),
        EditProfileListTileButton(
          title: R.strings.lookingForTitle,
          text: desiredGender != null ? _gender(desiredGender!) : '',
          onTap: () => _showGenderDialog(
            context,
            _buildCupertinoDialog(context, false),
          ),
        ),
      ],
    );
  }

  Widget _buildCupertinoDialog(BuildContext context, bool isGender) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        decoration: BoxDecoration(
          color: $constants.palette.appBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular($constants.insets.md),
            topRight: Radius.circular($constants.insets.md),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CupertinoModalElement(),
            Align(
              alignment: Alignment.centerRight,
              child: SenpaiIconButton(
                onPressed: () => Navigator.of(context).pop(),
                iconPath: PathConstants.closeIcon,
                borderColor: $constants.palette.buttonBorder,
              ),
            ),
            _buildHeader(context, isGender),
            isGender
                ? _buildGenderRadioButtonList(context)
                : _buildDesiredGenderGenderRadioButtonList(context),
            SizedBox(height: $constants.insets.md),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, bool isGender) {
    if (isGender) {
      return HeaderSimpleField(
        title: R.strings.youAreText,
        description: R.strings.youAreDescription,
      );
    } else {
      return HeaderSimpleField(
        title: R.strings.youLookingForText,
        description: R.strings.youLookingDescription,
      );
    }
  }

  Widget _buildGenderRadioButtonList(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
        buildWhen: (previous, current) => current is ValidState,
        builder: (context, state) {
          final bloc = BlocProvider.of<EditProfileBloc>(context);

          final selectedGender = bloc.updateUserModel.gender ?? gender;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: genderEnum.UserGender.values.map((userGender) {
              return Padding(
                padding: EdgeInsets.only(right: $constants.corners.md),
                child: SenpaiRadioButton(
                  title: genderEnum.genderToString(userGender),
                  value: userGender,
                  isSelected: selectedGender == userGender.index,
                  onChanged: (userGender) {
                    userGender as genderEnum.UserGender;
                    bloc.add(OnUserGenderSaveEvent(gender: userGender.index));
                  },
                ),
              );
            }).toList(),
          );
        });
  }

  Widget _buildDesiredGenderGenderRadioButtonList(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
      buildWhen: (previous, current) => current is ValidState,
      builder: (context, state) {
        final bloc = BlocProvider.of<EditProfileBloc>(context);
        final selectedGender =
            bloc.updateUserModel.desiredGender ?? desiredGender;
        return Column(
          children: DesiredGender.values.map((lookingGender) {
            return Padding(
              padding: EdgeInsets.only(right: $constants.corners.md),
              child: SenpaiRadioButton(
                title: genderToString(lookingGender),
                value: lookingGender,
                isSelected: lookingGender.index == selectedGender,
                onChanged: (desiredGender) {
                  desiredGender as DesiredGender;
                  bloc.add(
                    OnDesiredGenderSaveEvent(gender: desiredGender.index),
                  );
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
