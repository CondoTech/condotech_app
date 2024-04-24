import 'package:condotech/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:condotech/pages/login.dart';
import 'package:condotech/pages/register.dart';
import 'package:condotech/pages/home.dart';
import 'package:condotech/pages/users_list.dart';
import 'package:condotech/pages/user_info.dart';
import 'package:condotech/pages/user_info_edit.dart';
import 'package:condotech/pages/employer_register.dart';
import 'package:condotech/pages/employers_list.dart';
import 'package:condotech/pages/employer_info.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
