import 'package:agromall_test/domain/core/failure/app_failure.dart';
import 'package:agromall_test/domain/counntry/i_counntry_service.dart';
import 'package:agromall_test/infrastructure/core/path.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/counntry/country_model/coutnry_model.dart';
import '../../domain/http_service/http_service.dart';

@LazySingleton(as: CounntryService)
class ICountryRepo implements CounntryService {
  final IHttpService httpService;

  ICountryRepo({required this.httpService});

  @override
  Future<Either<AppFailure, List<CountryModel>>> getCountries(
      {List<String>? filterItems}) async {
    final failureOrSuccessOption =
        await httpService.getData(path: "${Paths.getCountries}/?expand=true");
    return failureOrSuccessOption.fold((l) {
      return left(l);
    }, (r) {
      List<CountryModel> countnryList =
          List.from(r.value.map((e) => CountryModel.fromJson(e)));

      return right(countnryList);
    });
  }

  @override
  Future<Either<AppFailure, List<String>>> getTimezones() async {
    final failureOrSuccessOption =
        await httpService.getData(path: Paths.getTmezones);
    return failureOrSuccessOption.fold((l) {
      return left(l);
    }, (r) {
      List<String> timezones = List.from(r.value.map((e) => e.toString()));

      return right(timezones);
    });
  }
}
