import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';

class InnerShadowContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color? color;
  final Color? innerShadowColor;
  final Color? dropShadowColor;
  final Offset outerOffset;
  final Offset innerOffset1;
  final Offset innerOffset2;
  final BoxConstraints? boxConstraints;
  final double? width;
  final double innerSpreadRadius;
  final double outerSpreadRadius2;
  final double innerBlurRadius;
  final double outerBlurRadius2;
  final Offset? bottomOffset;
  final Color borderColor;
  final double? height;
  final bool showBorder;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final double borderWidth;
  final Clip? clipBehaviour;
  const InnerShadowContainer(
      {Key? key,
        required this.child,
        this.showBorder=false,
        this.borderRadius = 15.0,
        this.innerBlurRadius = 5,
        this.outerBlurRadius2 = 0,
        this.innerSpreadRadius = 0,
        this.bottomOffset,
        this.color,
        this.width,
        this.innerShadowColor,
        this.outerOffset=const Offset(0, 0),
        this.innerOffset1 = const Offset(0, 0),
        this.innerOffset2 = const Offset(0, 1),
        this.outerSpreadRadius2 = 15,
        this.borderColor = Colors.white,
        this.borderWidth=1.0,
        this.dropShadowColor,
        this.boxConstraints,
        this.borderRadiusGeometry,
        this.clipBehaviour,
        this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior:clipBehaviour?? Clip.none,
      width: width,
      constraints: boxConstraints ?? BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      height: height,
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          boxShadow: [
            BoxShadow(
                color: dropShadowColor ?? AppColor.darkGrey,
                blurRadius: outerBlurRadius2,
                offset: outerOffset),
          ],
          borderRadius: borderRadiusGeometry?? BorderRadius.circular(borderRadius),
          border:showBorder?  Border.all(color: borderColor, width:borderWidth ):null),
      //clipBehavior: Clip.hardEdge,
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: innerShadowColor ?? AppColor.darkGrey,
                  offset: innerOffset1),
              BoxShadow(
                  color: color ?? Colors.white,
                  spreadRadius: innerSpreadRadius,
                  blurRadius: innerBlurRadius,
                  offset: innerOffset2),
            ],
            borderRadius: borderRadiusGeometry??BorderRadius.circular(borderRadius),

          ),
          child: child),
    );
  }
}
