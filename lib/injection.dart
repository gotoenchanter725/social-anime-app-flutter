import 'package:fresh_dio/fresh_dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/injection.config.dart';
import 'package:senpai/models/auth/auth_model.dart';

final getIt = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [TokenStorage<AuthModel>],
)
Future<GetIt> configureInjection(String env) => getIt.init(environment: env);
