import 'package:steamy/domain/refresh/model/refresh_response.dart';
import 'package:dartz/dartz.dart';
import '../core/failure/main_failure.dart';

abstract class RefreshServices {
  Future<Either<MainFailure, RefreshResponse>> refreshServer();
}
