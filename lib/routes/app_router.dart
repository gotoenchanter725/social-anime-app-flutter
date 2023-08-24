import 'package:auto_route/auto_route.dart';
import 'package:senpai/screens/entry/page/entry_page.dart';
import 'package:senpai/screens/onboarding/page/onboarding_page.dart';
import 'package:senpai/screens/signup/page/sign_up_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: EntryRoute.page, path: '/entry'),
        AutoRoute(page: SignUpRoute.page, path: '/create_user'),
      ];
}
