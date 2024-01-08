import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class CupertinoLogoutWidget extends StatelessWidget {
  const CupertinoLogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: _buildTitle(context, TextConstants.areYouSureLogoutTitle),
      message: _buildTitle(context, TextConstants.areYouSureLogoutDescription),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(OnLogoutUserEvent(isDeleteStorage: true));
          },
          child: Text(
            TextConstants.forgetMeTitle,
            style: getTextTheme(context).headlineMedium!.copyWith(
                  color: $constants.palette.white.withOpacity(0.5),
                  fontSize: 20,
                ),
          ),
        ),
        CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(OnLogoutUserEvent(isDeleteStorage: false));
          },
          child: Text(
            TextConstants.rememberMeTitle,
            style: getTextTheme(context).headlineMedium!.copyWith(
                  color: $constants.palette.blue,
                  fontSize: 20,
                ),
          ),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () => Navigator.pop(context),
        child: Text(
          TextConstants.cancelText,
          style: getTextTheme(context).headlineMedium!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String text) {
    return Text(
      text,
      style: getTextTheme(context).bodyLarge!.copyWith(
            fontSize: 13,
            color: $constants.palette.white.withOpacity(0.7),
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
