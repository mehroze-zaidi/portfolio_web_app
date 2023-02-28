import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';

class AppTheme {
  // static ColorScheme light = const ColorScheme.light(
  //   primary: UIColors.primaryColor,
  //   secondary: UIColors.white,
  //   onPrimary: UIColors.white,
  //   onSecondary: UIColors.white,
  //   background: UIColors.backgroundColor,
  // );
  static String fontFamily = "SanFrancisco";

  static ThemeData lightTheme = ThemeData(
    //colorScheme: AppTheme.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    // typography: Typography.material2018(platform: TargetPlatform.windows),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: AppColor.black,
        fontFamily: fontFamily,
      ),
      button: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          letterSpacing: 0.5),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColor.black,
        fontFamily: fontFamily,
      ),
      headline3: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w600, fontFamily: fontFamily),
      headline4: TextStyle(
          fontSize: 34, fontWeight: FontWeight.w700, fontFamily: fontFamily),
      headline5: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, fontFamily: fontFamily),
      headline6: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w700, fontFamily: fontFamily),
      subtitle1: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w400, fontFamily: fontFamily),
      subtitle2: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w300, fontFamily: fontFamily),
      headline1: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600, fontFamily: fontFamily),
    ),
    fontFamily: fontFamily,
    // textSelectionTheme:
    //     const TextSelectionThemeData(cursorColor: UIColors.primaryColor),
    // scaffoldBackgroundColor: UIColors.white,
    // inputDecorationTheme: const InputDecorationTheme(
    //   border: InputBorder.none,
    //   focusedBorder: InputBorder.none,
    //   enabledBorder: InputBorder.none,
    //   errorBorder: InputBorder.none,
    //   disabledBorder: InputBorder.none,
    // ),
    // bottomSheetTheme: const BottomSheetThemeData(
    //   backgroundColor: UIColors.white,
    //   shape: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.transparent),
    //     borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(10.0),
    //       topRight: Radius.circular(10.0),
    //     ),
    //   ),
    // ),
  );

  cursorColor() {
    return const TextSelectionThemeData(cursorColor: AppColor.appDarkGreen);
  }

  // inputDecorationTheme(Color color, double borderRadius, {Color? borderColor}) {
  //   InputDecorationTheme theme = InputDecorationTheme(
  //     fillColor: AppColor.appDarkGreen,
  //     focusColor: borderColor,
  //     focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
  //         borderSide: BorderSide(color: borderColor ?? color, width: 0)),
  //     enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(borderRadius),
  //         ),
  //         borderSide: BorderSide(color: borderColor ?? color, width: 0)),
  //   );
  //   return theme;
  // }
}
