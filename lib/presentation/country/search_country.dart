// ignore_for_file: depend_on_referenced_packages

import 'package:agromall_test/presentation/country/widgets/country_tile.dart';
import 'package:agromall_test/presentation/country/widgets/section_head.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:stacked/stacked.dart';

import 'package:agromall_test/injectable.dart';

import '../../application/country/country_view_model.dart';
import '../core/app_colors.dart';
import '../core/font.dart';
import '../core/theme.dart';
import '../widgets/custom_appbbar.dart';
import 'widgets/fiilter_modal.dart';
import 'widgets/language_modal.dart';

@RoutePage()
class SearchCountry extends StackedView<CountryViewModel> {
  const SearchCountry({super.key});

  @override
  Widget builder(
      BuildContext context, CountryViewModel viewModel, Widget? child) {
    var themeNotifier = Provider.of<AppTheme>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CustomAppBar(
        onTap: () {
          viewModel.setIsSearching(true);
        },
        onChanged: (val) {
          viewModel.search(value: val);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkResponse(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const LanguageBottomSheet(),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.2.w, color: AppColors.greySwatch[150]!),
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language,
                            color: themeNotifier.isDarkTheme()
                                ? AppColors.appWhite
                                : Colors.black),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text("EN",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12.sp, fontFamily: Font.axiforma))
                      ],
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {
                    // viewModel.setIsFilterinng(true);
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        viewModel.getTimezones();
                        return SingleChildScrollView(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FilterModal(
                              viewModel: viewModel,
                            ),
                          ],
                        ));
                      },
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.2.w, color: AppColors.greySwatch[150]!),
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/svg/filter_svg.svg",
                            color: themeNotifier.isDarkTheme()
                                ? AppColors.appWhite
                                : Colors.black),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text("Filter",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 12.sp, fontFamily: Font.axiforma))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0.h),
            if (viewModel.isBusy) ...[
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator())
            ] else if (viewModel.isFiltering &&
                viewModel.filteredCountries.isEmpty) ...[
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                child: Text("No results found",
                    style: Theme.of(context).textTheme.headlineSmall),
              )
            ] else if (viewModel.isFiltering &&
                viewModel.filteredCountries.isNotEmpty) ...[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16.w),
                  children: viewModel.countrySections.keys.map((String letter) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHead(ttile: letter),
                        ...viewModel.countrySections[letter]!
                            .map((c) => CountryTile(country: c)),
                      ],
                    );
                  }).toList(),
                ),
              )
            ] else if (viewModel.isSearching &&
                viewModel.searchedCountries.isEmpty) ...[
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                child: Text("No results found",
                    style: Theme.of(context).textTheme.headlineSmall),
              )
            ] else ...[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16.w),
                  children: viewModel.countrySections.keys.map((String letter) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHead(ttile: letter),
                        ...viewModel.countrySections[letter]!
                            .map((c) => CountryTile(country: c)),
                      ],
                    );
                  }).toList(),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }

  @override
  CountryViewModel viewModelBuilder(BuildContext context) {
    return getIt<CountryViewModel>();
  }

  @override
  void onViewModelReady(CountryViewModel viewModel) {
    viewModel.getCountries();
    super.onViewModelReady(viewModel);
  }
}
