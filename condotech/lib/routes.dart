import 'package:condotech/pages/home.dart';
import 'package:condotech/pages/login.dart';
import 'package:condotech/pages/register.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const Register(),
    ),
  ],
);
