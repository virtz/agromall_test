import 'package:agromall_test/presentation/core/font.dart';
import 'package:agromall_test/presentation/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'system_styles.dart';
import 'text_styles.dart';

class AppTheme extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  setAppTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  bool isDarkTheme() {
    return themeMode == ThemeMode.dark ? true : false;
  }

  static final darkTheme = ThemeData(
      // brightness: Brightness.dark,
      // primarySwatch: AppColors.primarySwatch,
      // primaryColor: AppColors.primaryColor,
      // scaffoldBackgroundColor: Colors.grey.shade900,
      // colorScheme: ColorScheme.dark(
      //   primary: Colors.grey.shade800,
      //   secondary: Colors.orange.shade600,
      // ),
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.grey.shade900,
      //   elevation: 0,
      // ),
      // textTheme: TextTheme(
      //   bodyLarge: TextStyle(color: Colors.white),
      //   bodyMedium: TextStyle(color: Colors.white),
      // ),

      primaryColor: AppColors.primaryColor,
      // errorColor: AltBankColor.dAltBkRed300,
      // secondaryHeaderColor: AltBankColor.dAltBkWhite,
      shadowColor: AppColors.greySwatch[180],
      // primaryColorLight: AltBankColor.dAltBkGold800,
      hintColor: AppColors.greySwatch[180],
      brightness: Brightness.dark,
      disabledColor: Colors.black26,
      dialogBackgroundColor: AppColors.greySwatch[300],
      dividerColor: AppColors.greySwatch[200],
      iconTheme: const IconThemeData(color: AppColors.primaryColor),
      canvasColor: AppColors.primaryColor,
      cardColor: AppColors.appBlack,
      // colorScheme: AppColors.darkColorScheme,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: AppColors.greySwatch[400],
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.primaryColor,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.appWhite,
        unselectedLabelColor: AppColors.appWhite,
        labelStyle: const TextStyle().copyWith(
          color: AppColors.appWhite,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8), // Creates border
            color: AppColors.appWhite,
            boxShadow: [
              BoxShadow(
                blurRadius: 23,
                spreadRadius: 0,
                color: AppColors.greySwatch[200]!.withOpacity(0.08),
                offset: const Offset(0, 0),
              )
            ]),
        unselectedLabelStyle: const TextStyle().copyWith(
          color: AppColors.appWhite,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
      scaffoldBackgroundColor: AppColors.greySwatch[700],
      scrollbarTheme: ScrollbarThemeData(
        interactive: true,
        thumbVisibility: MaterialStateProperty.all(true),
        radius: const Radius.circular(2.0),
        thumbColor: MaterialStateProperty.all(
          AppColors.primaryColor,
        ),
        trackColor: MaterialStateProperty.all(
          AppColors.appWhite,
        ),
        // showTrackOnHover: true,
        thickness: MaterialStateProperty.all(6.0),
        minThumbLength: 100,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.black38,
          filled: false,
        ),
        textStyle: AgroMallTextStyle.h6
            .copyWith(color: Colors.white, fontSize: 15.5.sp),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.black54,
        filled: true,
        errorMaxLines: 2,
        errorStyle: const TextStyle(
          letterSpacing: -0.4,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.greySwatch[400]!,
            width: 1.5.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.5.w,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.0.w,
          vertical: 25.h,
        ),
        hintStyle: AgroMallTextStyle.h5.copyWith(
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.greySwatch[80],
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Poppins',
      appBarTheme: AppBarTheme(
        elevation: 0.5,
        systemOverlayStyle: SystemStyles.dark,
        shadowColor: AppColors.appWhite,
        color: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFFF2F4F7)),
      ),
      textTheme: TextTheme(
        titleLarge: AgroMallTextStyle.h6.copyWith(
          color: AppColors.appWhite,
        ),
        headlineSmall: AgroMallTextStyle.h5.copyWith(
          color: AppColors.appWhite,
        ),
        headlineMedium: AgroMallTextStyle.h4.copyWith(
          color: AppColors.appWhite,
        ),
        displaySmall: AgroMallTextStyle.h3.copyWith(
          color: AppColors.appWhite,
        ),
        displayMedium: AgroMallTextStyle.h2.copyWith(
          color: AppColors.appWhite,
        ),
        displayLarge: AgroMallTextStyle.h1.copyWith(
          color: AppColors.appWhite,
        ),
        bodySmall: AgroMallTextStyle.caption.copyWith(
          color: AppColors.appWhite,
        ),
        bodyLarge: AgroMallTextStyle.p1.copyWith(
          color: AppColors.appWhite,
        ),
        bodyMedium: AgroMallTextStyle.p2.copyWith(
          color: AppColors.appWhite,
        ),
        labelLarge: AgroMallTextStyle.button.copyWith(
          color: AppColors.appWhite,
        ),
        labelSmall: AgroMallTextStyle.overline.copyWith(
          color: AppColors.appWhite,
        ),
        titleMedium: AgroMallTextStyle.subtitle1.copyWith(
          color: AppColors.appWhite,
        ),
        titleSmall: AgroMallTextStyle.subtitle2.copyWith(
          color: AppColors.appWhite,
        ),
      ),
      primaryTextTheme: TextTheme(
        titleLarge: AgroMallTextStyle.h6.copyWith(
          color: AppColors.appWhite,
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
        headlineSmall: AgroMallTextStyle.h5.copyWith(
          color: AppColors.appWhite,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        headlineMedium: AgroMallTextStyle.h4.copyWith(
          color: AppColors.appWhite,
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
        displaySmall: AgroMallTextStyle.h3.copyWith(
          color: AppColors.appWhite,
          fontSize: 21.sp,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: AgroMallTextStyle.h2.copyWith(
          color: AppColors.appWhite,
          fontSize: 28.sp,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: AgroMallTextStyle.button.copyWith(
          color: AppColors.appWhite,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: AgroMallTextStyle.overline.copyWith(
          color: AppColors.appWhite,
        ),
        bodySmall: AgroMallTextStyle.caption.copyWith(
          color: AppColors.appWhite,
        ),
        bodyLarge: AgroMallTextStyle.p1.copyWith(
          color: AppColors.appWhite,
        ),
        bodyMedium: AgroMallTextStyle.p2.copyWith(
          color: AppColors.appWhite,
        ),
        titleMedium: AgroMallTextStyle.subtitle1.copyWith(
          color: AppColors.appWhite,
        ),
        titleSmall: AgroMallTextStyle.subtitle2.copyWith(
          color: AppColors.appWhite,
        ),
      ),
      buttonTheme: const ButtonThemeData(buttonColor: AppColors.primaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.appBlack,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greySwatch[300],
          selectedIconTheme: const IconThemeData(
            color: AppColors.primaryColor,
          ),
          unselectedIconTheme: const IconThemeData(
            color: AppColors.primaryColor,
          )),
      checkboxTheme: CheckboxThemeData(
        // fillColor: MaterialStateProperty.all(
        //   AppColors.primaryColor,
        // ),
        checkColor: MaterialStateProperty.all(AppColors.appWhite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        side: AlwaysActiveBorderSide(),
      ),
      colorScheme: AppColors.darkColorScheme);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,

    // primaryColor: Colors.white,
    // scaffoldBackgroundColor: Colors.white,
    // colorScheme: ColorScheme.light(
    //   primary: Colors.grey.shade100,
    //   secondary: Colors.orange.shade600,
    // ),

    shadowColor: AppColors.greySwatch[600],
    hintColor: AppColors.greySwatch[500],
    dialogBackgroundColor: AppColors.appWhite,
    scaffoldBackgroundColor: AppColors.appWhite,
    dividerColor: AppColors.greySwatch[600],
    disabledColor: Colors.white,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    canvasColor: AppColors.appBlack,

    progressIndicatorTheme: ProgressIndicatorThemeData(
      linearTrackColor: AppColors.greySwatch[50],
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.appBlack,
      unselectedLabelColor: Colors.black,
      labelStyle: const TextStyle().copyWith(
        color: AppColors.appBlack,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // Creates border
          color: AppColors.appWhite,
          // gradient: AltBankColor.buttonGradient,
          boxShadow: [
            BoxShadow(
                blurRadius: 23,
                spreadRadius: 0,
                color: AppColors.greySwatch[100]!,
                offset: const Offset(0, 0))
          ]),
      unselectedLabelStyle: const TextStyle().copyWith(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey.shade200,
        filled: true,
      ),
      textStyle:
          AgroMallTextStyle.h6.copyWith(color: Colors.black54, fontSize: 13.sp),
    ),
    scrollbarTheme: ScrollbarThemeData(
      interactive: true,
      thumbVisibility: MaterialStateProperty.all(true),
      radius: const Radius.circular(2.0),
      thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
      trackColor: MaterialStateProperty.all(
        AppColors.greySwatch[500],
      ),
      // showTrackOnHover: true,
      thickness: MaterialStateProperty.all(6.0),
      minThumbLength: 100,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.appWhite,
      filled: true,
      errorMaxLines: 2,
      errorStyle: const TextStyle(
        letterSpacing: -0.4,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide(
          color: AppColors.greySwatch[200]!,
          width: 1.5.w,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primaryColor,
          width: 1.5.w,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.r),
        borderSide: BorderSide(
          color: AppColors.primaryColor,
          width: 1.5.w,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.0.w,
        vertical: 25.h,
      ),
      hintStyle: const TextStyle().copyWith(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.greySwatch[500],
      ),
    ),
    // hintColor: const Color(0xFF667085),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: Font.axiforma,
    appBarTheme: AppBarTheme(
      elevation: 0.5,
      shadowColor: Colors.black87,
      systemOverlayStyle: SystemStyles.light,
      color: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black),
    ),
    textTheme: TextTheme(
      titleLarge: AgroMallTextStyle.h6,
      headlineSmall: AgroMallTextStyle.h5,
      headlineMedium: AgroMallTextStyle.h4,
      displaySmall: AgroMallTextStyle.h3,
      displayMedium: AgroMallTextStyle.h2,
      displayLarge: AgroMallTextStyle.h1,
      bodySmall: AgroMallTextStyle.caption,
      bodyLarge: AgroMallTextStyle.p1,
      bodyMedium: AgroMallTextStyle.p2,
      labelLarge: AgroMallTextStyle.button,
      labelSmall: AgroMallTextStyle.overline,
      titleMedium: AgroMallTextStyle.subtitle1,
      titleSmall: AgroMallTextStyle.subtitle2,
    ),
    primaryTextTheme: TextTheme(
      titleLarge: AgroMallTextStyle.h6,
      headlineSmall: AgroMallTextStyle.h5,
      headlineMedium: AgroMallTextStyle.h4,
      displaySmall: AgroMallTextStyle.h3,
      displayMedium: AgroMallTextStyle.h2,
      displayLarge: AgroMallTextStyle.h1,
      bodySmall: AgroMallTextStyle.caption,
      bodyLarge: AgroMallTextStyle.p1,
      bodyMedium: AgroMallTextStyle.p2,
      labelLarge: AgroMallTextStyle.button,
      labelSmall: AgroMallTextStyle.overline,
      titleMedium: AgroMallTextStyle.subtitle1,
      titleSmall: AgroMallTextStyle.subtitle2,
    ),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.black)),
    buttonTheme: ButtonThemeData(
        buttonColor: AppColors.appBlack,
        colorScheme: const ColorScheme.dark(),
        disabledColor: AppColors.greySwatch[600]!),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.appBlack.withOpacity(0.4),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greySwatch[300],
        selectedIconTheme: const IconThemeData(
          color: AppColors.primaryColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.greySwatch[400],
        )),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Colors.white),
      checkColor: MaterialStateProperty.all(AppColors.appWhite),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      side: AlwaysActiveBorderSide(),
    ),
    colorScheme:
        AppColors.lightColorScheme.copyWith(background: AppColors.appWhite),
  );
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(states) => BorderSide(
        color: AppColors.greySwatch[500]!,
        width: 1,
      );
}
