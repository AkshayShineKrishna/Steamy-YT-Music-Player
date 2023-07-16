import 'package:steamy/domain/downloads/Model/downloads_response.dart';
import 'package:dartz/dartz.dart';
import '../core/failure/main_failure.dart';

abstract class DownloadsServices {
  Future<Either<MainFailure, DownloadsResponse>> getDownloads({
    required String youtubeUrl,
  });
}
