import 'package:auto_route/auto_route.dart';
import 'package:senpai/screens/onboarding/page/onboarding_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        AutoRoute(page: OnboardingRoute.page, initial: true)
      ];
}
