import 'package:dartz/dartz.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/validate/validate_playlist/model/validate_playlist_response.dart';
import 'package:steamy/domain/validate/validate_song/model/validate_song_data_response.dart';

abstract class ValidateServices {
  Future<Either<MainFailure, ValidatePlaylistResponse>> validatePlaylist({required List<String> urlList});
  Future<Either<MainFailure, ValidateSongDataResponse>> validateSong({required String songUrl});

}