import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/env_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/helpers/logging_helpers.dart';

final LoggingHelper logIt = getIt<LoggingHelper>();
final EnvModel env = getIt<EnvModel>();
final AppRouter appRouter = getIt<AppRouter>();
