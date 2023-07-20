import 'package:steamy/domain/delete%20directory/model/delete_response.dart';
import 'package:dartz/dartz.dart';
import '../core/failure/main_failure.dart';

abstract class DeleteServices {
  Future<Either<MainFailure, DeleteResponse>> deleteDirectory();
}