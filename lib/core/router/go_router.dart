import 'package:dalel_app/core/router/route_names.dart';
import 'package:dalel_app/feature/auth/presentation/create_account/view/create_account_page.dart';
import 'package:dalel_app/feature/auth/presentation/login/view/login_page.dart';
import 'package:dalel_app/feature/on_boarding/presentation/view/on_boarding_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.onBoardingPage,
      name: RouteNames.onBoardingPage,
      builder: (context, state) => OnBoardingPage(),
    ),
    GoRoute(
      path: RouteNames.loginPage,
      name: RouteNames.loginPage,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: RouteNames.createAccountPage,
      name: RouteNames.createAccountPage,
      builder: (context, state) => CreateAccountPage(),
    ),
  ],
);
