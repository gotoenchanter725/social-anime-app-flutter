import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPhone({
    required String failedValue,
  }) = InvalidPhone<T>;

  const factory ValueFailure.invalidCode({
    required String failedValue,
  }) = InvalidCode<T>;
}
