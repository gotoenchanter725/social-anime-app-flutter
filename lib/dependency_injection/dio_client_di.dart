import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/dio/dio_client.dart';
import 'package:senpai/models/env_model.dart';

@module
abstract class DioInjection {
  Dio dio(EnvModel env) => initDioClient(env);
}
