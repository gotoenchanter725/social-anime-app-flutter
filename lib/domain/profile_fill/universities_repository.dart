import 'package:dartz/dartz.dart';
import 'package:senpai/core/profile_fill/api/universities_api.dart';
import 'package:senpai/domain/profile_fill/fetch_universities_failure.dart';
import 'package:senpai/domain/profile_fill/universities_usecase.dart';
import 'package:senpai/models/profile_fill/university/university_model.dart';

class UniversitiesRepository implements GetUniversitiesUseCase {
  final UniversitiesApi api;

  UniversitiesRepository(this.api);

  @override
  Future<Either<FetchUniversitiesFaileure, List<UniversityModel>>>
      fetchUniversities(String searchText) async {
    try {
      final universities = await api.fetchUniversities(searchText: searchText);
      return right(universities);
    } catch (e) {
      return left(
        const ServerError(),
      );
    }
  }
}
