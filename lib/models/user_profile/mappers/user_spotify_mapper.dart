import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_artist/spotify_artist_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_track/spotify_track_model.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';

extension UserFavoriteArtistMapper on SpotifyArtistModel {
  UserFavoriteMusicModel toUserFavoriteArtistModel() {
    return UserFavoriteMusicModel(
      id: id,
      artistName: name,
      coverUrl: images?.first.url ?? '',
      musicType: MusicType.artist.name,
      spotifyId: id,
    );
  }
}

extension UserFavoriteTrackMapper on SpotifyTrackModel {
  UserFavoriteMusicModel toUserFavoriteTrackModel() {
    final List<String> artistNames =
        album.artists.map((artist) => artist.name).toList();
    final artistName = artistNames.join(", ");

    return UserFavoriteMusicModel(
      id: id,
      artistName: artistName,
      trackName: name,
      coverUrl: album.images?.first.url ?? '',
      musicType: MusicType.track.name,
      spotifyId: id,
    );
  }
}

extension UserModelMapper on UserFavoriteMusicModel {
  FavoriteMusicInput toUserFavoriteMusicInput(int userId) {
    return FavoriteMusicInput(
      userId: userId.toString(),
      artistName: artistName,
      trackName: trackName,
      coverUrl: coverUrl,
      musicType: musicType,
      spotifyId: spotifyId ?? '',
    );
  }
}
