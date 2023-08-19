import 'package:dartz/dartz.dart';
import 'package:senpai/domain/core/failures.dart';
import 'package:senpai/domain/core/value_objects.dart';
import 'package:senpai/domain/core/value_validators.dart';

class PhoneNumber extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}

class Code extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Code(String input) {
    return Code._(validateCode(input));
  }

  const Code._(this.value);
}
