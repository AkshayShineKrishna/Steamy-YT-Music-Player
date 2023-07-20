import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/downloads/Model/downloads_response.dart';
import 'package:steamy/domain/downloads/downloadsservices.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import '../domain/core/apiendpoints.dart';

@LazySingleton(as: DownloadsServices)
class DownloadsImpl implements DownloadsServices {
  @override
  Future<Either<MainFailure, DownloadsResponse>> getDownloads(
      {required String youtubeUrl}) async {
    try {
      final formData = FormData.fromMap({'video_url': youtubeUrl});
      final Response response = await Dio(BaseOptions())
          .post(ApiEndpoints.downloadUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        final result = DownloadsResponse.fromJson(response.data);
        // log(result.toString());
        // log(response.toString());
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
