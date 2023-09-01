import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/playlist/model/playlist_data.dart';
import 'package:steamy/domain/playlist/model/song_data.dart';
import 'package:steamy/domain/playlist/playlist_services.dart';

@LazySingleton(as: PlaylistServices)
class PlaylistServicesImpl implements PlaylistServices {
  @override
  Future<void> addToPlaylist(String playlistName, SongData song) async {
    final playlistBox = Hive.box<Playlist>('playlists');
    final playlist =
        playlistBox.values.firstWhere((pl) => pl.name == playlistName);
    playlist.songs.add(song);
    await playlistBox.put(playlist.key, playlist);
  }

  @override
  List<Playlist> getAllPlaylists() {
    final playlistBox = Hive.box<Playlist>('playlists');
    return playlistBox.values.toList();
  }

  @override
  Future<void> addToLikedPlaylist({required SongData song}) async {
    final playlistBox = Hive.box<Playlist>('playlists');
    final playlist = playlistBox.values.firstWhere((pl) => pl.name == 'Liked');
    playlist.songs.add(song);
    await playlistBox.put(playlist.name, playlist);
  }

  @override
  Future<void> createPlaylist(
      {required name,
      required List<SongData> song,
      String? description,
      String? mood,
      String duration = "0 sec"}) async {
    final playlistBox = Hive.box<Playlist>('playlists');
    final newPlaylist = Playlist(
        name: name,
        songs: [],
        description: description,
        mood: mood,
        duration: duration);
    await playlistBox.add(newPlaylist);
  }

  @override
  bool isSongIdInPlaylist(
      {required String playlistName, required String songId}) {
    final playlistBox = Hive.box<Playlist>('playlists');
    final playlist =
        playlistBox.values.firstWhere((pl) => pl.name == playlistName);
    if (playlist.songs.any((song) => song.songKey == songId)) {
      return true;
    }

    return false;
  }

  @override
  Future<void> removeFromLikedPlaylist({required String songId}) async{
    final playlistBox = Hive.box<Playlist>('playlists');
    final playlist = playlistBox.values.firstWhere((pl) => pl.name == 'Liked');
    final updatedSongs =
        playlist.songs.where((song) => song.songKey != songId).toList();

    final updatedPlaylist = Playlist(
        name: playlist.name,
        songs: updatedSongs,
        duration: playlist.duration,
        mood: playlist.mood,
        description: playlist.description);

    await playlistBox.put(updatedPlaylist.name, updatedPlaylist);
  }
}
