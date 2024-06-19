import 'package:condotech/controllers/employer_controller.dart';
import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class EmployerRegister extends StatelessWidget {
  EmployerRegister({super.key});
  final registerEmployerController = EmployerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Paleta.bgColor,
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.question_mark),
            color: Paleta.azulEscuro,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/employers', (Route<dynamic> route) => false),
          icon: const Icon(Icons.arrow_back),
          color: Paleta.azulEscuro,
        ),
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.supervisor_account,
                  size: 85.0,
                  color: Paleta.azulEscuro,
                ),
                mediumTextBold("Prestadores de serviço"),
              ],
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smallTextBold("Nome:"),
                        TextFormField(
                          controller: registerEmployerController.controllerName,
                        ),
                        const SizedBox(height: 20),
                        smallTextBold("CPF:"),
                        TextFormField(
                          controller: registerEmployerController.controllerCpf,
                        ),
                        const SizedBox(height: 20),
                        smallTextBold("Serviço:"),
                        TextFormField(
                          controller:
                              registerEmployerController.controllerService,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            smallTextBold("Foto:"),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.image_outlined,
                                color: Paleta.azulEscuro,
                              ),
                            )
                          ],
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.circle),
                    ),
                    smallTextBold("Apartamento")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.circle),
                    ),
                    smallTextBold("Condomínio")
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Paleta.azulEscuro,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
              ),
              onPressed: () {
                registerEmployerController.createEmployer(context);
              },
              child: smallTextBold("Cadastrar", fontColor: Colors.white),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
