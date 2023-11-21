import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/utils/constants.dart';

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double getStatusBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double getSliverBarHeight(BuildContext context) {
  return getStatusBarHeight(context) + kToolbarHeight;
}

double getAppBarHeight() {
  return AppBar().preferredSize.height;
}

double getBottomBarHeight() {
  return kBottomNavigationBarHeight;
}

ColorScheme getTheme(BuildContext context) {
  return Theme.of(context).colorScheme;
}

ColorScheme getPrimaryContainer(BuildContext context) {
  return Theme.of(context).colorScheme;
}

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

TextTheme getTextTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

Color getPrimaryColor(BuildContext context) {
  return ElevationOverlay.colorWithOverlay(
      getTheme(context).surface, getTheme(context).primary, 3);
}

Color getCustomOnPrimaryColor(BuildContext context) {
  return getTheme(context).primary.withOpacity(0.5);
}

String colorToHex(Color c) {
  return "#${(c.value.toRadixString(16))..padLeft(8, '0').toUpperCase()}";
}

Color hexToColor(String h) {
  return Color(int.parse(h, radix: 16));
}

LinearGradient colorsToGradient(List<Color> colors, {double opacity = 1}) {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: colors.map((c) => c.withOpacity(opacity)).toList(),
  );
}

bool isValidPhoneNumber(String phoneNumber) {
  final RegExp phoneRegExp = RegExp(r'^[\d\-. ]+$');

  return phoneNumber.length > 8 && phoneRegExp.hasMatch(phoneNumber);
}

String formatDateTime(DateTime dateTime) {
  final now = DateTime.now();

  if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day) {
    return DateFormat.jm().format(dateTime);
  } else if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day - 1) {
    return 'Yesterday';
  } else {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
}

String formatSystemDateTimeDisplay(DateTime dateTime) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final lastWeek = today.subtract(Duration(days: 6)); // 6 days ago

  if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day) {
    return 'Today';
  } else if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day - 1) {
    return 'Yesterday';
  } else if (dateTime.isAfter(lastWeek)) {
    return DateFormat('EEEE').format(dateTime);
  } else {
    return DateFormat('d MMMM y').format(dateTime);
  }
}

List<String> convertDateTimeToList(DateTime dateTime) {
  String day = dateTime.day.toString().padLeft(2, '0');
  String month = dateTime.month.toString().padLeft(2, '0');
  String year = dateTime.year.toString();

  return [...day.split(''), ...month.split(''), ...year.split('')];
}

TextSpan updateTextStyle(
  String fullText,
  String selectedText,
  TextStyle? textStyle,
) {
  final List<TextSpan> spans = [];

  final parts = fullText.split(selectedText);

  for (int i = 0; i < parts.length; i++) {
    spans.add(TextSpan(
      text: parts[i],
      style: textStyle?.copyWith(
        fontWeight: FontWeight.w400,
      ),
    ));

    if (i < parts.length - 1) {
      spans.add(TextSpan(
        text: selectedText,
        style: textStyle?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ));
    }
  }

  return TextSpan(children: spans);
}

String calculateAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  int month1 = currentDate.month;
  int month2 = birthDate.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = birthDate.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age.toString();
}

BoxDecoration profileBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular($constants.corners.md),
    shape: BoxShape.rectangle,
    color: $constants.palette.lightBlue,
  );
}
