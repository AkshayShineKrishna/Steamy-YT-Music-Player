import 'package:steamy/domain/playlist/model/playlist_data.dart';

import 'model/song_data.dart';

abstract class PlaylistServices {
  Future<void> createPlaylist(
      {required name,
      required List<SongData> song,
      String? description,
      String? mood,
      String duration = "0 sec"});

  Future<void> addToPlaylist(String playlistName, SongData song);

  Future<void> addToLikedPlaylist({required SongData song});

  List<Playlist> getAllPlaylists();

  bool isSongIdInPlaylist(
      {required String playlistName, required String songId});

  Future<void> removeFromLikedPlaylist({required String songId});
}
