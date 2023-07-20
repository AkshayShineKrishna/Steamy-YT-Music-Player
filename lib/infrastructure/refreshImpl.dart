import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/delete%20directory/deleteservices.dart';
import 'package:steamy/domain/delete%20directory/model/delete_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import '../domain/core/apiendpoints.dart';

@LazySingleton(as: DeleteServices)
class DeleteImpl implements DeleteServices {
  @override
  Future<Either<MainFailure, DeleteResponse>> deleteDirectory() async {
    try {
      final Response response = await Dio(BaseOptions())
          .post(ApiEndpoints.deleteUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        final result = DeleteResponse.fromJson(response.data);
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
