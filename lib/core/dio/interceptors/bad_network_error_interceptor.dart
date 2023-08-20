import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:senpai/core/dio/dio_exception_handler.dart';
import 'package:senpai/dependency_injection/injection.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response == null &&
        !await getIt<InternetConnection>().hasInternetAccess) {
      return handler.reject(
        BadNetworkException(
          requestOptions: err.requestOptions,
        ),
      );
    }

    return handler.next(err);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return handler.next(options);
  }
}
