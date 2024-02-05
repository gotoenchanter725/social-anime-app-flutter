import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_content/edit_profile_list_tile_button.dart';
import 'package:senpai/theme/app_theme.dart';

import 'package:senpai/utils/methods/utils.dart';

class EditProfileBirthday extends StatelessWidget {
  final DateTime? birthday;

  const EditProfileBirthday({
    super.key,
    this.birthday,
  });

  Future<ThemeData> _createTheme() async {
    return await createTheme(brightness: Brightness.dark);
  }

  void _showDialog(BuildContext context) async {
    final bloc = BlocProvider.of<EditProfileBloc>(context);
    await _createTheme().then((theme) async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        cancelText: R.strings.cancelText,
        confirmText: R.strings.okText,
        helpText: R.strings.pleaseSelectDateText,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: birthday!,
        firstDate: DateTime(1900),
        lastDate: DateTime(
          DateTime.now().year - 18,
          DateTime.now().month,
          DateTime.now().day - 1,
        ),
        builder: (context, child) {
          return _buildCalendarContent(context, child, theme);
        },
      );

      if (pickedDate != null) {
        bloc.add(OnBirthdaySaveEvent(birthday: pickedDate));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (birthday != null) {
      return EditProfileListTileButton(
        title: R.strings.birthdayTitle,
        text: formatDateTime(birthday!),
        onTap: () => _showDialog(context),
      );
    }
    return const SizedBox();
  }

  Widget _buildCalendarContent(
    BuildContext context,
    Widget? child,
    ThemeData theme,
  ) {
    return Theme(
      data: theme.copyWith(
        textTheme: getTextTheme(context).copyWith(
          labelLarge: getTextTheme(context)
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w700),
          headlineLarge: getTextTheme(context)
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
