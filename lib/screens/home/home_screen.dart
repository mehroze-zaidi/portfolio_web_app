import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mehroze_portfolio_flutter_web/screens/home/widgets/profilee_pic_tile.dart';
import 'package:mehroze_portfolio_flutter_web/utils/responsive.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/utils/spacing.dart';
import 'package:mehroze_portfolio_flutter_web/utils/strings.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/button_with_trailing_icon_widget.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/constraintContainer.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/screen_body.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
      child: Center(
        child: ConstraintContainer(
          buildContext: context,
          forDesktop: .6,
          forTablet: .9,
          forMobile: 0.8,
          child: Column(
            children: [
              50.verticalSpace,
              ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                      ? ResponsiveRowColumnType.ROW
                      : ResponsiveRowColumnType.COLUMN,
                  rowCrossAxisAlignment: CrossAxisAlignment.start,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  columnSpacing: 30,
                  rowSpacing: 100,
                  children: [
                    const ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: ProfilePicTile()
                    ),
                    ResponsiveRowColumnItem(

                        rowFlex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            crossAxisAlignment:Responsive.isLargerThanDesktop(context)?CrossAxisAlignment.start:CrossAxisAlignment.center ,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppString.projects,

                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w600),
                              ),
                              30.verticalSpace,
                              SizedBox(
                                width: 300,
                                child: ButtonWithTrailingIconWidget(
                                  borderRadius: BorderRadius.circular(10),
                                  horizontalPadding: 10,
                                  btnColor: AppColor.appDarkGreen,
                                  btnClick: () {

                                    GoRouter.of(context).goNamed('/project-details',queryParams:{
                                      'id':'1'
                                    } );

                                  },
                                  btnText: AppString.findo,
                                  showImageInBtn: true,
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                              20.verticalSpace,
                              SizedBox(
                                width: 300,
                                child: ButtonWithTrailingIconWidget(
                                  borderRadius: BorderRadius.circular(10),
                                  horizontalPadding: 10,
                                  btnColor: AppColor.appDarkGreen,
                                  btnClick: () {
                                    GoRouter.of(context).goNamed('/project-details',queryParams:{
                                      'id':'2'
                                    } );

                                  },
                                  btnText: AppString.beautyFixerr,
                                  showImageInBtn: true,
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                              20.verticalSpace,
                            ],
                          ),
                        ))
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
