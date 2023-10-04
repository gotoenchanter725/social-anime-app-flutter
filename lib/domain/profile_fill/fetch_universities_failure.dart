import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_universities_failure.freezed.dart';

@freezed
abstract class FetchUniversitiesFaileure with _$FetchUniversitiesFaileure {
  const factory FetchUniversitiesFaileure.serverError() = ServerError;
}
