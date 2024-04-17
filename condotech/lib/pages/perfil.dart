import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MinAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(62, 50, 62, 35),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("userName"),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Text("CPF:", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("userCPF"),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("userEmail"),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Text("Senha:", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("userPassword"),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 25),
                  Text("Apartamento:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("userApt"),
                  Divider(
                    color: Colors.black,
                  ),
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
      bottomNavigationBar: footer(),
    );
  }
}
