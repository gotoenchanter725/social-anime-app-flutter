import 'package:dio/dio.dart';
import 'package:senpai/domain/profile_fill/fetch_universities_failure.dart';
import 'package:senpai/models/env_model.dart';
import 'package:senpai/models/profile_fill/university/university_model.dart';

class UniversitiesApi {
  final Dio _dio;
  final EnvModel _env;

  UniversitiesApi(this._dio, this._env);

  Future<List<UniversityModel>> fetchUniversities({String? searchText}) async {
    final response = await _dio.get(
      '${_env.httpApiUrlUniversities}/search',
      queryParameters: {'name': searchText},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((data) => UniversityModel.fromJson(data))
          .toList();
    } else {
      throw const ServerError();
    }
  }
}
