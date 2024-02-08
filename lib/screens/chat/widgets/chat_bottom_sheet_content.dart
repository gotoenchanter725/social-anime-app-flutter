import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/chat/bloc/tab_bar_bloc/tab_bar_bloc.dart';
import 'package:senpai/screens/chat/widgets/anime_selector.dart';
import 'package:senpai/screens/chat/widgets/giphy_selector.dart';
import 'package:senpai/screens/chat/widgets/stickers_selector.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatBottomSheetContent extends StatelessWidget {
  final void Function(ChatMessage message) onMessageSent;

  final User receipientUser;

  final User currentUser;

  const ChatBottomSheetContent(
      {super.key,
      required this.onMessageSent,
      required this.receipientUser,
      required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarBloc(),
      child: BlocBuilder<TabBarBloc, TabBarState>(
        builder: (context, state) {
          return Column(
            children: [
              _buildTabBarHeader(context),
              Expanded(
                child: _buildTabBarContent(context),
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
          getTitleNameByIndex(index, context),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: $constants.palette.white,
              ),
        ),
      ),
    );
  }

  Widget _buildTabBarContent(BuildContext context) {
    final bloc = BlocProvider.of<TabBarBloc>(context);
    final currentIndex = bloc.currentIndex;
    final item = _tabItemSelections[currentIndex];

    if (item.id == "01") {
      // Stickers
      return StickersSelector(
        onStickerSelected: (sticker) {
          _selectSticker(context, sticker);
        },
      );
    }

    if (item.id == "02") {
      // Gifs
      return GiphySelector(
        onGifSelected: (gif) {
          _selectGiphy(context, gif);
        },
      );
    }

    if (item.id == "03") {
      // Animes
      return AnimeSelector(onAnimeRecommendationSent: (anime, description) {
        _sendAnime(context, anime, description);
      });
    }

    logIt.debug("Tab bar item with id ${item.id} is not implemented yet!");

    return const Placeholder();
  }

  void _selectSticker(BuildContext context, Sticker sticker) {
    final BottomSheetBloc bottomSheetBloc =
        BlocProvider.of<BottomSheetBloc>(context);
    onMessageSent(ChatMessage(
      id: generateRandomId($constants.specials.pendingMessageIdLength),
      text: R.stringsOf(context).stickerMessageText,
      status: MessageStatus.pending,
      senderId: currentUser.id,
      timestamp: DateTime.now(),
      sticker: sticker,
    ));

    bottomSheetBloc.hide();
  }

  void _selectGiphy(BuildContext context, GiphyGif gif) {
    final BottomSheetBloc bottomSheetBloc =
        BlocProvider.of<BottomSheetBloc>(context);
    onMessageSent(ChatMessage(
      id: generateRandomId($constants.specials.pendingMessageIdLength),
      text: R.stringsOf(context).gifMessageText,
      status: MessageStatus.pending,
      senderId: currentUser.id,
      timestamp: DateTime.now(),
      attachment: gif.images!.original!.url,
      attachmentType: AttachmentType.photo,
    ));

    bottomSheetBloc.hide();
  }

  void _sendAnime(BuildContext context, AnimeModel anime, String description) {
    final BottomSheetBloc bottomSheetBloc =
        BlocProvider.of<BottomSheetBloc>(context);
    onMessageSent(ChatMessage(
        id: generateRandomId($constants.specials.pendingMessageIdLength),
        text: description,
        status: MessageStatus.pending,
        senderId: currentUser.id,
        timestamp: DateTime.now(),
        recommendation: Recommendation(
          userId: currentUser.id,
          recommendeeId: receipientUser.id,
          animeId: anime.id,
          animeName: anime.title!,
          animeImageUrl: anime.cover!,
        )));

    bottomSheetBloc.hide();
  }

  String getTitleNameByIndex(int index, BuildContext context) {
    switch (index) {
      case 0:
        return R.stringsOf(context).stickersTabText;
      case 1:
        return R.stringsOf(context).gifsTabText;
      case 2:
        return R.stringsOf(context).animeTabText;
    }

    return '';
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

List<_TabItem> _tabItemSelections = [
  _TabItem(id: '01', title: R.strings.stickersTabText),
  _TabItem(id: '02', title: R.strings.gifsTabText),
  _TabItem(id: '03', title: R.strings.animeTabText),
];
