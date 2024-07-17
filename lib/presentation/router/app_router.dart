// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            durationInMilliseconds: 500,
            page: SearchCountry.page,
            // page: OnboardingRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            durationInMilliseconds: 500,
            page: CountryDetailsRoute.page,
            // page: OnboardingRoute.page,
            initial: false,
            transitionsBuilder: TransitionsBuilders.fadeIn),
      ];
}
