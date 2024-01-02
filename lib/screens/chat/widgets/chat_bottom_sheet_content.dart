import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/chat/bloc/tab_bar_bloc/tab_bar_bloc.dart';
import 'package:senpai/utils/constants.dart';

class ChatBottomSheetContent extends StatelessWidget {
  const ChatBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarBloc(),
      child: BlocBuilder<TabBarBloc, TabBarState>(
        builder: (context, state) {
          return Column(
            children: [
              _buildTabBarHeader(context),
              const Expanded(
                child: Placeholder(),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildTabBarHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: $constants.insets.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _tabItemSelections
            .asMap()
            .entries
            .map((entry) => _buildTabBarItem(context, entry.key))
            .toList(),
      ),
    );
  }

  Widget _buildTabBarItem(BuildContext context, int index) {
    final bloc = BlocProvider.of<TabBarBloc>(context);
    final item = _tabItemSelections[index];
    final isSelected = bloc.currentIndex == index;

    return GestureDetector(
      onTap: () => bloc.add(TabBarItemTappedEvent(index: index)),
      child: Container(
        height: $constants.sizes.buttonHeight,
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(color: $constants.palette.buttonBorder, width: 1)
              : null,
          borderRadius: BorderRadius.circular($constants.corners.xl),
        ),
        alignment: Alignment.center,
        child: Text(
          item.title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: $constants.palette.white,
              ),
        ),
      ),
    );
  }
}

class _TabItem {
  final String title;
  final String id;

  const _TabItem({
    required this.id,
    required this.title,
  });
}

const List<_TabItem> _tabItemSelections = [
  _TabItem(id: '01', title: TextConstants.stickersTabText),
  _TabItem(id: '02', title: TextConstants.gifsTabText),
  _TabItem(id: '03', title: TextConstants.animeTabText),
];
