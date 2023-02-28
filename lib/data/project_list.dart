import 'package:mehroze_portfolio_flutter_web/model/project.dart';
import 'package:mehroze_portfolio_flutter_web/utils/assets.dart';
import 'package:mehroze_portfolio_flutter_web/utils/strings.dart';

List<Project> projects = [
  Project(
      '1',
      AppString.findoAppName,
      AppString.findoDesc,
      "https://play.google.com/store/apps/details?id=com.mehroo.findo",
      Asset.beautyFixerrLogoWeb),
  Project(
      '2',
      AppString.beautyFixerr,
      AppString.beautyFixerrDesc,
      'https://play.google.com/store/apps/details?id=com.mehroo.beauty_fixerr_customer',
      Asset.beautyFixerrLogoWeb)
];
