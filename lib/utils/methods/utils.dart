import 'dart:math';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double getWidthSize(BuildContext context, double size) {
  return MediaQuery.of(context).size.width * size;
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

String generateRandomId(int length) {
  const characters =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  final random = Random();

  return String.fromCharCodes(Iterable.generate(
    length,
    (_) => characters.codeUnitAt(random.nextInt(characters.length)),
  ));
}

bool isValidPhoneNumber(String phoneNumber) {
  final RegExp phoneRegExp = RegExp(r'^[\d\-. ]+$');

  return phoneNumber.length > 8 && phoneRegExp.hasMatch(phoneNumber);
}

DateTime parseTimezoneAwareDate(String dateString) {
  return DateTime.parse(dateString).toLocal();
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

String timeAgo(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final aDate = DateTime(date.year, date.month, date.day);

  final difference = today.difference(aDate).inDays;

  if (difference == 0) {
    return 'today';
  } else {
    return '$difference days ago';
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

Color getCheckBoxColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.selected,
  };
  if (states.any(interactiveStates.contains)) {
    return $constants.palette.pink;
  }
  return $constants.palette.buttonBorder;
}

String mapReactionTypeToString(ReactionType reactionType) {
  Map<ReactionType, String> reactionTypeMap = {
    ReactionType.anger: 'angry',
    ReactionType.demon: 'demon',
    ReactionType.heart: 'heart',
    ReactionType.laughing: 'funny',
    ReactionType.puke: 'vomit',
    ReactionType.thumbsUp: 'like',
  };

  String? reactionString = reactionTypeMap[reactionType];

  if (reactionString != null) {
    return reactionString;
  } else {
    return 'like';
  }
}

ReactionType stringToReactionType(String reactionString) {
  // Define the reverse map inside the function
  Map<String, ReactionType> stringToReactionTypeMap = {
    'angry': ReactionType.anger,
    'demon': ReactionType.demon,
    'heart': ReactionType.heart,
    'funny': ReactionType.laughing,
    'vomit': ReactionType.puke,
    'like': ReactionType.thumbsUp,
  };

  // Lookup the string in the map
  ReactionType? reactionType = stringToReactionTypeMap[reactionString];

  if (reactionType != null) {
    return reactionType;
  } else {
    // A default or error handling if the string is not in the map
    // Depending on your application's logic, you might throw an error
    // or return a default value. Here, I am throwing an exception.
    throw ArgumentError('Invalid reaction string: $reactionString');
  }
}

double matchRadius(int milesAway) {
  int meterToMiles = 1609;
  return milesAway * (meterToMiles / 2);
}

Future<http.MultipartFile> urlToFileMultipart(String url) async {
  // Determine if the attachment is a local file or a network URL.
  bool isLocalFile = Uri.tryParse(url)?.hasScheme != true;
  // Check if the URL is a local file
  if (isLocalFile) {
    // It's a local file
    var file = File(url);
    var mimeTypeData =
        lookupMimeType(url, headerBytes: [0xFF, 0xD8])?.split('/');
    return http.MultipartFile.fromBytes(
      'file',
      await file.readAsBytes(),
      filename: path.basename(file.path),
      contentType: mimeTypeData != null
          ? MediaType(mimeTypeData[0], mimeTypeData[1])
          : null,
    );
  } else {
    // It's a remote file
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var mimeTypeData =
          lookupMimeType(url, headerBytes: [0xFF, 0xD8])?.split('/');
      return http.MultipartFile.fromBytes(
        'file',
        response.bodyBytes,
        filename: path.basename(url),
        contentType: mimeTypeData != null
            ? MediaType(mimeTypeData[0], mimeTypeData[1])
            : null,
      );
    } else {
      throw Exception('Failed to download file');
    }
  }
}

String extractGenres(String input) {
  // Remove the square brackets at the start and end
  String noBrackets = input.substring(1, input.length - 1);

  // Replace double quotes and extra spaces, if any
  String formatted = noBrackets.replaceAll('\"', '');
  return formatted;
}

bool isVideo(XFile file) {
  // Determine the mime type
  String? mimeType = lookupMimeType(file.path);

  // Check if the mime type starts with 'video/'
  return mimeType != null && mimeType.startsWith('video/');
}
