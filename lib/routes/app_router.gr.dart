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
    AvatarShopRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AvatarShopPage(),
      );
    },
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
    EditFavoriteAnimeRoute.name: (routeData) {
      final args = routeData.argsAs<EditFavoriteAnimeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditFavoriteAnimePage(
          key: args.key,
          editBloc: args.editBloc,
        ),
      );
    },
    EditLocationRoute.name: (routeData) {
      final args = routeData.argsAs<EditLocationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditLocationPage(
          key: args.key,
          editBloc: args.editBloc,
        ),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditProfilePage(
          key: args.key,
          userID: args.userID,
        ),
      );
    },
    EditSpotifyMusicRoute.name: (routeData) {
      final args = routeData.argsAs<EditSpotifyMusicRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditSpotifyMusicPage(
          key: args.key,
          editBloc: args.editBloc,
          isSpotifyArtists: args.isSpotifyArtists,
        ),
      );
    },
    EntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EntryPage(),
      );
    },
    EventsListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventsListPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          defaultIndex: args.defaultIndex,
        ),
      );
    },
    LobbyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LobbyPage(),
      );
    },
    MatchRoute.name: (routeData) {
      final args = routeData.argsAs<MatchRouteArgs>(
          orElse: () => const MatchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MatchPage(
          key: args.key,
          defaultStep: args.defaultStep,
        ),
      );
    },
    MatchUsersRoute.name: (routeData) {
      final args = routeData.argsAs<MatchUsersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MatchUsersPage(
          key: args.key,
          likeUserModel: args.likeUserModel,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    PremiumRoute.name: (routeData) {
      final args = routeData.argsAs<PremiumRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PremiumPage(
          key: args.key,
          userId: args.userId,
        ),
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
          premium: args.premium,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ReportUserRoute.name: (routeData) {
      final args = routeData.argsAs<ReportUserRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ReportUserPage(
          key: args.key,
          reportArgs: args.reportArgs,
        ),
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
    SettingsVerifyPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsVerifyPhoneRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsVerifyPhonePage(
          key: args.key,
          settingsBloc: args.settingsBloc,
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
    UnityViewRoute.name: (routeData) {
      final args = routeData.argsAs<UnityViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UnityViewPage(
          key: args.key,
          avatorGuid: args.avatorGuid,
        ),
      );
    },
    UnityViewVideoChatRoute.name: (routeData) {
      final args = routeData.argsAs<UnityViewVideoChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UnityViewVideoChatPage(
          key: args.key,
          matchData: args.matchData,
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
    VideoViewerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoViewerPage(
          key: args.key,
          videoUrl: args.videoUrl,
          controllable: args.controllable,
        ),
      );
    },
    WorkEducationRoute.name: (routeData) {
      final args = routeData.argsAs<WorkEducationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WorkEducationPage(
          key: args.key,
          editBloc: args.editBloc,
          school: args.school,
          occupation: args.occupation,
        ),
      );
    },
  };
}

/// generated route for
/// [AvatarShopPage]
class AvatarShopRoute extends PageRouteInfo<void> {
  const AvatarShopRoute({List<PageRouteInfo>? children})
      : super(
          AvatarShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'AvatarShopRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [EditFavoriteAnimePage]
class EditFavoriteAnimeRoute extends PageRouteInfo<EditFavoriteAnimeRouteArgs> {
  EditFavoriteAnimeRoute({
    Key? key,
    required EditProfileBloc editBloc,
    List<PageRouteInfo>? children,
  }) : super(
          EditFavoriteAnimeRoute.name,
          args: EditFavoriteAnimeRouteArgs(
            key: key,
            editBloc: editBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'EditFavoriteAnimeRoute';

  static const PageInfo<EditFavoriteAnimeRouteArgs> page =
      PageInfo<EditFavoriteAnimeRouteArgs>(name);
}

class EditFavoriteAnimeRouteArgs {
  const EditFavoriteAnimeRouteArgs({
    this.key,
    required this.editBloc,
  });

  final Key? key;

  final EditProfileBloc editBloc;

  @override
  String toString() {
    return 'EditFavoriteAnimeRouteArgs{key: $key, editBloc: $editBloc}';
  }
}

/// generated route for
/// [EditLocationPage]
class EditLocationRoute extends PageRouteInfo<EditLocationRouteArgs> {
  EditLocationRoute({
    Key? key,
    required EditProfileBloc editBloc,
    List<PageRouteInfo>? children,
  }) : super(
          EditLocationRoute.name,
          args: EditLocationRouteArgs(
            key: key,
            editBloc: editBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'EditLocationRoute';

  static const PageInfo<EditLocationRouteArgs> page =
      PageInfo<EditLocationRouteArgs>(name);
}

class EditLocationRouteArgs {
  const EditLocationRouteArgs({
    this.key,
    required this.editBloc,
  });

  final Key? key;

  final EditProfileBloc editBloc;

  @override
  String toString() {
    return 'EditLocationRouteArgs{key: $key, editBloc: $editBloc}';
  }
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    required String userID,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            userID: userID,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<EditProfileRouteArgs> page =
      PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.userID,
  });

  final Key? key;

  final String userID;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, userID: $userID}';
  }
}

/// generated route for
/// [EditSpotifyMusicPage]
class EditSpotifyMusicRoute extends PageRouteInfo<EditSpotifyMusicRouteArgs> {
  EditSpotifyMusicRoute({
    Key? key,
    required EditProfileBloc editBloc,
    bool isSpotifyArtists = true,
    List<PageRouteInfo>? children,
  }) : super(
          EditSpotifyMusicRoute.name,
          args: EditSpotifyMusicRouteArgs(
            key: key,
            editBloc: editBloc,
            isSpotifyArtists: isSpotifyArtists,
          ),
          initialChildren: children,
        );

  static const String name = 'EditSpotifyMusicRoute';

  static const PageInfo<EditSpotifyMusicRouteArgs> page =
      PageInfo<EditSpotifyMusicRouteArgs>(name);
}

class EditSpotifyMusicRouteArgs {
  const EditSpotifyMusicRouteArgs({
    this.key,
    required this.editBloc,
    this.isSpotifyArtists = true,
  });

  final Key? key;

  final EditProfileBloc editBloc;

  final bool isSpotifyArtists;

  @override
  String toString() {
    return 'EditSpotifyMusicRouteArgs{key: $key, editBloc: $editBloc, isSpotifyArtists: $isSpotifyArtists}';
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
/// [EventsListPage]
class EventsListRoute extends PageRouteInfo<void> {
  const EventsListRoute({List<PageRouteInfo>? children})
      : super(
          EventsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    int defaultIndex = 0,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            defaultIndex: defaultIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.defaultIndex = 0,
  });

  final Key? key;

  final int defaultIndex;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, defaultIndex: $defaultIndex}';
  }
}

/// generated route for
/// [LobbyPage]
class LobbyRoute extends PageRouteInfo<void> {
  const LobbyRoute({List<PageRouteInfo>? children})
      : super(
          LobbyRoute.name,
          initialChildren: children,
        );

  static const String name = 'LobbyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MatchPage]
class MatchRoute extends PageRouteInfo<MatchRouteArgs> {
  MatchRoute({
    Key? key,
    int defaultStep = 0,
    List<PageRouteInfo>? children,
  }) : super(
          MatchRoute.name,
          args: MatchRouteArgs(
            key: key,
            defaultStep: defaultStep,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchRoute';

  static const PageInfo<MatchRouteArgs> page = PageInfo<MatchRouteArgs>(name);
}

class MatchRouteArgs {
  const MatchRouteArgs({
    this.key,
    this.defaultStep = 0,
  });

  final Key? key;

  final int defaultStep;

  @override
  String toString() {
    return 'MatchRouteArgs{key: $key, defaultStep: $defaultStep}';
  }
}

/// generated route for
/// [MatchUsersPage]
class MatchUsersRoute extends PageRouteInfo<MatchUsersRouteArgs> {
  MatchUsersRoute({
    Key? key,
    required LikeUserModel likeUserModel,
    List<PageRouteInfo>? children,
  }) : super(
          MatchUsersRoute.name,
          args: MatchUsersRouteArgs(
            key: key,
            likeUserModel: likeUserModel,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchUsersRoute';

  static const PageInfo<MatchUsersRouteArgs> page =
      PageInfo<MatchUsersRouteArgs>(name);
}

class MatchUsersRouteArgs {
  const MatchUsersRouteArgs({
    this.key,
    required this.likeUserModel,
  });

  final Key? key;

  final LikeUserModel likeUserModel;

  @override
  String toString() {
    return 'MatchUsersRouteArgs{key: $key, likeUserModel: $likeUserModel}';
  }
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
class PremiumRoute extends PageRouteInfo<PremiumRouteArgs> {
  PremiumRoute({
    Key? key,
    required int userId,
    List<PageRouteInfo>? children,
  }) : super(
          PremiumRoute.name,
          args: PremiumRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'PremiumRoute';

  static const PageInfo<PremiumRouteArgs> page =
      PageInfo<PremiumRouteArgs>(name);
}

class PremiumRouteArgs {
  const PremiumRouteArgs({
    this.key,
    required this.userId,
  });

  final Key? key;

  final int userId;

  @override
  String toString() {
    return 'PremiumRouteArgs{key: $key, userId: $userId}';
  }
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
    required bool premium,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileFilterRoute.name,
          args: ProfileFilterRouteArgs(
            key: key,
            animes: animes,
            premium: premium,
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
    required this.premium,
  });

  final Key? key;

  final List<AnimeModel>? animes;

  final bool premium;

  @override
  String toString() {
    return 'ProfileFilterRouteArgs{key: $key, animes: $animes, premium: $premium}';
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
/// [ReportUserPage]
class ReportUserRoute extends PageRouteInfo<ReportUserRouteArgs> {
  ReportUserRoute({
    Key? key,
    required ReportUserParams reportArgs,
    List<PageRouteInfo>? children,
  }) : super(
          ReportUserRoute.name,
          args: ReportUserRouteArgs(
            key: key,
            reportArgs: reportArgs,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportUserRoute';

  static const PageInfo<ReportUserRouteArgs> page =
      PageInfo<ReportUserRouteArgs>(name);
}

class ReportUserRouteArgs {
  const ReportUserRouteArgs({
    this.key,
    required this.reportArgs,
  });

  final Key? key;

  final ReportUserParams reportArgs;

  @override
  String toString() {
    return 'ReportUserRouteArgs{key: $key, reportArgs: $reportArgs}';
  }
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
/// [SettingsVerifyPhonePage]
class SettingsVerifyPhoneRoute
    extends PageRouteInfo<SettingsVerifyPhoneRouteArgs> {
  SettingsVerifyPhoneRoute({
    Key? key,
    required SettingsProfileBloc settingsBloc,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsVerifyPhoneRoute.name,
          args: SettingsVerifyPhoneRouteArgs(
            key: key,
            settingsBloc: settingsBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsVerifyPhoneRoute';

  static const PageInfo<SettingsVerifyPhoneRouteArgs> page =
      PageInfo<SettingsVerifyPhoneRouteArgs>(name);
}

class SettingsVerifyPhoneRouteArgs {
  const SettingsVerifyPhoneRouteArgs({
    this.key,
    required this.settingsBloc,
  });

  final Key? key;

  final SettingsProfileBloc settingsBloc;

  @override
  String toString() {
    return 'SettingsVerifyPhoneRouteArgs{key: $key, settingsBloc: $settingsBloc}';
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
/// [UnityViewPage]
class UnityViewRoute extends PageRouteInfo<UnityViewRouteArgs> {
  UnityViewRoute({
    Key? key,
    required String avatorGuid,
    List<PageRouteInfo>? children,
  }) : super(
          UnityViewRoute.name,
          args: UnityViewRouteArgs(
            key: key,
            avatorGuid: avatorGuid,
          ),
          initialChildren: children,
        );

  static const String name = 'UnityViewRoute';

  static const PageInfo<UnityViewRouteArgs> page =
      PageInfo<UnityViewRouteArgs>(name);
}

class UnityViewRouteArgs {
  const UnityViewRouteArgs({
    this.key,
    required this.avatorGuid,
  });

  final Key? key;

  final String avatorGuid;

  @override
  String toString() {
    return 'UnityViewRouteArgs{key: $key, avatorGuid: $avatorGuid}';
  }
}

/// generated route for
/// [UnityViewVideoChatPage]
class UnityViewVideoChatRoute
    extends PageRouteInfo<UnityViewVideoChatRouteArgs> {
  UnityViewVideoChatRoute({
    Key? key,
    required dynamic matchData,
    List<PageRouteInfo>? children,
  }) : super(
          UnityViewVideoChatRoute.name,
          args: UnityViewVideoChatRouteArgs(
            key: key,
            matchData: matchData,
          ),
          initialChildren: children,
        );

  static const String name = 'UnityViewVideoChatRoute';

  static const PageInfo<UnityViewVideoChatRouteArgs> page =
      PageInfo<UnityViewVideoChatRouteArgs>(name);
}

class UnityViewVideoChatRouteArgs {
  const UnityViewVideoChatRouteArgs({
    this.key,
    required this.matchData,
  });

  final Key? key;

  final dynamic matchData;

  @override
  String toString() {
    return 'UnityViewVideoChatRouteArgs{key: $key, matchData: $matchData}';
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

/// generated route for
/// [VideoViewerPage]
class VideoViewerRoute extends PageRouteInfo<VideoViewerRouteArgs> {
  VideoViewerRoute({
    Key? key,
    required String videoUrl,
    required bool controllable,
    List<PageRouteInfo>? children,
  }) : super(
          VideoViewerRoute.name,
          args: VideoViewerRouteArgs(
            key: key,
            videoUrl: videoUrl,
            controllable: controllable,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoViewerRoute';

  static const PageInfo<VideoViewerRouteArgs> page =
      PageInfo<VideoViewerRouteArgs>(name);
}

class VideoViewerRouteArgs {
  const VideoViewerRouteArgs({
    this.key,
    required this.videoUrl,
    required this.controllable,
  });

  final Key? key;

  final String videoUrl;

  final bool controllable;

  @override
  String toString() {
    return 'VideoViewerRouteArgs{key: $key, videoUrl: $videoUrl, controllable: $controllable}';
  }
}

/// generated route for
/// [WorkEducationPage]
class WorkEducationRoute extends PageRouteInfo<WorkEducationRouteArgs> {
  WorkEducationRoute({
    Key? key,
    required EditProfileBloc editBloc,
    String? school,
    String? occupation,
    List<PageRouteInfo>? children,
  }) : super(
          WorkEducationRoute.name,
          args: WorkEducationRouteArgs(
            key: key,
            editBloc: editBloc,
            school: school,
            occupation: occupation,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkEducationRoute';

  static const PageInfo<WorkEducationRouteArgs> page =
      PageInfo<WorkEducationRouteArgs>(name);
}

class WorkEducationRouteArgs {
  const WorkEducationRouteArgs({
    this.key,
    required this.editBloc,
    this.school,
    this.occupation,
  });

  final Key? key;

  final EditProfileBloc editBloc;

  final String? school;

  final String? occupation;

  @override
  String toString() {
    return 'WorkEducationRouteArgs{key: $key, editBloc: $editBloc, school: $school, occupation: $occupation}';
  }
}
