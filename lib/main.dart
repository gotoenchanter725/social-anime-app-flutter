// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
// import 'package:flutter/services.dart';
import 'package:senpai/core/app/app.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/i18n/strings.g.dart';
import 'package:senpai/theme/app_theme.dart';
// import 'package:universal_platform/universal_platform.dart';
// import 'package:flutter_displaymode/flutter_displaymode.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await configureInjection(Environment.prod);
  final theme = await createTheme(brightness: Brightness.dark);
  runApp(TranslationProvider(child: MyApp(theme: theme)));
}
