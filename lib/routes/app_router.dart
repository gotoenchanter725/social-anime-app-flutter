import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/routes/guards/onboarding_guard.dart';
import 'package:senpai/screens/entry/page/entry_page.dart';
import 'package:senpai/screens/license/page/license_page.dart';
import 'package:senpai/screens/onboarding/page/onboarding_page.dart';
import 'package:senpai/screens/profile_fill/page/profile_fill.dart';
import 'package:senpai/screens/signup/page/sign_up_page.dart';
import 'package:senpai/screens/verify_phone/page/verify_phone_page.dart';
import 'package:senpai/screens/verify_photo/page/verify_photo_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        AutoRoute(
            page: OnboardingRoute.page,
            initial: true,
            guards: [ExistingUserGuard()]),
        AutoRoute(page: EntryRoute.page, path: '/entry'),
        AutoRoute(page: SignUpRoute.page, path: '/create_user'),
        AutoRoute(page: VerifyPhoneRoute.page, path: '/verify_phone'),
        AutoRoute(page: ProfileFillRoute.page, path: '/profile_fill'),
        AutoRoute(page: SenpaiLicenseRoute.page, path: '/license'),
        AutoRoute(page: VerifyPhotoRoute.page, path: '/verify_photo'),
      ];
}
