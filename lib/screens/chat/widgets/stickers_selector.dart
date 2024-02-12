import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_stickers_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class StickersSelector extends StatelessWidget {
  final void Function(Sticker) onStickerSelected;

  const StickersSelector({super.key, required this.onStickerSelected});

  @override
  Widget build(BuildContext context) {
    return _buildStickersGrid(context);
  }

  _buildStickersGrid(BuildContext context) {
    final FetchStickersBloc fetchStickersBloc =
        BlocProvider.of<FetchStickersBloc>(context);
    // Calculate the horizontal and vertical spacing
    double screenWidth = getSize(context).width;
    double totalPadding = $constants.insets.lg * 2; // Total horizontal padding
    double totalCellWidth =
        getSize(context).width * 0.2 * 4; // Total width occupied by cells
    double spaceAvailable = screenWidth - totalPadding - totalCellWidth;
    double spacing = spaceAvailable / 3; // Space between cells

    return BlocBuilder<FetchStickersBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns
                childAspectRatio: 1, // Aspect ratio of each grid cell
                crossAxisSpacing: spacing, // Horizontal space between cells
                mainAxisSpacing: spacing, // Vertical space between cells
              ),
              itemCount: fetchStickersBloc.stickers.length,
              itemBuilder: (context, index) {
                final sticker = fetchStickersBloc.stickers[index];
                if (fetchStickersBloc.shouldFetchMore(
                    index, $constants.api.maxStickersToBeFetchedAtOneTime)) {
                  fetchStickersBloc.fetchMoreStickers();
                }
                return GestureDetector(
                  onTap: () => {
                    onStickerSelected(sticker),
                  },
                  child: CachedNetworkImage(
                    imageUrl: sticker.url,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          );
        }, loading: (_) {
          return const SenpaiLoading();
        });
      },
    );
  }
}
