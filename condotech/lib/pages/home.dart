import 'package:condotech/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                color: Paleta.azulEscuro,
                onPressed: () => print("VIU A NOTIFICAÇÃO"),
                icon: Icon(Icons.notifications)),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            IconButton(
                color: Paleta.azulEscuro,
                onPressed: () => print("PROCUROU"),
                icon: Icon(Icons.search)),
            IconButton(
                color: Paleta.azulEscuro,
                onPressed: () => print("DESLOGOU"),
                icon: Icon(Icons.logout))
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Paleta.azulEscuro,
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      shape: CircleBorder(),
                      foregroundColor: Paleta.lilas,
                    ),
                    onPressed: () => print("CONTA DO USER"),
                    child: Icon(Icons.account_circle_outlined)),
                Text(style: TextStyle(fontFamily: "Mukta"), "Olá, Usuário"),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 99,
                  width: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Paleta.lilas,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                              style:
                                  TextStyle(fontFamily: "Mukta", fontSize: 11),
                              "Saldo do condomínio"),
                          Text(
                              style:
                                  TextStyle(fontFamily: "Mukta", fontSize: 15),
                              "R\$1000,00")
                        ],
                      ),
                      IconButton(
                          color: Paleta.azulEscuro,
                          onPressed: () => print("VIU A CONTA"),
                          icon: Icon(Icons.remove_red_eye))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
