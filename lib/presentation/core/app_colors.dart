import 'package:flutter/material.dart';

class AppColors {
  static const int _primaryColourValue = 0xFFFF6C00;
  static const Color primaryColor = Color(0xFFFF6C00);
  static const _primarySwatch = {
    50: Color(0xFFFFE0CC),
    100: Color(0xFFFFCC99),
    200: Color(0xFFFFB266),
    300: Color(0xFFFF9933),
    400: Color(0xFFFF8000),
    500: Color(0xFFFF6C00),
    600: Color(0xFFE65B00),
    700: Color(0xFFCC4D00),
    800: Color(0xFFB33F00),
    900: Color(0xFF993300),
  };

  static const MaterialColor primarySwatch =
      MaterialColor(_primaryColourValue, _primarySwatch);

  static const infoSwatch = {
    0: Color(0xffF5F9FF),
    5: Color(0xffE1EDFE),
    10: Color(0xffD3E5FE),
    20: Color(0xffA7C9FD),
    30: Color(0xff7BA8F9),
    40: Color(0xff598CF4),
    50: Color(0xff2561ED),
    60: Color(0xff1B4ACB),
    70: Color(0xff1236AA),
    80: Color(0xff0B2589),
    90: Color(0xff071971),
  };

  static const warningSwatch = {
    0: Color(0xffFFFEFA),
    5: Color(0xffFFFBEB),
    10: Color(0xffFFF5CE),
    20: Color(0xffFFE89E),
    30: Color(0xffFFD76D),
    40: Color(0xffFFC749),
    50: Color(0xffFFAD0D),
    60: Color(0xffDB8C09),
    70: Color(0xffB76F06),
    80: Color(0xff935404),
    90: Color(0xff7A4102),
  };

  static const errorSwatch = {
    0: Color(0xffFFFCFA),
    5: Color(0xffFFF8F5),
    10: Color(0xffFFE3D6),
    20: Color(0xffFFC0AD),
    30: Color(0xffFF9783),
    40: Color(0xffFF6F65),
    50: Color(0xffFF3236),
    60: Color(0xffDB2438),
    70: Color(0xffB71938),
    80: Color(0xff930F35),
    90: Color(0xff7A0933),
  };

  static const greySwatch = {
    30: Color(0xFFFDFDFC),
    40: Color(0xFFF2F4F7),
    50: Color(0xFFE7E9ED),
    80: Color(0xFFEAECF0),
    100: Color(0xFFC2C8D0),
    150: Color(0xFFA9BBD4),
    180: Color(0xFF98A2B3),
    200: Color(0xFF9BA5B2),
    300: Color(0xFF738293),
    400: Color(0xFF556477),
    500: Color(0xFF667085),
    600: Color(0xFF505A68),
    700: Color(0xFF3A434B),
    800: Color(0xFF242C2E),
    900: Color(0xFF0D1517),
  };
  static const warmGreySwatch = {
    900: Color(0xFF1C1917),
  };
  static const appBlack = Color(0xff000000);
  static const appWhite = Color(0xffFFFFFF);

  static ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    background: const Color(0xFFFFFFFF),
    // primary: Color(0xFF775A00),
    primary: AppColors.primaryColor,
    onPrimary: const Color(0xFFFFFFFF),
    primaryContainer: const Color(0xFFFFDF9A),
    onPrimaryContainer: const Color(0xFF251A00),
    secondary: const Color(0xFF725C00),
    onSecondary: const Color(0xFFFFFFFF),
    secondaryContainer: const Color(0xFFFFE07E),
    onSecondaryContainer: const Color(0xFF231B00),
    tertiary: const Color(0xFF805600),
    onTertiary: const Color(0xFFFFFFFF),
    tertiaryContainer: const Color(0xFFFFDDB0),
    onTertiaryContainer: const Color(0xFF281800),
    error: const Color(0xFFBA1A1A),
    errorContainer: const Color(0xFFFFDAD6),
    onError: const Color(0xFFFFFFFF),
    onErrorContainer: const Color(0xFF410002),
    // background: const Color(0xFFFFFBFF),
    // onBackground: Color(0xFF2A1800),
    onBackground: AppColors.greySwatch[400]!,
    surface: const Color(0xFFFFFBFF),
    onSurface: const Color(0xFF2A1800),
    surfaceVariant: const Color(0xFFEDE1CF),
    onSurfaceVariant: const Color(0xFF4D4639),
    // outline: Color(0xFF7F7667),

    onInverseSurface: const Color(0xFFFFEEDE),
    inverseSurface: const Color(0xFF462A00),
    inversePrimary: const Color(0xFFF0C048),
    shadow: const Color(0xFF000000),
    surfaceTint: const Color(0xFF775A00),
    // outlineVariant: Color(0xFFD0C5B4),
    // scrim: Color(0xFF000000),
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    // primary: Color(0xFFF0C048),
    primary: AppColors.primaryColor,
    onPrimary: Color(0xFF3F2E00),
    primaryContainer: Color(0xFF5A4300),
    onPrimaryContainer: Color(0xFFFFDF9A),
    secondary: Color(0xFFE7C449),
    onSecondary: Color(0xFF3C2F00),
    secondaryContainer: Color(0xFF564500),
    onSecondaryContainer: Color(0xFFFFE07E),
    tertiary: Color(0xFFFFBA45),
    onTertiary: Color(0xFF442C00),
    tertiaryContainer: Color(0xFF614000),
    onTertiaryContainer: Color(0xFFFFDDB0),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF000F24),
    // onBackground: Color(0xFFFFDDB6),
    // background: Color(0xffFFFAEE),
    // background: AltBankColor.dAltBkGold800,
    onBackground: AppColors.appWhite,
    surface: Color(0xFF2A1800),
    onSurface: Color(0xFFFFDDB6),
    surfaceVariant: Color(0xFF4D4639),
    onSurfaceVariant: Color(0xFFD0C5B4),
    outline: Color(0xFF999080),
    onInverseSurface: Color(0xFF2A1800),
    inverseSurface: Color(0xFFFFDDB6),
    inversePrimary: Color(0xFF775A00),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFF0C048),
    // outlineVariant: Color(0xFF4D4639),
    // scrim: Color(0xFF000000),
  );
}
