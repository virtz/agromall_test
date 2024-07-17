import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

import '../../domain/counntry/country_model/coutnry_model.dart';

@lazySingleton
class CountryDataService with ListenableServiceMixin {
  ReactiveList<List<CountryModel>> countries =
      [] as ReactiveList<List<CountryModel>>;
  // List<String> timezones = [];
  ReactiveList<List<CountryModel>> filteredCountries =
      [] as ReactiveList<List<CountryModel>>;
  set setcountries(val) {
    countries = val;
    notifyListeners();
  }

  set setfilteredCountries(val) {
    filteredCountries = val;
    notifyListeners();
  }

  CountryDataService() {
    listenToReactiveValues([countries, filteredCountries]);
  }
}
