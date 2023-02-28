import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';

class RoundedContainerWidget extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double borderRadius;
  final Color? color;
  final Color? borderColor;
  final double blurRadius;
  final double borderWidth;
  final double spreadRadius;
  final Color? shadowColor;
  final bool? showBorder;
  final Offset? shadowOffset;
  final BorderRadiusGeometry? borderRadiusGeometry;
  const RoundedContainerWidget(
      {Key? key,
        this.child,
        this.width,
        this.height,
        this.borderColor = AppColor.white,
        this.color = AppColor.white,
        this.blurRadius = 15,
        this.spreadRadius = -3,
        this.borderRadius = 12,
        this.borderWidth = 1,
        this.showBorder = false,
        this.shadowOffset,
        this.shadowColor = AppColor.lightGrey3,
        this.borderRadiusGeometry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: width,
      height: height,


      decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: shadowColor!,
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
              offset: shadowOffset ?? const Offset(0, 1),
            )
          ],
          border: showBorder!
              ? Border.all(
              color: showBorder! ? borderColor! : AppColor.white,
              width: showBorder! ? borderWidth : 0)
              : null,
          borderRadius: borderRadiusGeometry ?? BorderRadius.all(Radius.circular(borderRadius))),
      child: child,
    );
  }
}
