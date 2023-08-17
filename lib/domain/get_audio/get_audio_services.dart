import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/get_audio/Model/get_audio_response.dart';
import 'package:dartz/dartz.dart';

abstract class GetAudioServices {
  Future<Either<MainFailure, GetAudioResponse>> getAudio({
    required String youtubeUrl,
  });
}
