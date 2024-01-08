import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/delete_user/delete_user_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/utils/methods/utils.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key});

  void _deleteUserDialog(BuildContext context) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text(
          TextConstants.deleteAccountTitle,
          style: getTextTheme(context).headlineSmall,
        ),
        content: Text(
          TextConstants.deleteAccountDescriprion,
          style: getTextTheme(context).titleSmall,
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: Navigator.of(context).pop,
            child: const Text(TextConstants.noButton),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              final bloc = BlocProvider.of<SettingsProfileBloc>(context);
              final deleteUserBloc = BlocProvider.of<DeleteUserBloc>(context);
              deleteUserBloc.deleteUser(userId: int.parse(bloc.user.id));
            },
            child: const Text(TextConstants.yesButton),
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
        TextConstants.deleteAccountTitle,
        style: getTextTheme(context).titleSmall?.copyWith(),
      ),
    );
  }
}
