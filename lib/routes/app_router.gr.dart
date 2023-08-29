// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    EntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EntryPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    ProfileFillRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileFillPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    VerifyPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyPhoneRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyPhonePage(
          key: args.key,
          phone: args.phone,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [EntryPage]
class EntryRoute extends PageRouteInfo<void> {
  const EntryRoute({List<PageRouteInfo>? children})
      : super(
          EntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileFillPage]
class ProfileFillRoute extends PageRouteInfo<void> {
  const ProfileFillRoute({List<PageRouteInfo>? children})
      : super(
          ProfileFillRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileFillRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerifyPhonePage]
class VerifyPhoneRoute extends PageRouteInfo<VerifyPhoneRouteArgs> {
  VerifyPhoneRoute({
    Key? key,
    required String phone,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPhoneRoute.name,
          args: VerifyPhoneRouteArgs(
            key: key,
            phone: phone,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPhoneRoute';

  static const PageInfo<VerifyPhoneRouteArgs> page =
      PageInfo<VerifyPhoneRouteArgs>(name);
}

class VerifyPhoneRouteArgs {
  const VerifyPhoneRouteArgs({
    this.key,
    required this.phone,
    required this.id,
  });

  final Key? key;

  final String phone;

  final String id;

  @override
  String toString() {
    return 'VerifyPhoneRouteArgs{key: $key, phone: $phone, id: $id}';
  }
}
