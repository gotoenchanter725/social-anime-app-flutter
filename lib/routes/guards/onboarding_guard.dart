import 'package:auto_route/auto_route.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:senpai/routes/app_router.dart';

class ExistingUserGuard extends AutoRouteGuard {
  Future<bool> isFirstVisit() async {
    const storage = FlutterSecureStorage();
    final firstVisit = await storage.read(key: 'first_visit');
    return firstVisit == null;
  }

  Future<void> setFirstVisit() async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'first_visit', value: 'visited');
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isNewUser = await isFirstVisit();

    if (isNewUser) {
      await setFirstVisit();
      resolver.next(true);
    } else {
      await router.push(const EntryRoute());
      resolver.next(true);
    }
  }
}
