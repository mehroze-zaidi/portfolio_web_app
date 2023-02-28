import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/model/project.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/utils/assets.dart';
import 'package:mehroze_portfolio_flutter_web/utils/responsive.dart';
import 'package:mehroze_portfolio_flutter_web/utils/spacing.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/link.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: Responsive.isMobile(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        columnMainAxisSize: MainAxisSize.min,
        rowMainAxisSize: MainAxisSize.min,
        columnSpacing: 30,
        rowSpacing: 50,
        rowPadding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: SizedBox(
              // width: 350,
              // height: 350,
              child: Image.asset(
                project.image,
                scale: Responsive.isLargerThanTablet(context) ? 6 : 8,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
              rowFlex: 2,
              child: Column(
                crossAxisAlignment: Responsive.isMobile(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Responsive.isLessThanDesktop(context)
                      ? 10.verticalSpace
                      : 50.verticalSpace,
                  15.verticalSpace,
                  Text(
                    project.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: AppColor .white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  10.verticalSpace,
                  Container(
                    width: Responsive.responsiveWidth(context,
                        value: Responsive.isMobile(context) ? .6 : .2),
                    height: 1,
                    color: AppColor.white,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: Responsive.isLargerThanTablet(context)?MainAxisAlignment.start: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Available On: ',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      5.verticalSpace,
                      Link(
                        target: LinkTarget.blank,
                        builder: (context, followLink) => GestureDetector(
                            onTap: () => followLink,
                            child:
                                Image.asset(Asset.playstoreIcon, scale: 2.5,color:AppColor .white,)),
                        uri: Uri.parse(project.link),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    project.description,
                    overflow: TextOverflow.visible,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
