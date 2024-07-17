// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/country/country_view_model.dart' as _i12;
import 'application/handler/snack_bar_handler.dart' as _i9;
import 'application/language/langauge_view_model.dart' as _i3;
import 'domain/counntry/i_counntry_service.dart' as _i10;
import 'domain/http_service/http_service.dart' as _i7;
import 'infrastructure/core/injectables.dart' as _i13;
import 'infrastructure/country/country_data_service.dart' as _i6;
import 'infrastructure/country/i_country_repo.dart' as _i11;
import 'infrastructure/http_impl/http_impl.dart' as _i8;
import 'presentation/router/app_router.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectablesModule = _$InjectablesModule();
    gh.factory<_i3.LanguageViewModel>(() => _i3.LanguageViewModel());
    gh.lazySingleton<_i4.GlobalKey<_i4.ScaffoldMessengerState>>(
        () => injectablesModule.globalKey);
    gh.lazySingleton<_i5.AppRouter>(() => _i5.AppRouter());
    gh.lazySingleton<_i6.CountryDataService>(() => _i6.CountryDataService());
    gh.lazySingleton<_i7.IHttpService>(() => _i8.IHttpRepo());
    gh.lazySingleton<_i9.SnackbarHandler>(() => _i9.SnackbarHandlerImpl(
        state: gh<_i4.GlobalKey<_i4.ScaffoldMessengerState>>()));
    gh.lazySingleton<_i10.CounntryService>(
        () => _i11.ICountryRepo(httpService: gh<_i7.IHttpService>()));
    gh.factory<_i12.CountryViewModel>(() => _i12.CountryViewModel(
          counntryService: gh<_i10.CounntryService>(),
          snackbarHandlerImpl: gh<_i9.SnackbarHandler>(),
        ));
    return this;
  }
}

class _$InjectablesModule extends _i13.InjectablesModule {}
