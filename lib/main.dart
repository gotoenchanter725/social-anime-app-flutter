import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senpai/app.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await runZonedGuarded(
    () async {
      // Preserve splash screen until authentication complete.
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      if (UniversalPlatform.isAndroid) {
        // Increases android devices preferred refresh rate to its maximum.
        await FlutterDisplayMode.setHighRefreshRate();
      }

      if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
        // Sets up allowed device orientations and other settings for the app.
        await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
        );
      }

      // Sets system overylay style.
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ],
      );

      // This setting smoothes transition color for LinearGradient.
      Paint.enableDithering = true;
      runApp(const MyApp());
    },
    (error, stack) {
      // Add sentry tracing here
      print(error);
    },
  );
}
