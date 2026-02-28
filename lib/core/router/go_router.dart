import 'package:dalel_app/core/router/route_names.dart';
import 'package:dalel_app/feature/on_boarding/view/on_boarding_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.onBoardingScreen,
      name: RouteNames.onBoardingScreen,
      builder: (context, state) => OnBoardingPage(),
    ),
  ],
);
