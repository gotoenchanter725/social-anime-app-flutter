import 'dart:async';

import 'package:senpai/utils/methods/aliases.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> initializeSentry() async {
  const dsn =
      'https://064864cc51b31a8c093726a362f04954@o4505805699350528.ingest.sentry.io/4505805711343616';

  await SentryFlutter.init(
    (options) {
      options
        ..dsn = dsn
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        ..tracesSampleRate = 1.0
        ..environment = env.env;
    },
  );
}
