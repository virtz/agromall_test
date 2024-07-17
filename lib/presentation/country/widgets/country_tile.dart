// ignore_for_file: unnecessary_null_comparison

import 'dart:developer';

import 'package:agromall_test/domain/counntry/country_model/coutnry_model.dart';
import 'package:agromall_test/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../application/language/langauge_view_model.dart';
import '../../../injectable.dart';
import '../../core/app_colors.dart';
import '../../core/theme.dart';
import '../../router/app_router.dart';

class CountryTile extends StatelessWidget {
  final CountryModel country;
  const CountryTile({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<AppTheme>(context);
    var languageSelector = Provider.of<LanguageViewModel>(context);
    return InkResponse(
      onTap: () {
        getIt<AppRouter>().push(CountryDetailsRoute(country: country));
      },
      child: ListTile(
        leading: country.flags!.svg!.isNotEmpty
            ? SizedBox(
                width: 40.w,
                height: 40.h,
                child: SvgPicture.network(
                  fit: BoxFit.contain,
                  country.flags!.svg!,
                ),
              )
            : CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Text(country.name!.common![0]),
              ),
        title: Text(
            determinneLanguage(
                lanuageString: languageSelector.selectedLanguage == null
                    ? ""
                    : languageSelector.selectedLanguage!.value),
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 14.sp,
                color: themeNotifier.isDarkTheme()
                    ? const Color(0xFFF2F4F7)
                    : AppColors.warmGreySwatch[900],
                fontWeight: FontWeight.w400)),
        subtitle: country.capital != null && country.capital.isNotEmpty
            ? Text(country.capital[0],
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.greySwatch[500],
                    fontWeight: FontWeight.w400))
            : Text("N/A",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.greySwatch[500],
                    fontWeight: FontWeight.w400)),
      ),
    );
  }

  String determinneLanguage({String? lanuageString}) {
    log(lanuageString ?? "NA");
    if (lanuageString == null || lanuageString == "") {
      return country.name?.common ?? "N/A";
    } else {
      var translation = country.translations.entries
          .firstWhere((element) => element.key == lanuageString, orElse: () {
        return country.translations.entries.first;
      });
      return translation.value.common ?? "N/A";
    }
  }
}
