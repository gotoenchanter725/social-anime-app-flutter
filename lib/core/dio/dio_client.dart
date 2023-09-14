import 'dart:io';

import 'package:dio/dio.dart';
import 'package:senpai/core/dio/interceptors/api_error_interceptor.dart';
import 'package:senpai/core/dio/interceptors/bad_network_error_interceptor.dart';
import 'package:senpai/core/dio/interceptors/internal_server_error_interceptor.dart';
import 'package:senpai/core/dio/interceptors/unautheticated_interceptor.dart';
import 'package:senpai/models/env_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:sentry_dio/sentry_dio.dart';
import 'package:universal_platform/universal_platform.dart';

Dio initDioClient(
  EnvModel env,
) {
  final dio = Dio();

  dio.options.baseUrl = env.httpApiUrl;
  dio.options.headers['Accept-Language'] =
      UniversalPlatform.isWeb ? 'en-US' : Platform.localeName.substring(0, 2);
  dio.options.connectTimeout = const Duration(seconds: 10);
  dio.options.receiveTimeout = const Duration(seconds: 10);
  dio.interceptors.add(BadNetworkErrorInterceptor());
  dio.interceptors.add(InternalServerErrorInterceptor());
  dio.interceptors.add(ApiErrorInterceptor());
  dio.interceptors.add(UnauthenticatedInterceptor());

  // Sentrie's performance tracing, http breadcrumbs and
  // automatic recording of bad http requests for dio.
  // dio.addSentry();

  if (env.debugApiClient) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }

  return dio;
}
