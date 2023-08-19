import 'package:dartz/dartz.dart';
import 'package:senpai/domain/auth/auth_failure.dart';
import 'package:senpai/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> createUser({
    required PhoneNumber phoneNumber,
  });

  Future<Either<AuthFailure, Unit>> validatePhone({
    required String userId,
    required Code code,
  });

  Future<void> signOut();
}
