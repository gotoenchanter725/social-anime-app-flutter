import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/phone_input.dart';

import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/mappers/user_profile_mapper.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PhoneNumberContent extends StatelessWidget {
  const PhoneNumberContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: R.strings.phoneNumberTitle,
          hasLeading: true,
          onDoneTap: () {
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(
              OnChangeSettingsStepEvent(
                step: SettingsStep.settings,
              ),
            );
          },
          onTapLeading: () {
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(
              OnChangeSettingsStepEvent(
                step: SettingsStep.settings,
              ),
            );
          },
        ),
        SizedBox(height: $constants.insets.md),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    R.strings.phoneNumberTitle,
                    style: getTextTheme(context).headlineSmall,
                  ),
                  _buildTextInput(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: $constants.insets.sm,
                      top: $constants.insets.xs,
                    ),
                    child: Text(
                      R.strings.confirmedPhoneDescription,
                      style: getTextTheme(context)
                          .labelMedium
                          ?.copyWith(color: $constants.palette.grey),
                    ),
                  ),
                  SizedBox(height: $constants.insets.md),
                  _buildTextPhoneInput(context),
                  SizedBox(height: $constants.insets.md),
                  _buildUpdatePhoneButton(context),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      height: $constants.insets.xxl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bloc.user.phone,
            style: getTextTheme(context).bodyMedium,
          ),
          if (bloc.isVerifyPhone)
            Icon(
              Icons.done,
              color: $constants.palette.white,
              size: 14,
            ),
        ],
      ),
    );
  }

  Widget _buildUpdatePhoneButton(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    final serverBloc = BlocProvider.of<UpdateUserBloc>(context);

    return BlocListener<SettingsProfileBloc, SettingsProfileState>(
      listenWhen: (_, currState) => currState is ChangePhoneNumberState,
      listener: (context, state) {
        serverBloc.updateUserInfo(
          user: bloc.user.toUpdateModel(),
          verified: bloc.user.verified,
        );
      },
      child: SecondaryButton(
        text: R.strings.updateMyPhoneButton,
        onPressed: () {
          bloc.add(OnTapUpdatePhoneEvent());
        },
        hasBackgroundColor: true,
      ),
    );
  }

  Widget _buildTextPhoneInput(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        if (bloc.isShowPhoneInput) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SenpaiPhoneInput(
              placeholder: '000-000-0000',
              controller: bloc.phoneController,
              onTextChanged: (PhoneNumber phoneNumber) {
                bloc.add(OnChangePhoneNumberEvent(phoneNumber: phoneNumber));
              },
              errorText: R.strings.invalidPhoneError,
              isError: state is ErrorState ? state.isEnabled : false,
              isValid: bloc.state is ValidState
                  ? true
                  : isValidPhoneNumber(bloc.phoneController.text),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
