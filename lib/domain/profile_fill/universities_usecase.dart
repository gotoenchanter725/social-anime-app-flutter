import 'package:dartz/dartz.dart';
import 'package:senpai/domain/profile_fill/fetch_universities_failure.dart';
import 'package:senpai/models/profile_fill/university/university_model.dart';

abstract class GetUniversitiesUseCase {
  Future<Either<FetchUniversitiesFaileure, List<UniversityModel>>>
      fetchUniversities(String searchText);
}
