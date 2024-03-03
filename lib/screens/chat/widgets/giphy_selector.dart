import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:senpai/core/chat/blocs/giphy_bloc/giphy_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class GiphySelector extends StatelessWidget {
  final void Function(GiphyGif gif) onGifSelected;
  const GiphySelector({super.key, required this.onGifSelected});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GiphyBloc>(
      create: (_) => GiphyBloc()..loadTrending(),
      child: BlocBuilder<GiphyBloc, GiphyState>(
        builder: (context, state) {
          return _buildGiphySelector(context);
        },
      ),
    );
  }

  Widget _buildSearchInput(BuildContext context) {
    GiphyBloc bloc = BlocProvider.of<GiphyBloc>(context);
    return SenpaiIconInput(
      iconPath: PathConstants.searchIcon,
      hintText: R.strings.searchGifPlaceHolderText,
      onChange: (text) {
        bloc.onSearchTextChanged(text);
      },
    );
  }

  Widget _buildGiphySelector(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchInput(context),
          SizedBox(height: $constants.insets.lg),
          BlocBuilder<GiphyBloc, GiphyState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox.shrink();
                },
                loading: () {
                  return const Expanded(child: SenpaiLoading());
                },
                loaded: (gifs) {
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: getSize(context).width * 0.5,
                        // mainAxisExtent: 2,
                        childAspectRatio: 1,
                        mainAxisSpacing: $constants.insets.sm,
                        crossAxisSpacing: $constants.insets.sm,
                      ),
                      itemCount: gifs.length,
                      itemBuilder: (context, index) {
                        final gif = gifs[index];
                        final aspectRatio =
                            double.parse(gif.images!.original!.width) /
                                double.parse(gif.images!.original!.height);
                        return GestureDetector(
                          onTap: () {
                            onGifSelected(gifs[index]);
                          },
                          child: AspectRatio(
                            aspectRatio: aspectRatio,
                            child: Image.network(
                              gifs[index].images!.original!.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
