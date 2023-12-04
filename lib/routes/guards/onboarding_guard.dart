import 'package:auto_route/auto_route.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/routes/app_router.dart';

class ExistingUserGuard extends AutoRouteGuard {
  Future<bool> isFirstVisit() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    return authModel == null;
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isNewUser = await isFirstVisit();

    if (!isNewUser) {
      await router.push(const EntryRoute());
    }
    resolver.next(true);
  }
}
