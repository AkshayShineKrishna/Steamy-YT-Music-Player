import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:steamy/domain/core/apiendpoints.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/validate/validate_playlist/model/validate_playlist_response.dart';
import 'package:steamy/domain/validate/validate_services.dart';
import 'package:steamy/domain/validate/validate_song/model/validate_song_data_response.dart';

@LazySingleton(as: ValidateServices)
class ValidateImp implements ValidateServices {
  @override
  Future<Either<MainFailure, ValidateSongDataResponse>> validateSong() {
    // TODO: implement validateSong
    throw UnimplementedError();
  }

  @override
  Future<Either<MainFailure, ValidatePlaylistResponse>> validatePlaylist(
      {required List<String> urlList}) async {
    try {
      final Response response = await Dio(BaseOptions()).post(
          ApiEndpoints.validatePlaylist,
          data: urlList,
          options: Options(contentType: Headers.jsonContentType));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        final result = ValidatePlaylistResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
