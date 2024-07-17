import 'package:agromall_test/application/country/country_view_model.dart';
import 'package:agromall_test/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../core/app_colors.dart';
import '../../core/theme.dart';

class FilterModal extends StatelessWidget {
  const FilterModal({super.key, required this.viewModel});
  final CountryViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<AppTheme>(context);
    return Material(
      borderRadius: BorderRadius.circular(20.r),
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Filter',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          )),
                  InkResponse(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child:
                          SvgPicture.asset("assets/images/svg/close_icon.svg"))
                ],
              ),
            ),
            IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // shrinkWrap: true,
                // padding: EdgeInsets.zero,
                children: [
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 8.w),
                        childrenPadding: EdgeInsets.zero,
                        title: Text('Continent',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                )),
                        children: viewModel.continentList.map((e) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(e,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.sp,
                                            color: themeNotifier.isDarkTheme()
                                                ? const Color(0xFFD0D5DD)
                                                : AppColors.greySwatch[500])),
                              ),
                              StatefulBuilder(
                                builder: (context, state) => Transform.scale(
                                  scale: 1.2,
                                  child: Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      activeColor: Colors.black,
                                      value: viewModel.selectedContinents
                                          .contains(e),
                                      onChanged: (bool? value) {
                                        state(() {});
                                        viewModel.toggleContinent(e);
                                      }),
                                ),
                              )
                            ],
                          );
                        }).toList()),
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 8.w),
                        title: Text('Time Zone',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                )),
                        children: viewModel.timezones.map((e) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(e,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.sp,
                                            color: themeNotifier.isDarkTheme()
                                                ? const Color(0xFFD0D5DD)
                                                : AppColors.greySwatch[500])),
                              ),
                              StatefulBuilder(builder: (context, state) {
                                return Transform.scale(
                                  scale: 1.2,
                                  child: Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      activeColor: Colors.black,
                                      value: viewModel.selectedTimeZones
                                          .contains(e),
                                      onChanged: (bool? value) {
                                        state(() {});
                                        viewModel.toggleTimeZone(e);
                                      }),
                                );
                              })
                            ],
                          );
                        }).toList()),
                  ),
                ],
              ),
            ),
            viewModel.continentList.isNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.07,
                        onPressed: () {
                          viewModel.resetFilters();
                          Navigator.of(context).pop();
                        },
                        bgColor: Theme.of(context).colorScheme.background,
                        borderColor: AppColors.warmGreySwatch[900],
                        child: Text("Reset",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: AppColors.warmGreySwatch[900],
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400)),
                      ),
                      CustomButton(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.07,
                        onPressed: () {
                          viewModel.applyFilters();
                          Navigator.of(context).pop();
                        },
                        child: Text("Show result",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: AppColors.greySwatch[30],
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400)),
                      )
                      // MaterialButton(
                      //   onPressed: () {},
                      //   child: Text('Show results'),
                      // ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
