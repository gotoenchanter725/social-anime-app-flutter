// ignore_for_file: unused_import

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:senpai/routes/app_router.dart';

class ExistingUserGuard extends AutoRouteGuard {
  // A method to check if the app has been opened before.
  Future<bool> hasOpenedAppBefore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('hasOpenedAppBefore') ?? false;
  }

  // A method to mark the app as opened.
  Future<void> markAppAsOpened() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasOpenedAppBefore', true);
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    resolver.next(true);
    //TODO: 17.09 just cut them! (Herbert Joseph)
    // final hasOpenedBefore = await hasOpenedAppBefore();
    // if (!hasOpenedBefore) {
    //   // If the app hasn't been opened before, mark it as opened and proceed.
    //   await markAppAsOpened();
    //   resolver.next(true);
    // } else {
    //   // If the app has been opened before, redirect to the EntryRoute.
    //   await router.replaceAll([const EntryRoute()]);
    // }
  }
}
