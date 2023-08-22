// import 'package:intl/intl.dart';

// final dateFormatter = DateFormat('yyyy-MM-dd');
// final timeFormatter = DateFormat('HH:mm:ss');

DateTime fromGraphQLISO8601DateTimeToDartDateTime(String dateTime) =>
    DateTime.parse(dateTime);
String fromDartDateTimeToGraphQLISO8601DateTime(DateTime dateTime) =>
    dateTime.toIso8601String();
DateTime? fromGraphQLISO8601DateTimeToDartDateTimeNullable(String? dateTime) =>
    dateTime != null ? DateTime.parse(dateTime) : null;
String? fromDartDateTimeToGraphQLISO8601DateTimeNullable(DateTime? dateTime) =>
    dateTime?.toIso8601String();
DateTime? fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
        String? dateTime) =>
    dateTime != null ? DateTime.parse(dateTime) : null;
String? fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
        DateTime? dateTime) =>
    dateTime?.toIso8601String();
