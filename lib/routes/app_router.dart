import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/models/match/like_user_model/like_user_model.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/report_user/report_user_params.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/routes/guards/onboarding_guard.dart';
import 'package:senpai/screens/chat/page/chat_page.dart';
import 'package:senpai/screens/chat/widgets/video_viewer.dart';
import 'package:senpai/screens/chat_list/page/chat_list_page.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_favorite_anime/page/edit_favorite_anime_page.dart';
import 'package:senpai/screens/edit_profile/edit_location/page/edit_location_page.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/page/edit_spotify_music_page.dart';
import 'package:senpai/screens/edit_profile/page/edit_profile_page.dart';
import 'package:senpai/screens/edit_profile/work_education/page/work_education_page.dart';
import 'package:senpai/screens/entry/page/entry_page.dart';
import 'package:senpai/screens/home/page/home_page.dart';
import 'package:senpai/screens/license/page/license_page.dart';
import 'package:senpai/screens/match/page/match_page.dart';
import 'package:senpai/screens/match_users/page/match_users_page.dart';
import 'package:senpai/screens/onboarding/page/onboarding_page.dart';
import 'package:senpai/screens/premium_screen/page/premium_page.dart';
import 'package:senpai/screens/preview_profile/page/preview_profile_page.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_page/profile_filter_page.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/phone_number_content/settings_verify_phone/page/settings_verify_phone_page.dart';
import 'package:senpai/screens/profile/settings_profile/settings_profile_page/settings_profile_page.dart';
import 'package:senpai/screens/profile_fill/page/profile_fill.dart';
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/upload_photos/page/upload_photos_manager_page.dart';
import 'package:senpai/screens/report_user/page/report_user_page.dart';
import 'package:senpai/screens/signup/page/sign_up_page.dart';
import 'package:senpai/screens/verify_phone/page/verify_phone_page.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/screens/verify_photo/camera_page/page/verify_camera_page.dart';
import 'package:senpai/screens/verify_photo/page/verify_photo_page.dart';
import 'package:senpai/screens/profile/page/profile.dart';
import 'package:senpai/screens/chat_list/page/search_chat_list_page.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        AutoRoute(
            page: OnboardingRoute.page,
            // page: MatchRoute.page,
            initial: true,
            guards: [ExistingUserGuard()]),
        AutoRoute(page: EntryRoute.page, path: '/entry'),
        AutoRoute(page: SignUpRoute.page, path: '/create_user'),
        AutoRoute(page: VerifyPhoneRoute.page, path: '/verify_phone'),
        AutoRoute(page: SenpaiLicenseRoute.page, path: '/license'),
        AutoRoute(page: ProfileFillRoute.page, path: '/profile_fill'),
        AutoRoute(page: VerifyPhotoRoute.page, path: '/verify_photo'),
        AutoRoute(page: HomeRoute.page, path: '/home', children: [
          AutoRoute(page: MatchRoute.page, path: 'match'),
          AutoRoute(page: ChatListRoute.page, path: 'chat_list'),
          AutoRoute(page: ProfileRoute.page, path: 'profile')
        ]),
        AutoRoute(
          page: ChatRoute.page,
          path: '/chat',
        ),
        CustomRoute(
          page: SearchChatListRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: UploadPhotosManagerRoute.page, path: '/photos_manager'),
        AutoRoute(page: VerifyCameraRoute.page, path: '/verify_camera'),
        AutoRoute(page: PremiumRoute.page, path: '/premium'),
        AutoRoute(page: SettingsProfileRoute.page, path: '/settings_profile'),
        AutoRoute(page: ProfileFilterRoute.page, path: '/profile_filter'),
        AutoRoute(page: PreviewProfileRoute.page, path: '/preview_profile'),
        AutoRoute(page: EditProfileRoute.page, path: '/edit_profile'),
        AutoRoute(page: WorkEducationRoute.page, path: '/work_and_education'),
        AutoRoute(
            page: EditFavoriteAnimeRoute.page, path: '/edit_favorite_anime'),
        AutoRoute(
          page: EditSpotifyMusicRoute.page,
          path: '/edit_spotify_music',
        ),
        AutoRoute(
          page: SettingsVerifyPhoneRoute.page,
          path: '/settings_verify_phone',
        ),
        AutoRoute(page: EditLocationRoute.page, path: '/edit_location'),
        AutoRoute(page: MatchUsersRoute.page, path: '/match_users'),
        AutoRoute(page: ReportUserRoute.page, path: '/report_user'),
        AutoRoute(page: VideoViewerRoute.page, path: '/video_viewer'),
      ];
}
