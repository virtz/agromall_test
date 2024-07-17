import 'dart:developer';

import 'package:agromall_test/domain/core/constants/error_messages.dart';
import 'package:agromall_test/domain/counntry/i_counntry_service.dart';
import 'package:agromall_test/infrastructure/country/country_data_service.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

import '../../domain/counntry/country_model/coutnry_model.dart';
import '../../injectable.dart';
import '../handler/snack_bar_handler.dart';

@injectable
class CountryViewModel extends ReactiveViewModel {
  // final CountryDataService dataService = getIt<CountryDataService>();

  // @override
  // List<ListenableServceMixin> get listenableServies => [dataService];
  final CounntryService counntryService;
  final SnackbarHandler snackbarHandlerImpl;
  Map<String, List<CountryModel>> countrySections = {};
  Map<String, List<CountryModel>> searchCountrySections = {};
  List<CountryModel> countries = [];
  bool isSearching = false;
  List<CountryModel> searchedCountries = [];
  List<String> timezones = [];
  List<CountryModel> filteredCountries = [];
  bool isFiltering = false;
  CountryViewModel(
      {required this.counntryService, required this.snackbarHandlerImpl}) {
    filteredCountries = List.from(countries);
  }

  List<String> selectedContinents = [];
  List<String> selectedTimeZones = [];
  var continentList = [
    "Africa",
    "Antarctica",
    "Asia",
    "Australia",
    "Europe",
    "North America",
    "South America",
  ];
  void toggleContinent(String continent) {
    if (selectedContinents.contains(continent)) {
      selectedContinents.remove(continent);
      log(selectedContinents.toString());
    } else {
      selectedContinents.add(continent);
      log(selectedContinents.toString());
    }
    notifyListeners();
  }

  void toggleTimeZone(String timeZone) {
    if (selectedTimeZones.contains(timeZone)) {
      selectedTimeZones.remove(timeZone);
      log(selectedTimeZones.toString());
    } else {
      selectedTimeZones.add(timeZone);
      log(selectedTimeZones.toString());
    }
    notifyListeners();
  }

  void resetFilters() {
    selectedContinents.clear();
    selectedTimeZones.clear();
    notifyListeners();
  }

  setIsFilterinng(val) {
    isFiltering = val;
    notifyListeners();
  }

  // void applyFilters() {
  //   filteredCountries = countries.where((country) {
  //     bool matchesContinent = selectedContinents.isEmpty ||
  //         country.continents.any((tz) => selectedContinents.contains(tz));
  //     selectedContinents.contains(country.continents[0]);
  //     bool matchesTimeZone = selectedTimeZones.isEmpty ||
  //         country.timezones.any((tz) => selectedTimeZones.contains(tz));
  //     return matchesContinent && matchesTimeZone;
  //   }).toList();
  //   setIsFilterinng(true);
  //   log(filteredCountries.toString());
  //   filterNames();
  //   notifyListeners();
  // }

  void applyFilters() {
    log(countries.toString());
    filteredCountries = countries.where((country) {
      log(country.timezones.toString());
      log(country.continents.toString());
      // Convert selected continents and timezones to lowercase
      List<String> lowerSelectedContinents =
          selectedContinents.map((c) => c.toLowerCase()).toList();
      List<String> lowerSelectedTimeZones =
          selectedTimeZones.map((tz) => tz.toLowerCase()).toList();

      // Check if the country matches the selected continents
      bool matchesContinent = lowerSelectedContinents.isEmpty ||
          country.continents.any((continent) {
            log('Checking Continent: ${continent.toLowerCase()}');
            return lowerSelectedContinents.contains(continent.toLowerCase());
          });

      log('Matches Continent: $matchesContinent');

      // Check if the country matches the selected time zones
      bool matchesTimeZone = lowerSelectedTimeZones.isEmpty ||
          country.timezones.any((timezone) {
            log('Checking Timezone: ${timezone.toLowerCase()}');
            return lowerSelectedTimeZones.contains(timezone.toLowerCase());
          });

      log('Matches Timezone: $matchesTimeZone');

      // The country must match both filters
      return matchesContinent && matchesTimeZone;
    }).toList();

    setIsFilterinng(true);
    log('Filtered Countries: $filteredCountries');
    filterNames();
    notifyListeners();
  }

  Future<void> getCountries({List<String>? fields}) async {
    setBusy(true);
    final failureOrSuccessOption = await counntryService.getCountries();
    return failureOrSuccessOption.fold((l) {
      setBusy(false);
      snackbarHandlerImpl
          .showErrorSnackbar(l.message ?? ErrorMessages().badRequestString);
    }, (r) {
      setBusy(false);
      countries = r;
      countries.sort((a, b) => a.name!.common!
          .toLowerCase()
          .compareTo(b.name!.common!.toLowerCase()));
      log(countries.toString());

      filterNames();
      notifyListeners();
    });
  }

  void search({required String value}) {
    isSearching = value.isNotEmpty;
    searchedCountries = countries
        .where((element) =>
            element.name!.common!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    filterNames();
    notifyListeners();
  }

  void setIsSearching(bool val) {
    isSearching = val;
    notifyListeners();
  }

  void filterNames() {
    countrySections.clear();

    final List<CountryModel> relevantCountries;
    if (isFiltering) {
      relevantCountries = filteredCountries;
    } else if (isSearching) {
      relevantCountries = searchedCountries;
    } else {
      relevantCountries = countries;
    }

    for (var country in relevantCountries) {
      String firstLetter = country.name!.common![0].toUpperCase();
      if (!countrySections.containsKey(firstLetter)) {
        countrySections[firstLetter] = [];
      }
      countrySections[firstLetter]!.add(country);
    }

    notifyListeners();
  }

  void getTimezones() async {
    // setBusy(true);
    final failureOrSuccessOption = await counntryService.getTimezones();
    return failureOrSuccessOption.fold((l) {
      // setBusy(false);
      snackbarHandlerImpl
          .showErrorSnackbar(l.message ?? ErrorMessages().badRequestString);
    }, (r) {
      // setBusy(false);
      timezones = r;
      notifyListeners();
    });
  }

  @override
  void onFutureError(error, Object? key) {
    snackbarHandlerImpl
        .showErrorSnackbar(error.message ?? ErrorMessages().badRequestString);
    getCountries();
  }
}
