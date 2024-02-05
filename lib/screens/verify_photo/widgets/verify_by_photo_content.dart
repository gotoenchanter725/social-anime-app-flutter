import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class VerifyByPhotoContent extends StatelessWidget {
  final bool hasProfileFillBloc;

  const VerifyByPhotoContent(
    this.hasProfileFillBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          hasProfileFillBloc
              ? _buildHeaderProfileFill(context)
              : _buildHeader(context),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Image.asset(
            PathConstants.profileBg,
            height: getSize(context).height * 0.3,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: $constants.insets.xl,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildVerifyByPhotoButton(context),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.lg),
      child: HeaderSimpleField(
        title: R.strings.verifyPhotoHeading,
        description: R.strings.verifyPhotoDescription,
        isCenterTitle: true,
        onTapBackButton: () async {
          await context.router.pop();
        },
      ),
    );
  }

  Widget _buildHeaderProfileFill(BuildContext context) {
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
    final bloc = BlocProvider.of<VerifyPhotoBloc>(context);
    return HeaderSimpleField(
      title: R.strings.verifyPhotoHeading,
      description: R.strings.verifyPhotoDescription,
      isCenterTitle: true,
      onTapBackButton: () {
        blocProfileFill.add(
          OnChangeStepEvent(
            step: ProfileFillStep.animes,
          ),
        );
      },
      onTapSkipkButton: () {
        bloc.add(OnOpenStartMatchSceenEvent());
      },
    );
  }

  Widget _buildVerifyByPhotoButton(BuildContext context) {
    return PrimaryButton(
      text: R.strings.verifyPhotoButtonText,
      onPressed: () async {
        context.router.push(
          VerifyCameraRoute(
            bloc: BlocProvider.of<VerifyPhotoBloc>(context),
          ),
        );
      },
    );
  }
}
