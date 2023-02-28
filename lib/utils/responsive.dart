import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Responsive {
  static double responsiveWidth(BuildContext context, {double value = 1.0}) =>
      MediaQuery.of(context).size.width * value;

  static double responsiveHeight(BuildContext context, {double value = 1.0}) =>
      MediaQuery.of(context).size.height * value;

  static bool isMobile(BuildContext context) =>
      ResponsiveWrapper.of(context).equals(MOBILE);

  static bool isLessThanTablet(BuildContext context) =>
      ResponsiveWrapper.of(context).isSmallerThan(TABLET);

  static bool isTablet(BuildContext context) =>
      ResponsiveWrapper.of(context).isTablet;

  static bool isDesktop(BuildContext context) =>
      ResponsiveWrapper.of(context).isDesktop;

  static bool isTabletLg(BuildContext context) =>
      ResponsiveWrapper.of(context).equals("TABLET_LG");

  static bool is4K(BuildContext context) =>
      ResponsiveWrapper.of(context).equals("4K");

  static bool isLargerThanTablet(BuildContext context) =>
      ResponsiveWrapper.of(context).isLargerThan(TABLET);


  static bool isLargerThanDesktop(BuildContext context) =>
      ResponsiveWrapper.of(context).isLargerThan(DESKTOP);

  static bool isLessThanDesktop(BuildContext context) =>
      ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);

  static double getResponsiveValue(
      BuildContext context, var v1, var v2, var v3, var v4, var v5) {
    return ResponsiveValue(context, defaultValue: v1, valueWhen: [
          Condition.equals(name: TABLET, value: v2),
          Condition.equals(name: "TABLET_LG", value: v3),
          Condition.equals(name: DESKTOP, value: v4),
          Condition.largerThan(name: DESKTOP, value: v5),
        ]).value ??
        v1;
  }
}
