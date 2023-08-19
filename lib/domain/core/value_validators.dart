import 'package:dartz/dartz.dart';
import 'package:senpai/domain/core/failures.dart';

Either<ValueFailure<String>, String> validatePhoneNumber(String phoneNumber) {
  // Remove any non-digit characters from the phone number
  final cleanPhoneNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

  if (cleanPhoneNumber.length != 10) {
    return right(phoneNumber);
  }

  return left(ValueFailure.invalidPhone(failedValue: phoneNumber));
}
