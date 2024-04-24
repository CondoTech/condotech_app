import 'package:condotech/pages/login.dart';
import 'package:condotech/pages/home.dart';
import 'package:flutter/cupertino.dart';

import '../pages/register.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const Login(),
    '/login': (context) => const Login(),
    '/home': (context) => const Home(),
    // '/favoritos': (context) => const FavoritosPage(),
    // '/modelo': (context) => const ModeloPage(),
    // '/column': (context) => const ColumnPage(),
    // '/colrow': (context) => const ColRowPage(),
    // '/tabbar': (context) => const TabBarPage(),
    // '/navmanual': (context) => const NavManualPage(),
  };
}
