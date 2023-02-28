import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/utils/assets.dart';
import 'package:mehroze_portfolio_flutter_web/utils/spacing.dart';
import 'package:mehroze_portfolio_flutter_web/utils/strings.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/custom_container.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/inner_shadow_container.dart';

class ProfilePicTile extends StatelessWidget {
  const ProfilePicTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainerWidget(

        borderRadius: 30,
        color: AppColor.secondaryColor,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(Asset.myPic,scale: 2,)),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8.0),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    15.verticalSpace,
                    Text(
                      AppString.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600),
                    ),
                    5.verticalSpace,
                    Text(
                      AppString.aboutMeDesc,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                          color: AppColor.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
