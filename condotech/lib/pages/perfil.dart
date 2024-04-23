import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/information_field.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: MinAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
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
                    InformationField(title: "Nome", text: "userName"),
                    SizedBox(height: 25),
                    InformationField(title: "CPF", text: "userCPF"),
                    SizedBox(height: 25),
                    InformationField(title: "Email", text: "userEmail"),
                    SizedBox(height: 25),
                    InformationField(title: "Senha", text: "userSenha"),
                    SizedBox(height: 25),
                    InformationField(
                        title: "Apartamento", text: "userApartamento"),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Paleta.azulEscuro,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text("Alterar"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
