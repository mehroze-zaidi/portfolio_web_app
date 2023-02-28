import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/app_bar.dart';

class ScreenBody extends StatelessWidget {
   ScreenBody({Key? key, required this.child,this.showAppBar=true,this.isScrollable=true}) : super(key: key);
  final Widget child;
  bool showAppBar;
  bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar:showAppBar?  PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBar(),
      ):null,
      body: SingleChildScrollView(physics: isScrollable?const BouncingScrollPhysics(): const NeverScrollableScrollPhysics(),child: child),
    );
  }
}
