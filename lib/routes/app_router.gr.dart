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
      final args = routeData.argsAs<ChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatPage(
          key: args.key,
          roomArgs: args.roomArgs,
        ),
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
    PremiumRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PremiumPage(),
      );
    },
    PreviewProfileRoute.name: (routeData) {
      final args = routeData.argsAs<PreviewProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PreviewProfilePage(
          key: args.key,
          userId: args.userId,
          vieweeId: args.vieweeId,
          onTapClose: args.onTapClose,
          onTapLike: args.onTapLike,
        ),
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
    ProfileFilterRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileFilterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileFilterPage(
          key: args.key,
          animes: args.animes,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SearchChatListRoute.name: (routeData) {
      final args = routeData.argsAs<SearchChatListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchChatListPage(
          key: args.key,
          categorizedConversations: args.categorizedConversations,
        ),
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
    SettingsProfileRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsProfilePage(
          key: args.key,
          user: args.user,
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
          userID: args.userID,
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
class ChatRoute extends PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    Key? key,
    required ChatRoomParams roomArgs,
    List<PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            roomArgs: roomArgs,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<ChatRouteArgs> page = PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.roomArgs,
  });

  final Key? key;

  final ChatRoomParams roomArgs;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, roomArgs: $roomArgs}';
  }
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
/// [PremiumPage]
class PremiumRoute extends PageRouteInfo<void> {
  const PremiumRoute({List<PageRouteInfo>? children})
      : super(
          PremiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'PremiumRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreviewProfilePage]
class PreviewProfileRoute extends PageRouteInfo<PreviewProfileRouteArgs> {
  PreviewProfileRoute({
    Key? key,
    required String userId,
    required String vieweeId,
    void Function()? onTapClose,
    void Function()? onTapLike,
    List<PageRouteInfo>? children,
  }) : super(
          PreviewProfileRoute.name,
          args: PreviewProfileRouteArgs(
            key: key,
            userId: userId,
            vieweeId: vieweeId,
            onTapClose: onTapClose,
            onTapLike: onTapLike,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewProfileRoute';

  static const PageInfo<PreviewProfileRouteArgs> page =
      PageInfo<PreviewProfileRouteArgs>(name);
}

class PreviewProfileRouteArgs {
  const PreviewProfileRouteArgs({
    this.key,
    required this.userId,
    required this.vieweeId,
    this.onTapClose,
    this.onTapLike,
  });

  final Key? key;

  final String userId;

  final String vieweeId;

  final void Function()? onTapClose;

  final void Function()? onTapLike;

  @override
  String toString() {
    return 'PreviewProfileRouteArgs{key: $key, userId: $userId, vieweeId: $vieweeId, onTapClose: $onTapClose, onTapLike: $onTapLike}';
  }
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
/// [ProfileFilterPage]
class ProfileFilterRoute extends PageRouteInfo<ProfileFilterRouteArgs> {
  ProfileFilterRoute({
    Key? key,
    required List<AnimeModel>? animes,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileFilterRoute.name,
          args: ProfileFilterRouteArgs(
            key: key,
            animes: animes,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileFilterRoute';

  static const PageInfo<ProfileFilterRouteArgs> page =
      PageInfo<ProfileFilterRouteArgs>(name);
}

class ProfileFilterRouteArgs {
  const ProfileFilterRouteArgs({
    this.key,
    required this.animes,
  });

  final Key? key;

  final List<AnimeModel>? animes;

  @override
  String toString() {
    return 'ProfileFilterRouteArgs{key: $key, animes: $animes}';
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
/// [SearchChatListPage]
class SearchChatListRoute extends PageRouteInfo<SearchChatListRouteArgs> {
  SearchChatListRoute({
    Key? key,
    required CategorizedConversations categorizedConversations,
    List<PageRouteInfo>? children,
  }) : super(
          SearchChatListRoute.name,
          args: SearchChatListRouteArgs(
            key: key,
            categorizedConversations: categorizedConversations,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchChatListRoute';

  static const PageInfo<SearchChatListRouteArgs> page =
      PageInfo<SearchChatListRouteArgs>(name);
}

class SearchChatListRouteArgs {
  const SearchChatListRouteArgs({
    this.key,
    required this.categorizedConversations,
  });

  final Key? key;

  final CategorizedConversations categorizedConversations;

  @override
  String toString() {
    return 'SearchChatListRouteArgs{key: $key, categorizedConversations: $categorizedConversations}';
  }
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
/// [SettingsProfilePage]
class SettingsProfileRoute extends PageRouteInfo<SettingsProfileRouteArgs> {
  SettingsProfileRoute({
    Key? key,
    required UserProfileModel user,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsProfileRoute.name,
          args: SettingsProfileRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsProfileRoute';

  static const PageInfo<SettingsProfileRouteArgs> page =
      PageInfo<SettingsProfileRouteArgs>(name);
}

class SettingsProfileRouteArgs {
  const SettingsProfileRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserProfileModel user;

  @override
  String toString() {
    return 'SettingsProfileRouteArgs{key: $key, user: $user}';
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
    int? userID,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPhotoRoute.name,
          args: VerifyPhotoRouteArgs(
            key: key,
            userID: userID,
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
    this.userID,
  });

  final Key? key;

  final int? userID;

  @override
  String toString() {
    return 'VerifyPhotoRouteArgs{key: $key, userID: $userID}';
  }
}
