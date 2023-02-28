import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';

class ButtonWithTrailingIconWidget extends StatelessWidget {
  final String? btnText;
  final EdgeInsetsGeometry? padding;
  final Function()? btnClick;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final TextStyle? textStyle;
  final Color? btnColor;
  final Color? borderColor;
  final bool? showImageInBtn;
  final Color? shadowColor;
  final Widget? icon;
  final double? imageWidth;
  final double? imageHeight;
  final double? distanceBetweenImage;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextAlign? textAlign;
  final Color? imageColor;

     ButtonWithTrailingIconWidget(
      {Key? key,
        this.btnText,
      this.btnClick,
      this.elevation,
      this.textStyle,
      this.borderRadius,
      this.padding,
      this.btnColor = AppColor.appDarkGreen,
      this.borderColor,
      this.shadowColor = AppColor.appDarkGreen,
      this.showImageInBtn = false,
      this.icon,
      this.textAlign,
      this.imageWidth = 18,
      this.imageHeight = 18,
      this.distanceBetweenImage = 8,
      this.horizontalPadding = 0,
      this.verticalPadding = 14,
      this.imageColor = AppColor.white}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(btnColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(15),
                )),
                elevation: MaterialStateProperty.all(elevation ?? 0),
                overlayColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                splashFactory: NoSplash.splashFactory,
              ))),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: padding??const EdgeInsets.symmetric(horizontal: 10),

        ),
        onPressed: btnClick!,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: verticalPadding!),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                btnText ?? "",
                textAlign: textAlign ?? TextAlign.start,
                style: textStyle ??
                    Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: AppColor.white, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: showImageInBtn! ? distanceBetweenImage : 0,
              ),
              showImageInBtn!
                ? icon ??  const Icon(Icons.add)
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
