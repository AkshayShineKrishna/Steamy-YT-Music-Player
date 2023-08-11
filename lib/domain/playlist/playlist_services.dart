import 'package:steamy/domain/playlist/model/playlist_data.dart';

import 'model/song_data.dart';

abstract class PlaylistServices {
  Future<void> createPlaylist(String name);
  Future<void> addToPlaylist(String playlistName, SongData song);
  Future<void> addToLikedPlaylist(SongData song);
  Future<List<PlaylistData>> getPlaylists();
}
