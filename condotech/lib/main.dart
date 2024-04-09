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

void main() {
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
      home: const Home(),
    );
  }
}
