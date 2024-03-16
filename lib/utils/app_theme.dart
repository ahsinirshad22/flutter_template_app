import 'package:flutter/material.dart';

import 'export.dart';

enum AppColor {
  primary,
  bodyBackground,
  lightBlue,
  darkBlue,
  headingColor,
  bodyColor1,
  bodyColor2,
  strokeColor,
  gradientColor1,
  gradientColor2,
  whiteBlack,
  blackWhite,
}

class AppTheme {
  static const Color primaryColor = Color(0xff8271EE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const transparent = Colors.transparent;

  static Map<AppColor, Color> lightColors = {
    AppColor.primary: const Color(0xff8271EE),
    AppColor.bodyBackground: const Color(0xffF8F8F8),
    AppColor.lightBlue: const Color(0xff3DAAE0),
    AppColor.darkBlue: const Color(0xff6383FA),
    AppColor.headingColor: const Color(0xff1B2559),
    AppColor.bodyColor1: const Color(0xff505986),
    AppColor.bodyColor2: const Color(0xffA3AED0),
    AppColor.strokeColor: const Color(0xffE0DEF1),
    AppColor.gradientColor1: const Color(0xffAFC0FF),
    AppColor.gradientColor2: const Color(0xff6383FA),
    AppColor.whiteBlack: white,
    AppColor.blackWhite: black,
  };

  static Map<AppColor, Color> darkColors = {
    AppColor.primary: const Color(0xff8271EE),
    AppColor.bodyBackground: const Color(0xffF8F8F8),
    AppColor.lightBlue: const Color(0xff3DAAE0),
    AppColor.darkBlue: const Color(0xff6383FA),
    AppColor.headingColor: const Color(0xff1B2559),
    AppColor.bodyColor1: const Color(0xff505986),
    AppColor.bodyColor2: const Color(0xffA3AED0),
    AppColor.strokeColor: const Color(0xffE0DEF1),
    AppColor.gradientColor1: const Color(0xffAFC0FF),
    AppColor.gradientColor2: const Color(0xff6383FA),
    AppColor.whiteBlack: black,
    AppColor.blackWhite: white,
  };

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightColors[AppColor.primary] ?? primaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: lightColors[AppColor.bodyBackground] ?? white,
    inputDecorationTheme: inputDecorationTheme(),
    indicatorColor: primaryColor,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkColors[AppColor.primary] ?? primaryColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: darkColors[AppColor.bodyBackground] ?? black,
    inputDecorationTheme: inputDecorationTheme(),
    indicatorColor: primaryColor,
  );

  static InputDecorationTheme inputDecorationTheme() {
    InputBorder activeBorder = OutlineInputBorder(
        borderSide:
            BorderSide(color: lightColors[AppColor.primary] ?? primaryColor),
        borderRadius: BorderRadius.circular(5),
        gapPadding: 2);

    InputBorder inActiveBorder = OutlineInputBorder(
        borderSide: BorderSide(
            color: lightColors[AppColor.strokeColor] ?? primaryColor),
        borderRadius: BorderRadius.circular(5),
        gapPadding: 2);

    InputBorder errorBorder = OutlineInputBorder(
        borderSide: const BorderSide(color: red),
        borderRadius: BorderRadius.circular(5),
        gapPadding: 2);

    return InputDecorationTheme(
      border: activeBorder,
      enabledBorder: activeBorder,
      focusedBorder: activeBorder,
      disabledBorder: inActiveBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}

extension GetColor on BuildContext {
  Color gc(AppColor key) {
    Color? toReturn;
    try {
      toReturn = Theme.of(this).brightness == Brightness.light
          ? AppTheme.lightColors[key]
          : AppTheme.darkColors[key];
    } catch (e) {
      toReturn = null;
    }
    return toReturn ?? Colors.orange;
  }
}
