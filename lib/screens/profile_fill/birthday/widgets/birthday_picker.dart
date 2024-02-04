import 'package:flutter/material.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/birthday/bloc/birthday_bloc.dart';
import 'package:senpai/theme/app_theme.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class BirthdayPicker extends StatelessWidget {
  final BirthdayBloc bloc;

  const BirthdayPicker({super.key, required this.bloc});

  Future<ThemeData> _createTheme() async {
    return await createTheme(brightness: Brightness.dark);
  }

  Future<void> _selectDate(BuildContext context) async {
    await _createTheme().then((theme) async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        cancelText: R.strings.cancelText,
        confirmText: R.strings.okText,
        helpText: R.strings.pleaseSelectDateText,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: bloc.birthdayDate ?? bloc.lastDate,
        firstDate: bloc.firstDate,
        lastDate: bloc.lastDate,
        builder: (context, child) {
          return _buildCalendarContent(context, child, theme);
        },
      );

      if (pickedDate != null) {
        bloc.add(OnBirthdayChangedEvent(birthday: pickedDate));
        bloc.birthdayDate = pickedDate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: SizedBox(
        height: 56.0,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: bloc.birthdayDateList.length,
          separatorBuilder: (context, index) => index == 1 || index == 3
              ? _buildSeparator(context)
              : const SizedBox.shrink(),
          itemBuilder: _buildItemText,
        ),
      ),
    );
  }

  Container _buildSeparator(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: $constants.insets.xxs),
      child: Text(
        '/',
        style: getTextTheme(context)
            .headlineMedium
            ?.copyWith(color: $constants.palette.buttonBorder),
      ),
    );
  }

  Widget _buildItemText(BuildContext context, int index) {
    final textColor = bloc.birthdayDate != null
        ? $constants.palette.white
        : $constants.palette.buttonBorder;
    final offset = $constants.insets.offset + $constants.insets.offset;
    //need for small screen
    final width = (getSize(context).width - offset) / 8;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: $constants.insets.xxs),
      width: width < $constants.corners.xl ? width : $constants.corners.xl,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: $constants.palette.buttonBorder,
            width: 2.0,
          ),
        ),
      ),
      child: Text(
        bloc.birthdayDateList[index],
        style: getTextTheme(context).headlineMedium?.copyWith(color: textColor),
      ),
    );
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
