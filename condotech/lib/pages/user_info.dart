import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Modelo"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Comece aqui!"),
      ),
    );
  }
}