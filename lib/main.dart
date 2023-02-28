import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:mehroze_portfolio_flutter_web/navigation/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:AppRoutes.routes.routeInformationParser,
      routerDelegate:AppRoutes.routes.routerDelegate,
      routeInformationProvider: AppRoutes.routes.routeInformationProvider,
      builder: (context, child) {
        return ResponsiveWrapper.builder(
            maxWidth: 1920,
            minWidth: 350,

            breakpoints: [
              const ResponsiveBreakpoint.resize(350, name: MOBILE,scaleFactor: .9),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET,scaleFactor: .9),
              const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP,scaleFactor: .9),
            ],

            child);
      },
    );
  }
}
