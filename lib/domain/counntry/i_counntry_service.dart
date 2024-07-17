import 'package:agromall_test/domain/core/failure/app_failure.dart';
import 'package:agromall_test/domain/counntry/country_model/coutnry_model.dart';
import 'package:dartz/dartz.dart';

abstract class CounntryService {
  Future<Either<AppFailure, List<CountryModel>>> getCountries();
  Future<Either<AppFailure, List<String>>> getTimezones();
}
