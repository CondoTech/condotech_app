import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/information_field.dart';
import 'package:flutter/material.dart';

class EmployerInfo extends StatelessWidget {
  const EmployerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MinAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(62, 50, 62, 35),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                    SizedBox(height: 25),
                    InformationField(title: "Nome:", text: "employerName"),
                    SizedBox(height: 25),
                    InformationField(title: "CPF:", text: "employerCPF"),
                    SizedBox(height: 25),
                    InformationField(
                        title: "Serviço:", text: "employerService"),
                    SizedBox(height: 25),
                    InformationField(
                        title: "Responsável:", text: "employerResponsible"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
