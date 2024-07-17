// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agromall_test/domain/counntry/country_model/coutnry_model.dart'
    as _i5;
import 'package:agromall_test/presentation/country/country_details.dart' as _i1;
import 'package:agromall_test/presentation/country/search_country.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CountryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CountryDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CountryDetailsScreen(
          key: args.key,
          country: args.country,
        ),
      );
    },
    SearchCountry.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SearchCountry(),
      );
    },
  };
}

/// generated route for
/// [_i1.CountryDetailsScreen]
class CountryDetailsRoute extends _i3.PageRouteInfo<CountryDetailsRouteArgs> {
  CountryDetailsRoute({
    _i4.Key? key,
    required _i5.CountryModel country,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          CountryDetailsRoute.name,
          args: CountryDetailsRouteArgs(
            key: key,
            country: country,
          ),
          initialChildren: children,
        );

  static const String name = 'CountryDetailsRoute';

  static const _i3.PageInfo<CountryDetailsRouteArgs> page =
      _i3.PageInfo<CountryDetailsRouteArgs>(name);
}

class CountryDetailsRouteArgs {
  const CountryDetailsRouteArgs({
    this.key,
    required this.country,
  });

  final _i4.Key? key;

  final _i5.CountryModel country;

  @override
  String toString() {
    return 'CountryDetailsRouteArgs{key: $key, country: $country}';
  }
}

/// generated route for
/// [_i2.SearchCountry]
class SearchCountry extends _i3.PageRouteInfo<void> {
  const SearchCountry({List<_i3.PageRouteInfo>? children})
      : super(
          SearchCountry.name,
          initialChildren: children,
        );

  static const String name = 'SearchCountry';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
