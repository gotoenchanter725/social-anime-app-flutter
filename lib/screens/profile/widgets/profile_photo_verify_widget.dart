import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/verify_request_user/fetch_verify_requests.dart';
import 'package:senpai/core/widgets/secondary_button.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/custom_close_button.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

import 'profile_list_tile_button.dart';

class ProfilePhotoVerifyWidget extends StatelessWidget {
  const ProfilePhotoVerifyWidget({super.key});

  // TODO : change after push notification (its show when user answe in push)
  void _verifyPhotoDialog(BuildContext context, bool isVerified) {
    final bloc = BlocProvider.of<ProfileBloc>(context);

    showDialog<String>(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: _buildDialogContent(
          context: context,
          isVerified: isVerified,
          userID: bloc.userID,
        ),
      ),
    );
  }

  void _openPhotoVerify(BuildContext context) async {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    await context.router
        .push(VerifyPhotoRoute(userID: int.tryParse(bloc.userID)))
        .then((value) {
      final verifyBloc = BlocProvider.of<FetchVerifyRequestsBloc>(context);
      verifyBloc.fetchVerifyRequests(
        userId: int.parse(bloc.userID),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<ProfileBloc>(context);
        if (state is! FetchSucssesfulState || bloc.user.verified == true) {
          return const SizedBox();
        }
        if (bloc.user.verified != true && bloc.isPendingUserStatus) {
          return ProfileListTileButton(
            icon: PathConstants.alarmIcon,
            title: R.strings.waitingForPhotoVerificationTitle,
            hasBorder: false,
          );
        } else {
          return ProfileListTileButton(
            icon: PathConstants.verifyFaceIcon,
            title: R.strings.verifyYourPhotosButton,
            onTap: () {
              _openPhotoVerify(context);
            },
            hasBorder: true,
          );
        }
      },
    );
  }

  Widget _buildDialogContent({
    required BuildContext context,
    required bool isVerified,
    required String userID,
  }) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: $constants.corners.sm,
            horizontal: $constants.insets.md,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: $constants.insets.sm,
            vertical: $constants.corners.sm,
          ),
          decoration: BoxDecoration(
            color: $constants.palette.appBackground,
            borderRadius: BorderRadius.circular($constants.insets.sm),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: $constants.corners.xxl),
              _buildImage(
                isVerified
                    ? PathConstants.photoVerifiedImage
                    : PathConstants.photoNotVerifiedImage,
              ),
              SizedBox(height: $constants.insets.xs),
              _buildTitle(
                context,
                isVerified
                    ? R.strings.yourPhotosHaveBeenVerifiedTitle
                    : R.strings.yourPhotosHaveNotBeenVerifiedTitle,
              ),
              _buildDescription(
                context,
                isVerified
                    ? R.strings.nowEveryoneWillKnowThatYouText
                    : R.strings.thereSeemsToBeSomethingWrongYourPhotoText,
              ),
              SizedBox(height: $constants.insets.md),
              isVerified
                  ? SecondaryButton(
                      text: R.strings.closeButton,
                      onPressed: () {
                        context.router.pop();
                      },
                    )
                  : SecondaryButton(
                      text: R.strings.tryAgainButton,
                      onPressed: () {
                        context.router.pop();
                        _openPhotoVerify(context);
                      },
                    ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: $constants.insets.sm,
          child: _closeButton(context),
        ),
      ],
    );
  }

  Widget _buildImage(String image) {
    return Image.asset(
      image,
      height: 134,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: getTextTheme(context)
          .headlineMedium
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }

  Widget _buildDescription(BuildContext context, String description) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: getTextTheme(context).titleMedium?.copyWith(
            color: $constants.palette.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
    );
  }

  Widget _closeButton(BuildContext context) {
    return CustomCloseButton(
      borderColor: $constants.palette.black.withOpacity(0.6),
      backgroundColor: $constants.palette.appBackground,
      onTapButton: () {
        context.router.pop();
      },
    );
  }
}
