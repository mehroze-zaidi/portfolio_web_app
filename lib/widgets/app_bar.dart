import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mehroze_portfolio_flutter_web/utils/app_color.dart';
import 'package:mehroze_portfolio_flutter_web/utils/assets.dart';
import 'package:mehroze_portfolio_flutter_web/utils/constants.dart';
import 'package:mehroze_portfolio_flutter_web/widgets/inner_shadow_container.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.showCircles = 1}) : super(key: key);
   final int showCircles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            showCircles == 1 ? Asset.circles : Asset.circles2,
            scale: 1.5,
          ),
          RoundedContainerWidget(
            borderRadius: 40,
            width: 200,
            shadowColor: Colors.transparent,

            color: AppColor.appLightYellow,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(AppConstants.myGithubLink),
                    builder: (context, followLink) => InkWell(
                      onTap: followLink,
                      child: Image.asset(
                        Asset.githubIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Link(
                    uri: Uri.parse(AppConstants.myLinkedInLink),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Image.asset(
                          Asset.linkedInIcon,
                          width: 30,
                          height: 30,
                        )),
                  ),
                  Link(
                    uri: Uri.parse(AppConstants.myLinkedInLink),
                    builder: (context, followLink) => InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(AppConstants.myLinkedInLink));
                        },
                        child: Image.asset(
                          Asset.instagramIcon,
                          width: 30,
                          height: 30,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
