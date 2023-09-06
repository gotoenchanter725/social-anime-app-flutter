import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
// import 'package:flutter/services.dart';
import 'package:senpai/core/app/app.dart';
import 'package:senpai/core/sentry/sentry_module.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/i18n/strings.g.dart';
import 'package:senpai/theme/app_theme.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:universal_platform/universal_platform.dart';
// import 'package:flutter_displaymode/flutter_displaymode.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
    await configureInjection(Environment.prod);

    // Inits sentry for error tracking.
    await initializeSentry();
    final theme = await createTheme(brightness: Brightness.dark);
    runApp(
      DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: TranslationProvider(
          child: MyApp(theme: theme),
        ),
      ),
    );
  }, (error, stack) async {
    await Sentry.captureException(
      error,
      stackTrace: stack,
    );
  });
}
