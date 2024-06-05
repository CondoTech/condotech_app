import 'package:condotech/controllers/employer_controller.dart';
import 'package:condotech/models/employer.dart';
import 'package:flutter/material.dart';

class EmployersList extends StatefulWidget {
  const EmployersList({super.key});

  @override
  State<EmployersList> createState() => _EmployersListState();
}

class _EmployersListState extends State<EmployersList> {
  EmployerController employerController = EmployerController();

  void updatedState() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    employerController.getEmployers(context);
    employerController.updateState = updatedState;
    super.initState();
  }

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
