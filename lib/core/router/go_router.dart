import 'package:dalel_app/core/router/route_names.dart';
import 'package:dalel_app/feature/splash/views/spalsh_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.splashScreen,
      name: RouteNames.splashScreen,
      builder: (context, state) => SplashPage(),
    ),
  ],
);
