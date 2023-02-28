import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/data/project_list.dart';
import 'package:mehroze_portfolio_flutter_web/model/project.dart';
import 'package:mehroze_portfolio_flutter_web/screens/project_details/widgets/main_body_widget.dart';
import 'package:mehroze_portfolio_flutter_web/utils/responsive.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/utils/spacing.dart';
import 'package:mehroze_portfolio_flutter_web/utils/strings.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/app_bar.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/screen_body.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectDetailsScreen extends StatefulWidget {
  ProjectDetailsScreen({Key? key, required this.projectId}) : super(key: key);
  final String projectId;

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}


class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {


  @override
  void initState() {

print('init called');

    super.initState();
  }
  Project? project;
  @override
  Widget build(BuildContext context) {


    for(Project x in projects) {

      if(x.id == widget.projectId){
        project=x;
        break;
      } else{
        project=null;
      }
    }

      return ScreenBody(
        showAppBar: false,
        isScrollable: false,
        child: SizedBox(
          height: Responsive.responsiveHeight(context),
          width: double.infinity,
          child: project==null?Center(child: Text(
            AppString.noProjectAvailable,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: AppColor.white,
              fontWeight: FontWeight.w600,
            ),
          ),) : Stack(children: [
            Responsive.isMobile(context)
                ? const SizedBox()
                : Container(
                    height: Responsive.responsiveHeight(context),
                    width: 250,
                    color: AppColor.secondaryColor,
                  ),
            Responsive.isMobile(context)
                ? Align(
              alignment: Alignment.topCenter,
                  child: Stack(
                    children: [

                      Responsive.isLessThanTablet(context)? Container(width: double.maxFinite,height: Responsive.responsiveHeight(context,value: .3),color: AppColor.secondaryColor,):SizedBox(),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 100.0,horizontal: 50),
                        child: MainBodyWidget(project: project!),
                      ),

                    ],

                  ),
                )
                : Center(
                    child: Padding(
                      padding:  EdgeInsets.only(left:Responsive.isTablet(context)? 50:0),

                      child: MainBodyWidget(project: project!),
                    ),
                  ),

            const Align(
              alignment: Alignment.topCenter,
              child: CustomAppBar(
                showCircles: 2,
              ),
            )
          ]),
        ));
  }



}
