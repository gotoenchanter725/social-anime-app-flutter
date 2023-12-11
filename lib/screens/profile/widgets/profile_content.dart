import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/screens/profile/widgets/profile_header.dart';
import 'package:senpai/screens/premium_screen/widgets/profile_premium_widget.dart';

import 'package:senpai/utils/constants.dart';

import 'profile_list_tile_button.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        final bloc = BlocProvider.of<ProfileBloc>(context);

        if (state is ProfileInitial && bloc.userID.isNotEmpty) {
          final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
          fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<ProfileBloc>(context);
        final isUserHasPhotos =
            bloc.user.gallery != null && bloc.user.gallery!.photos.isNotEmpty;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: $constants.insets.sm,
              ),
              _buildAppBar(context),
              SizedBox(
                height: $constants.insets.md,
              ),
              ProfileHeader(
                avatar: isUserHasPhotos
                    ? bloc.user.gallery!.photos.last.url ?? ''
                    : '',
                name: bloc.user.firstName ?? '',
                birthday: bloc.user.birthday,
                verified: bloc.user.verified,
              ),
              SizedBox(height: $constants.insets.xs),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      if (bloc.user.verified != true)
                        ProfileListTileButton(
                          icon: PathConstants.verifyFaceIcon,
                          title: TextConstants.verifyYourPhotosButton,
                          onTap: () async {
                            await context.router.push(
                              VerifyPhotoRoute(
                                userID: int.tryParse(bloc.userID),
                              ),
                            );
                          },
                          hasBorder: true,
                        ),
                      SizedBox(height: $constants.insets.xs),
                      ProfileListTileButton(
                        icon: PathConstants.pencilIcon,
                        title: TextConstants.editProfileButton,
                        onTap: () async {
                          // change after implement EditProfileRoute

                          context.router.push(PreviewProfileRoute(
                            userId: bloc.userID,
                            vieweeId: bloc.userID,
                          ));

                          // change after implement EditProfileRoute
                          // await context.router
                          //     .push(EditProfileRoute(userID: bloc.userID))
                          //     .then((value) {
                          //   final fetchUserBloc =
                          //       BlocProvider.of<FetchUserBloc>(context);
                          //   fetchUserBloc.fetchUser(
                          //       userId: int.parse(bloc.userID));
                          // });
                        },
                      ),
                      SizedBox(height: $constants.insets.xs),
                      ProfileListTileButton(
                        icon: PathConstants.filterIcon,
                        title: TextConstants.profileFindsButton,
                        onTap: () async {
                          await context.router.push(
                            ProfileFilterRoute(animes: bloc.user.animes),
                          );
                        },
                      ),
                      if (bloc.user.premium == false)
                        const ProfilePremiumWidget(),
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

  Widget _buildAppBar(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          PathConstants.launcher,
          width: $constants.insets.lg,
          height: $constants.insets.lg,
          fit: BoxFit.contain,
        ),
        GestureDetector(
          onTap: () async {
            await context.router
                .push(SettingsProfileRoute(user: bloc.user))
                .then((value) {
              final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
              fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
            });
          },
          child: SvgPicture.asset(
            PathConstants.settingsIcon,
            width: $constants.insets.lg,
            height: $constants.insets.lg,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
