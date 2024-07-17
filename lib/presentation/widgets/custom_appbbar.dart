import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../core/font.dart';
import '../core/theme.dart';
import 'widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.onChanged, required this.onTap});
  final Function(String) onChanged;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<AppTheme>(context);
    return AppBar(
      toolbarHeight: 200.h,
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                themeNotifier.isDarkTheme()
                    ? Image.asset(
                        "assets/images/png/explore_dark.png",
                        scale: 1.5,
                      )
                    : Image.asset(
                        "assets/images/png/explore_icon2x.png",
                        scale: 1.5,
                      ),
                const Spacer(),
                InkResponse(
                    onTap: () {
                      Provider.of<AppTheme>(context, listen: false)
                          .setAppTheme();
                    },
                    child: themeNotifier.isDarkTheme()
                        ? SvgPicture.asset(
                            "assets/images/svg/brightness_dark.svg")
                        : SvgPicture.asset("assets/images/svg/brightness.svg"))
                // IconButton(
                //   icon: const Icon(Icons.wb_sunny_outlined, color: Colors.black),
                //   onPressed: () {},
                // ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                    child: CustomTextFieldWidget(
                  onTap: () => onTap(),
                  onChanged: (val) => onChanged(val),
                  hintText: "Search Country",
                  hintStyle: Theme.of(context)
                      .inputDecorationTheme
                      .hintStyle!
                      .copyWith(
                          color: themeNotifier.isDarkTheme()
                              ? AppColors.greySwatch[80]
                              : AppColors.greySwatch[500],
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          fontFamily: Font.axiforma),

                  // contentPadding: EdgeInsets.all(10.0.w),
                  filled: true,
                  fillColor: themeNotifier.isDarkTheme()
                      ? const Color.fromRGBO(152, 162, 179, 0.2)
                      : AppColors.greySwatch[40],
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  prefix: Image.asset(
                    "assets/images/png/search_png.png",
                    color: themeNotifier.isDarkTheme() ? Colors.white : null,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200.h);
}
