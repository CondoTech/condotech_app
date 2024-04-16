import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text("Perfil", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
            SizedBox(height: 25),
            Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("userName"),
            SizedBox(height: 25),
            Text("CPF:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("userCPF"),
            SizedBox(height: 25),
            Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("userEmail"),
            SizedBox(height: 25),
            Text("Senha:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("userPassword"),
            SizedBox(height: 25),
            Text("Apartamento:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("userApt"),
            SizedBox(height: 35),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Paleta.azulEscuro,
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Alterar")),
          ],
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
