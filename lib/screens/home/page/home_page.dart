import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeStorageBloc>(
      create: (_) => getIt<HomeStorageBloc>(),
      child: AutoTabsScaffold(
        routes: const [
          MatchRoute(),
          ChatListRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: _createdBottomTabBar,
      ),
    );
  }

  Widget _createdBottomTabBar(BuildContext context, TabsRouter router) {
    return BottomNavigationBar(
      currentIndex: router.activeIndex,
      backgroundColor: $constants.palette.lightBlue,
      selectedItemColor: $constants.palette.white,
      unselectedItemColor: $constants.palette.darkGrey,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.matchIcon,
            colorFilter:
                ColorFilter.mode($constants.palette.darkGrey, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            PathConstants.matchIcon,
          ),
          label: R.strings.matchTabText,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.chatIcon,
            colorFilter:
                ColorFilter.mode($constants.palette.darkGrey, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            PathConstants.chatIcon,
          ),
          label: R.strings.chatTabText,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.profileIcon,
            colorFilter:
                ColorFilter.mode($constants.palette.darkGrey, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            PathConstants.profileIcon,
          ),
          label: R.strings.profileTabText,
        ),
      ],
      onTap: (index) {
        router.setActiveIndex(index);
        if (index == 0) {
          final storageBloc = BlocProvider.of<HomeStorageBloc>(context);
          storageBloc.add(OnOpenMatchScreen());
        }
      },
    );
  }
}
