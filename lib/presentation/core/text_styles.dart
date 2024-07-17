import 'package:agromall_test/presentation/core/app_colors.dart';
import 'package:agromall_test/presentation/core/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgroMallTextStyle {
  static final h1 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 80.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    color: AppColors.warmGreySwatch[900],
  );
  static final h2 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 50.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: AppColors.warmGreySwatch[900],
  );
  static final h3 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.warmGreySwatch[900],
  );
  static final h4 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.warmGreySwatch[900],
  );

  /// default font size here is 20.sp
  static final h5 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.warmGreySwatch[900],
  );

  /// default font size here is 17.sp
  static final h6 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: AppColors.warmGreySwatch[900],
  );

  static final p1 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: AppColors.warmGreySwatch[900],
  );
  static final p2 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.warmGreySwatch[900],
  );
  static final subtitle1 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: AppColors.warmGreySwatch[900],
  );
  static final subtitle2 = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.warmGreySwatch[900],
  );

  static final button = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: AppColors.warmGreySwatch[900],
  );
  static final caption = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: AppColors.warmGreySwatch[900],
  );
  static final overline = TextStyle(
    fontFamily: Font.axiforma,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: AppColors.warmGreySwatch[900],
  );
}
