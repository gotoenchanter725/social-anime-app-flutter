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
    ChatListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatListPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatPage(),
      );
    },
    EntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EntryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MatchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MatchPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    ProfileFillRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileFillRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileFillPage(
          key: args.key,
          phone: args.phone,
          id: args.id,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SenpaiLicenseRoute.name: (routeData) {
      final args = routeData.argsAs<SenpaiLicenseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SenpaiLicensePage(
          key: args.key,
          mdFileName: args.mdFileName,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpPage(
          key: args.key,
          isExistingUser: args.isExistingUser,
        ),
      );
    },
    UploadPhotosManagerRoute.name: (routeData) {
      final args = routeData.argsAs<UploadPhotosManagerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UploadPhotosManagerPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    VerifyCameraRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyCameraRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyCameraPage(
          key: args.key,
          bloc: args.bloc,
        ),
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
    VerifyPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyPhotoRouteArgs>(
          orElse: () => const VerifyPhotoRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VerifyPhotoPage(
          key: args.key,
          photo: args.photo,
        ),
      );
    },
  };
}

/// generated route for
/// [ChatListPage]
class ChatListRoute extends PageRouteInfo<void> {
  const ChatListRoute({List<PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MatchPage]
class MatchRoute extends PageRouteInfo<void> {
  const MatchRoute({List<PageRouteInfo>? children})
      : super(
          MatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MatchRoute';

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
class ProfileFillRoute extends PageRouteInfo<ProfileFillRouteArgs> {
  ProfileFillRoute({
    Key? key,
    required String phone,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileFillRoute.name,
          args: ProfileFillRouteArgs(
            key: key,
            phone: phone,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileFillRoute';

  static const PageInfo<ProfileFillRouteArgs> page =
      PageInfo<ProfileFillRouteArgs>(name);
}

class ProfileFillRouteArgs {
  const ProfileFillRouteArgs({
    this.key,
    required this.phone,
    required this.id,
  });

  final Key? key;

  final String phone;

  final String id;

  @override
  String toString() {
    return 'ProfileFillRouteArgs{key: $key, phone: $phone, id: $id}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SenpaiLicensePage]
class SenpaiLicenseRoute extends PageRouteInfo<SenpaiLicenseRouteArgs> {
  SenpaiLicenseRoute({
    Key? key,
    required String mdFileName,
    List<PageRouteInfo>? children,
  }) : super(
          SenpaiLicenseRoute.name,
          args: SenpaiLicenseRouteArgs(
            key: key,
            mdFileName: mdFileName,
          ),
          initialChildren: children,
        );

  static const String name = 'SenpaiLicenseRoute';

  static const PageInfo<SenpaiLicenseRouteArgs> page =
      PageInfo<SenpaiLicenseRouteArgs>(name);
}

class SenpaiLicenseRouteArgs {
  const SenpaiLicenseRouteArgs({
    this.key,
    required this.mdFileName,
  });

  final Key? key;

  final String mdFileName;

  @override
  String toString() {
    return 'SenpaiLicenseRouteArgs{key: $key, mdFileName: $mdFileName}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    Key? key,
    required bool isExistingUser,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            isExistingUser: isExistingUser,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.key,
    required this.isExistingUser,
  });

  final Key? key;

  final bool isExistingUser;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, isExistingUser: $isExistingUser}';
  }
}

/// generated route for
/// [UploadPhotosManagerPage]
class UploadPhotosManagerRoute
    extends PageRouteInfo<UploadPhotosManagerRouteArgs> {
  UploadPhotosManagerRoute({
    Key? key,
    required PhotosBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          UploadPhotosManagerRoute.name,
          args: UploadPhotosManagerRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'UploadPhotosManagerRoute';

  static const PageInfo<UploadPhotosManagerRouteArgs> page =
      PageInfo<UploadPhotosManagerRouteArgs>(name);
}

class UploadPhotosManagerRouteArgs {
  const UploadPhotosManagerRouteArgs({
    this.key,
    required this.bloc,
  });

  final Key? key;

  final PhotosBloc bloc;

  @override
  String toString() {
    return 'UploadPhotosManagerRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [VerifyCameraPage]
class VerifyCameraRoute extends PageRouteInfo<VerifyCameraRouteArgs> {
  VerifyCameraRoute({
    Key? key,
    required VerifyPhotoBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyCameraRoute.name,
          args: VerifyCameraRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyCameraRoute';

  static const PageInfo<VerifyCameraRouteArgs> page =
      PageInfo<VerifyCameraRouteArgs>(name);
}

class VerifyCameraRouteArgs {
  const VerifyCameraRouteArgs({
    this.key,
    required this.bloc,
  });

  final Key? key;

  final VerifyPhotoBloc bloc;

  @override
  String toString() {
    return 'VerifyCameraRouteArgs{key: $key, bloc: $bloc}';
  }
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

/// generated route for
/// [VerifyPhotoPage]
class VerifyPhotoRoute extends PageRouteInfo<VerifyPhotoRouteArgs> {
  VerifyPhotoRoute({
    Key? key,
    File? photo,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPhotoRoute.name,
          args: VerifyPhotoRouteArgs(
            key: key,
            photo: photo,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPhotoRoute';

  static const PageInfo<VerifyPhotoRouteArgs> page =
      PageInfo<VerifyPhotoRouteArgs>(name);
}

class VerifyPhotoRouteArgs {
  const VerifyPhotoRouteArgs({
    this.key,
    this.photo,
  });

  final Key? key;

  final File? photo;

  @override
  String toString() {
    return 'VerifyPhotoRouteArgs{key: $key, photo: $photo}';
  }
}
