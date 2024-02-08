import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/delete_user/delete_user_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/utils/methods/utils.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key});

  void _deleteUserDialog(BuildContext context) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text(
          R.strings.deleteAccountTitle,
          style: getTextTheme(context).headlineSmall,
        ),
        content: Text(
          R.strings.deleteAccountDescriprion,
          style: getTextTheme(context).titleSmall,
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: Navigator.of(context).pop,
            child: Text(R.strings.noButton),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              final deleteUserBloc = BlocProvider.of<DeleteUserBloc>(context);
              deleteUserBloc.deleteUser(userId: int.parse(bloc.user.id));
            },
            child: Text(R.strings.yesButton),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _deleteUserDialog(context);
      },
      child: Text(
        R.strings.deleteAccountTitle,
        style: getTextTheme(context).titleSmall?.copyWith(),
      ),
    );
  }
}
