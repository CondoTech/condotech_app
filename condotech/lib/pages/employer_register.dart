import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class EmployerRegister extends StatelessWidget {
  const EmployerRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MinAppBar(),
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
                        TextFormField(),
                        const SizedBox(height: 20),
                        smallTextBold("CPF:"),
                        TextFormField(),
                        const SizedBox(height: 20),
                        smallTextBold("Serviço:"),
                        TextFormField(),
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
              onPressed: () {},
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
