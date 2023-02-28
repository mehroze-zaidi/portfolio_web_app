import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mehroze_portfolio_flutter_web/screens/home/home_screen.dart';
import 'package:mehroze_portfolio_flutter_web/screens/project_details/project_details_screen.dart';

class AppRoutes {
  static final routes = GoRouter(debugLogDiagnostics: true, routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/project-details',
      name: '/project-details',
      builder: (context, state) {
        return ProjectDetailsScreen(projectId: state.queryParams['id']!);
      },
    )
  ]);
//
// static final  routes=RouteMap(routes: {
//
//   '/':(info) =>   const MaterialPage(child: HomeScreen()),
//   '/project-details':(info) =>   MaterialPage(child: ProjectDetailsScreen(projectId:info.queryParameters['id']!)),
//
//
// });

}
