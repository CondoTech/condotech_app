import 'package:flutter/material.dart';

class EmployerInfo extends StatelessWidget {
  const EmployerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Modelo"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Eu vou fazer! by Eyshila"),
      ),
    );
  }
}