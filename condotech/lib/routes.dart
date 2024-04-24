import 'package:condotech/pages/employer_info.dart';
import 'package:condotech/pages/employer_register.dart';
import 'package:condotech/pages/employers_list.dart';
import 'package:condotech/pages/home.dart';
import 'package:condotech/pages/login.dart';
import 'package:condotech/pages/perfil.dart';
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
    GoRoute(
      path: "/profile",
      builder: (context, state) => const Perfil(),
    ),
    GoRoute(
      path: "/employer/list",
      builder: (context, state) => const EmployersList(),
    ),
    GoRoute(
      path: "/employer/info",
      builder: (context, state) => const EmployerInfo(),
    ),
    GoRoute(
      path: "/employer/register",
      builder: (context, state) => const EmployerRegister(),
    ),
  ],
);
