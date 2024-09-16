import 'package:dartz/dartz.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_failure.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_artist/spotify_artist_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_track/spotify_track_model.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';

abstract class SpotifyFetchUserInfoUseCase {
  Future<Either<SpotifyFailure, List<SpotifyArtistModel>>> getTopArtists(
      SpotifyAuthModel? spotifyAuthModel);
  Future<Either<SpotifyFailure, List<SpotifyTrackModel>>> getTopTracks();
}
