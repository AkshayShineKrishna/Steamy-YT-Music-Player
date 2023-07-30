import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:steamy/domain/core/failure/main_failure.dart';
import 'package:steamy/domain/refresh/refreshservices.dart';
import 'package:steamy/domain/refresh/model/refresh_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../domain/core/apiendpoints.dart';

@LazySingleton(as: RefreshServices)
class RefreshImpl implements RefreshServices {
  @override
  Future<Either<MainFailure, RefreshResponse>> refreshServer() async {
    try {
      final Response response = await Dio(BaseOptions())
          .post(ApiEndpoints.refresh);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        final result = RefreshResponse.fromJson(response.data);
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
