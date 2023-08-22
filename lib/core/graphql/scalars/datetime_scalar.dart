import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');

DateTime fromGraphQLISO8601DateTimeToDartDateTime(DateTime dateTime) =>
    dateTime;
DateTime fromDartDateTimeToGraphQLISO8601DateTime(DateTime dateTime) =>
    dateTime;
DateTime? fromGraphQLISO8601DateTimeToDartDateTimeNullable(
        DateTime? dateTime) =>
    dateTime;
DateTime? fromDartDateTimeToGraphQLISO8601DateTimeNullable(
        DateTime? dateTime) =>
    dateTime;
DateTime? fromGraphQLISO8601DateTimeNullableToDartDateTimeNullable(
        DateTime? dateTime) =>
    dateTime;
DateTime? fromDartDateTimeNullableToGraphQLISO8601DateTimeNullable(
        DateTime? dateTime) =>
    dateTime;
