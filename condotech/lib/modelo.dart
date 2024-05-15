import 'package:flutter/material.dart';

class Modelo extends StatelessWidget {
  const Modelo({super.key});

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
