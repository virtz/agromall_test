import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class SystemStyles {
  static final SystemUiOverlayStyle light = Platform.isIOS
      ? SystemUiOverlayStyle(
          statusBarColor: AppColors.appBlack.withOpacity(.2),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : SystemUiOverlayStyle(
          statusBarColor: AppColors.appBlack.withOpacity(.2),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);

  static final SystemUiOverlayStyle dark = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);
}
