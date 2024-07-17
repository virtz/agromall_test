import 'package:agromall_test/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../application/language/langauge_view_model.dart';
import '../../core/app_colors.dart';
import '../model/language.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<AppTheme>(context);
    return Material(
      color: Theme.of(context).colorScheme.background,
      borderRadius: BorderRadius.circular(20.r),
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0.w, horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Languages',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                  ),
                  InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset("assets/images/svg/close_icon.svg"),
                  ),
                ],
              ),
            ),
            Consumer<LanguageViewModel>(
              builder: (context, viewModel, child) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.8,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w, right: 5.w),
                      child: Column(
                        children: viewModel.languages.map((language) {
                          return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // contentPadding: EdgeInsets.zero,
                              children: [
                                Text(
                                  language.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: themeNotifier.isDarkTheme()
                                            ? const Color(0xFFD0D5DD)
                                            : AppColors.greySwatch[500],
                                      ),
                                ),
                                Radio<Language>(
                                  value: language,
                                  groupValue: viewModel.selectedLanguage,
                                  onChanged: (Language? value) {
                                    if (value != null) {
                                      viewModel.selectLanguage(value);
                                    }
                                  },
                                ),
                              ]);
                        }).toList(),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
