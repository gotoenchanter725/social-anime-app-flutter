import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/match/distance_between_users/distance_between_users_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'preview_profile_state.dart';
part 'preview_profile_event.dart';

class PreviewProfileBloc
    extends Bloc<PreviewProfileEvent, PreviewProfileState> {
  UserProfileModel user = UserProfileModel.initial();

  DistanceBetweenUsersModel distance = DistanceBetweenUsersModel.initial();

  ScrollController tracksListController = ScrollController();
  ScrollController artistsListController = ScrollController();

  bool isTracksPagination = false;
  bool isArtistsPagination = false;

  PreviewProfileBloc() : super(PreviewProfileInitial()) {
    on<OnPreviewProfileInitEvent>((event, emit) {
      emit(LoadingState());
      user = event.user;
      tracksListController.addListener(_paginationTracks);
      artistsListController.addListener(_paginationArtists);
      emit(ValidState());
    });

    on<OnFetchDistanceBeetwenUsersEvent>((event, emit) {
      emit(LoadingState());
      distance = event.distance;
      emit(ValidState());
    });

    on<OnChangePaginationTracksEvent>((event, emit) {
      emit(LoadingState());
      emit(ValidSpotifyTracksState());
    });

    on<OnChangePaginationArtistsEvent>((event, emit) {
      emit(LoadingState());
      emit(ValidSpotifyArtistsState());
    });

    on<OnInitPaginationEvent>((event, emit) {
      emit(LoadingState());
      isTracksPagination = false;
      isArtistsPagination = false;
      emit(ValidSpotifyArtistsState());
    });
  }

  Future<void> _paginationTracks() async {
    final pixels = tracksListController.position.pixels;
    final maxScrollExtent = tracksListController.position.maxScrollExtent;
    final minScrollExtent = tracksListController.position.minScrollExtent;

    if (maxScrollExtent == pixels && !isTracksPagination) {
      isTracksPagination = !isTracksPagination;
      add(OnChangePaginationTracksEvent());
    }

    if (minScrollExtent == pixels && isTracksPagination) {
      isTracksPagination = !isTracksPagination;
      add(OnChangePaginationTracksEvent());
    }
  }

  Future<void> _paginationArtists() async {
    final pixels = artistsListController.position.pixels;
    final maxScrollExtent = artistsListController.position.maxScrollExtent;
    final minScrollExtent = artistsListController.position.minScrollExtent;

    if (maxScrollExtent == pixels && !isArtistsPagination) {
      isArtistsPagination = !isArtistsPagination;
      add(OnChangePaginationArtistsEvent());
    }

    if (minScrollExtent == pixels && isArtistsPagination) {
      isArtistsPagination = !isArtistsPagination;
      add(OnChangePaginationArtistsEvent());
    }
  }

  @override
  Future<void> close() {
    tracksListController.dispose();
    artistsListController.dispose();
    return super.close();
  }
}
