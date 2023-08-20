import 'package:injectable/injectable.dart';
import 'package:senpai/routes/app_router.dart';

@module
abstract class RouterInjection {
  AppRouter router() => AppRouter();
}
