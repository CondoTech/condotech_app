import 'package:condotech/util/appbar.dart';
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
            const SizedBox(height: 75),
            const Icon(Icons.supervisor_account),
            mediumTextBold("Prestadores de serviço"),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smallTextBold("Nome"),
                        TextFormField(),
                        const SizedBox(height: 20),
                        smallTextBold("CPF"),
                        TextFormField(),
                        const SizedBox(height: 20),
                        smallTextBold("Serviço"),
                        TextFormField(),
                        const SizedBox(height: 20),
                        smallTextBold("Foto"),
                        TextFormField(),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
