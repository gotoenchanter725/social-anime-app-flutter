import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_content.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart';
import 'package:senpai/screens/preview_profile/widgets/preview_profile_content.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditProfileTabs extends StatelessWidget {
  const EditProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: $constants.insets.sm),
          child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            child: Scaffold(
              backgroundColor: $constants.palette.darkBlue,
              appBar: AppBar(
                backgroundColor: $constants.palette.darkBlue,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text(R.strings.editProfileButton),
                titleTextStyle: getTextTheme(context).titleMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                actions: [_buildAppBarAction(context)],
                bottom: TabBar(
                  isScrollable: false,
                  dividerColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: false,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelStyle: getTextTheme(context)
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  labelStyle: getTextTheme(context)
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                  labelColor: $constants.palette.white,
                  unselectedLabelColor: $constants.palette.darkGrey,
                  indicatorColor: $constants.palette.white,
                  onTap: (page) {
                    if (page == 1) {
                      final previewProfileBloc =
                          BlocProvider.of<PreviewProfileBloc>(context);
                      previewProfileBloc.add(OnInitPaginationEvent());
                    }
                  },
                  tabs: <Widget>[
                    Tab(text: R.strings.editTitle),
                    Tab(text: R.strings.previewTitle),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  const EditProfileContent(),
                  _buildPreviewWidget(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppBarAction(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);

    return GestureDetector(
      onTap: () async {
        final serverBloc = BlocProvider.of<UpdateUserBloc>(context);
        serverBloc.updateUserInfo(
          user: bloc.updateUserModel,
          verified: bloc.user.verified,
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: $constants.insets.sm),
        child: Text(
          R.strings.doneText,
          style: getTextTheme(context).bodySmall!.copyWith(letterSpacing: 0),
        ),
      ),
    );
  }

  Widget _buildPreviewWidget(BuildContext context) {
    final previewProfileBloc = BlocProvider.of<PreviewProfileBloc>(context);

    final bloc = BlocProvider.of<EditProfileBloc>(context);
    return BlocProvider.value(
      value: previewProfileBloc
        ..add(OnPreviewProfileInitEvent(user: bloc.userForPreview)),
      child: const DesiredPreviewProfileContent(isShowBottomButtons: false),
    );
  }
}
