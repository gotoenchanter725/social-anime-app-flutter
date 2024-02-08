import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/user/blocs/verify_request_user/fetch_verify_requests.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/screens/profile/widgets/profile_active_premium_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_header.dart';
import 'package:senpai/screens/premium_screen/widgets/profile_premium_widget.dart';
import 'package:senpai/screens/profile/widgets/profile_photo_verify_widget.dart';

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

          final fetchVerifyRequestsBloc =
              BlocProvider.of<FetchVerifyRequestsBloc>(context);
          fetchVerifyRequestsBloc.fetchVerifyRequests(
            userId: int.parse(bloc.userID),
          );
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<ProfileBloc>(context);
        final isUserHasPhotos =
            bloc.user.gallery != null && bloc.user.gallery!.photos.isNotEmpty;
        print('profile super like: ${bloc.user.superLikeCount}');

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
                    ? bloc.user.gallery!.photos.first.url ?? ''
                    : '',
                name: bloc.user.firstName ?? '',
                birthday: bloc.user.birthday,
                verified: bloc.user.verified,
                isAdmin: bloc.user.role == 'admin',
              ),
              SizedBox(height: $constants.insets.xs),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const ProfilePhotoVerifyWidget(),
                      SizedBox(height: $constants.insets.xs),
                      ProfileListTileButton(
                        icon: PathConstants.pencilIcon,
                        title: R.strings.editProfileButton,
                        onTap: () async {
                          await context.router
                              .push(EditProfileRoute(userID: bloc.userID))
                              .then((value) {
                            final fetchUserBloc =
                                BlocProvider.of<FetchUserBloc>(context);
                            fetchUserBloc.fetchUser(
                                userId: int.parse(bloc.userID));
                          });
                        },
                      ),
                      SizedBox(height: $constants.insets.xs),
                      ProfileListTileButton(
                        icon: PathConstants.filterIcon,
                        title: R.strings.profileFindsButton,
                        onTap: () async {
                          await context.router.push(
                            ProfileFilterRoute(
                              animes: bloc.user.animes,
                              premium: bloc.user.premium ?? false,
                            ),
                          );
                        },
                      ),
                      if (bloc.user.premium == false && bloc.userID.isNotEmpty)
                        ProfilePremiumWidget(userId: int.parse(bloc.userID)),
                      if (bloc.user.premium == true && bloc.userID.isNotEmpty)
                        ProfileActivePremiumWidget(
                          nextDate: bloc.user.nextPaymentDate ?? DateTime.now(),
                        ),
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
