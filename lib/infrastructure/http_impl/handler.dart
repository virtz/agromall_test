import 'dart:developer';

import 'package:dartz/dartz.dart';
// import 'package:smartpay/domain/core/failure/app_failure.dart';

// import '../../domain/core/constants/error_messages.dart';
import '../../domain/core/constants/error_messages.dart';
import '../../domain/core/failure/app_failure.dart';

Either<AppFailure, Right> handleResponse(
    {required dynamic body, required int statusCode}) {
  // int status = body["status"];
  switch (statusCode) {
    case 200:

      // log(body);
      return Right(Right(body));

    case 400:
      log(statusCode.toString());
      return Left(AppFailure.badRequest(body["error"].toString()));
    case 422:
      log(statusCode.toString());
      return Left(AppFailure.badRequest(body["error"].toString()));
    case 401:
      log(statusCode.toString());
      return Left(AppFailure.unAuthorized(body["error"].toString()));
    case 500:
      log(statusCode.toString());
      log(body["message"]);
      return Left(AppFailure.serverError(body["error"].toString()));

    default:
      return Left(AppFailure.serverError(body["error"].toString()));
  }
}
