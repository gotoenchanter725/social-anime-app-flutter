import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_get/giphy_get.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

part 'giphy_bloc.freezed.dart';

String randomId = generateRandomId(10);

@freezed
class GiphyEvent with _$GiphyEvent {
  const factory GiphyEvent.fetchTrending() = FetchTrending;
  const factory GiphyEvent.search(String query) = Search;
}

@freezed
class GiphyState with _$GiphyState {
  const factory GiphyState.initial() = Initial;
  const factory GiphyState.loading() = Loading;
  const factory GiphyState.loaded(List<GiphyGif> gifs) = Loaded;
  const factory GiphyState.error(String message) = Error;
}

class GiphyBloc extends Bloc<GiphyEvent, GiphyState> {
  Timer? _debounce;

  GiphyBloc() : super(const Initial()) {
    on<FetchTrending>(_onFetchTrending);
    on<Search>(_onSearch);
  }

  Future<void> _onFetchTrending(
      FetchTrending event, Emitter<GiphyState> emit) async {
    emit(const Loading());
    try {
      var gifs = await GiphyClient(apiKey: env.giphyApiKey, randomId: randomId)
          .trending();
      emit(Loaded(gifs.data));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  Future<void> _onSearch(Search event, Emitter<GiphyState> emit) async {
    emit(const Loading());
    try {
      var gifs = await GiphyClient(apiKey: env.giphyApiKey, randomId: randomId)
          .search(event.query);
      emit(Loaded(gifs.data));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  onSearchTextChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      add(Search(query));
    });
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
