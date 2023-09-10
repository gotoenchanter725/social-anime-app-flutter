import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/routes/guards/onboarding_guard.dart';
import 'package:senpai/screens/chat/page/chat_page.dart';
import 'package:senpai/screens/chat_list/page/chat_list_page.dart';
import 'package:senpai/screens/entry/page/entry_page.dart';
import 'package:senpai/screens/home/page/home_page.dart';
import 'package:senpai/screens/license/page/license_page.dart';
import 'package:senpai/screens/match/page/match_page.dart';
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
        AutoRoute(page: OnboardingRoute.page, guards: [ExistingUserGuard()]),
        AutoRoute(page: EntryRoute.page, path: '/entry'),
        AutoRoute(page: SignUpRoute.page, path: '/create_user'),
        AutoRoute(page: VerifyPhoneRoute.page, path: '/verify_phone'),
        AutoRoute(page: SenpaiLicenseRoute.page, path: '/license'),
        AutoRoute(page: VerifyPhotoRoute.page, path: '/verify_photo'),
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: MatchRoute.page, path: 'match'),
          AutoRoute(page: ChatListRoute.page, path: 'chat_list'),
          AutoRoute(page: ProfileFillRoute.page, path: 'profile_fill'),
        ]),
        AutoRoute(
          page: ChatRoute.page,
          path: 'chat',
          initial: true,
        )
      ];
}
