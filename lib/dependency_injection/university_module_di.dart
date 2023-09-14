import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/profile_fill/api/universities_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/domain/profile_fill/universities_repository.dart';
import 'package:senpai/domain/profile_fill/universities_usecase.dart';
import 'package:senpai/models/env_model.dart';

@module
abstract class UniversityInjectionModule {
  @injectable
  UniversitiesApi universitiesApi(EnvModel env) =>
      UniversitiesApi(getIt<Dio>(), env);

  @Injectable(as: GetUniversitiesUseCase)
  UniversitiesRepository get universitiesRepository =>
      UniversitiesRepository(getIt<UniversitiesApi>());
}
