import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/aliases.dart';

class FetchStickersBloc extends QueryBloc<FetchStickers$Query> {
  int page = 0;
  List<Sticker> stickers = [];
  FetchStickersBloc() : super(options: _fetchStickersQueryOptions());

  static WatchQueryOptions<Object?> _fetchStickersQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_STICKERS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  Future<void> fetchStickers() async {
    final variables = FetchStickersArguments(page: 0).toJson();
    run(variables: variables);
  }

  Future<void> fetchMoreStickers() async {
    page++;
    final variables = FetchStickersArguments(page: page).toJson();

    fetchMore(FetchMoreOptions(
      variables: variables,
      updateQuery: (previousResultData, fetchMoreResultData) {
        if (fetchMoreResultData == null) {
          return previousResultData!;
        }
        try {
          final List<dynamic> mergedStickers =
              List.from(previousResultData!["fetchStickers"]["data"])
                ..addAll(fetchMoreResultData["fetchStickers"]["data"]);
          return {
            "fetchStickers": {
              "data": mergedStickers,
              "__typename": "StickerPagination"
            }
          };
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
