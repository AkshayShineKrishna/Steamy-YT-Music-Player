import 'package:steamy/core/baseUrl.dart';

class ApiEndpoints {
  static const stream = '$baseUrl/stream?video_url';
  static const refresh = '$baseUrl/refresh';
  static const getAudio = '$baseUrl/get_audio';
  static const download = '$baseUrl/send?video_url';
  static const validatePlaylist = '$baseUrl/validate_playlist';
  static const validateSong = '$baseUrl/validate_song_data';
}
