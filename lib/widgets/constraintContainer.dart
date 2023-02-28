import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ConstraintContainer extends StatelessWidget {
  const ConstraintContainer(
      {Key? key,
        required this.buildContext,
        this.width,
      this.forMobile = 0.9,
      this.forTablet = 0.7,

      this.forDesktop = 0.8, this.child})
      : super(key: key);
  final BuildContext buildContext;
  final double? width;
  final double forMobile;
  final double forTablet;

  final double forDesktop;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container( width:width?? double.infinity,
      constraints: ResponsiveWrapper.of(buildContext).equals(TABLET)
          ? BoxConstraints(
        maxWidth: MediaQuery.of(buildContext).size.width * forTablet,
      )
          : ResponsiveWrapper.of(buildContext).equals(DESKTOP)
          ? BoxConstraints(
        maxWidth: MediaQuery.of(buildContext).size.width * forDesktop,
      )

          : BoxConstraints(
          maxWidth:
          MediaQuery.of(buildContext).size.width * forMobile),child: child,);
  }
}
