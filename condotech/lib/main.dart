import 'package:condotech/pages/home.dart';
import 'package:flutter/material.dart';

/*
    IMPORTANTE

    Não faça commit do arquivo main.dart
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Home(), // Altere para a página que estiver mexendo
    );
  }
}
