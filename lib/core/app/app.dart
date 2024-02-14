// Main page widget resides here

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/generated/app_localizations.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

class MyApp extends StatelessWidget {
  final ThemeData theme;

  MyApp({super.key, required this.theme});

  final _appRouter = appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final mySystemTheme = SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: $constants.palette.lightBlue,
    );

    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ApplicationLocaleBloc>()..add(InitApplicationLocaleEvent()),
        ),
      ],
      child: BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
        builder: (BuildContext context, ApplicationLocaleState state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: $constants.appTitle,
            theme: theme,
            routerConfig: _appRouter.config(),
            locale: state.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          );
        },
      ),
    );
  }
}
