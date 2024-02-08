import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class WelcomeSenpaiContent extends StatelessWidget {
  const WelcomeSenpaiContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),
        Expanded(
          child: Image.asset(
            PathConstants.welcomeImage,
            fit: BoxFit.fitWidth,
            height: getSize(context).width,
            width: getSize(context).width,
          ),
        ),
        Padding(
          padding: EdgeInsets.all($constants.insets.sm),
          child: _buildButton(context),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: $constants.insets.xl,
        ),
        Center(
          child: SvgPicture.asset(
            PathConstants.senpaiLogoIcon,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          height: $constants.insets.sm,
        ),
        Text(
          R.strings.welcomeSenpaiTitle,
          style: getTextTheme(context)
              .headlineLarge
              ?.copyWith(color: $constants.palette.white),
        ),
        Text(
          R.strings.welcomeSenpaiDescription,
          style: getTextTheme(context).bodySmall?.copyWith(
                color: $constants.palette.grey,
                letterSpacing: 0,
              ),
        ),
        SizedBox(
          height: $constants.insets.sm,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    final serverBloc = BlocProvider.of<UpdateUserBloc>(context);
    return PrimaryButton(
      text: R.strings.fillProfileText,
      onPressed: () async {
        await serverBloc.updateUserInfo(user: bloc.user);
      },
    );
  }
}
