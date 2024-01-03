import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/aliases.dart';

class FetchStickersBloc extends QueryBloc<FetchStickers$Query> {
  int currentPage = 1;
  int lastCheckedPage = 0;
  List<Sticker> stickers = [];
  FetchStickersBloc() : super(options: _fetchStickersQueryOptions()) {
    fetchStickers();
  }

  static WatchQueryOptions<Object?> _fetchStickersQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_STICKERS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  Future<void> fetchStickers() async {
    currentPage = 1;
    lastCheckedPage = 0;
    final variables = FetchStickersArguments(page: currentPage).toJson();
    run(variables: variables);
  }

  // The parameter i stands for the index of the item that is about to be rendered
  @override
  bool shouldFetchMore(int i, int threshold) {
    return state.maybeWhen(
      loaded: (data, result) {
        try {
          // check that the index is a multiple of the threshold to fetch more
          // this is to make sure that each page is fetched only once
          final int currentStickerCount = i + 1;
          if (currentStickerCount % threshold != 0) {
            return false;
          }

          // parse the stickers and check if the length is greater than the threshold

          if (stickers.isEmpty) {
            return false;
          }

          // only fetch more stickers if we have reached the end of the last loaded page
          if (currentStickerCount != stickers.length) {
            return false;
          }

          // check if the last page is full
          // if the last page is not full, then there are no more stickers to fetch
          if (stickers.length % threshold != 0) {
            return false;
          }

          // get last page as a perfect multiple of the threshold
          currentPage = stickers.length ~/ threshold;

          // check if the last page checked is the same as the next page
          // if the last page is the same as the next page, then there are no more stickers to fetch
          int nextPage = currentPage + 1;
          if (lastCheckedPage == nextPage) {
            return false;
          }

          logIt.info("Fetching more stickers");

          // if all the conditions are met, return true
          return true;
        } catch (e) {
          logIt.error(e);
          return false;
        }
      },
      orElse: () => false,
    );
  }

  Future<void> fetchMoreStickers() async {
    currentPage++;
    lastCheckedPage = currentPage;
    final variables = FetchStickersArguments(page: currentPage).toJson();

    fetchMore(FetchMoreOptions(
      variables: variables,
      updateQuery: (previousResultData, fetchMoreResultData) {
        if (fetchMoreResultData == null) {
          return previousResultData!;
        }
        try {
          final List<dynamic> mergedStickers =
              List.from(previousResultData!["fetchStickers"])
                ..addAll(fetchMoreResultData["fetchStickers"]);
          return {"fetchStickers": mergedStickers};
        } catch (e) {
          logIt.error(e);
          return previousResultData!;
        }
      },
    ));
  }

  @override
  FetchStickers$Query parseData(Map<String, dynamic>? data) {
    try {
      stickers = data!["fetchStickers"]
          .map<Sticker>((sticker) => Sticker.fromJson(sticker))
          .toList();
    } catch (e) {
      logIt.error(e);
    }
    return FetchStickers$Query.fromJson(data!);
  }
}
