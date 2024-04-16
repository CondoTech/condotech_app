import 'package:condotech/util/color.dart';
import 'package:condotech/util/full_appbar.dart';
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
        title: FullAppBar(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //Infos do user
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
                Text(
                    style: TextStyle(fontSize: 24, fontFamily: "Mukta"),
                    "Olá, Usuário"),
              ],
            ),
            SizedBox(
              height: 23,
            ),

            //Dados condominio
            Container(
              margin: EdgeInsets.only(left: 17),
              child: Row(
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
                                style: TextStyle(
                                    fontFamily: "Mukta", fontSize: 11),
                                "Saldo do condomínio"),
                            Text(
                                style: TextStyle(
                                    fontFamily: "Mukta", fontSize: 15),
                                "R\$1000,00"),
                            IconButton(
                                color: Paleta.azulEscuro,
                                onPressed: () => print("VIU A CONTA"),
                                icon: Icon(Icons.remove_red_eye)),
                            Container(
                              height: 29,
                              width: 182,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Paleta.lilasClaro,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para pagar"),
                            icon: Icon(Icons.attach_money_outlined)),
                        Text("Pagar")
                      ],
                    ),
                    SizedBox(width: 21),
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para reserva"),
                            icon: Icon(Icons.handshake_outlined)),
                        Text("Reservar")
                      ],
                    ),
                    SizedBox(width: 21),
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para funcionário"),
                            icon: Icon(Icons.assignment_ind)),
                        Text("Funcionário")
                      ],
                    ),
                    SizedBox(width: 21),
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para fórum"),
                            icon: Icon(Icons.chat)),
                        Text("Fórum")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para funcionário"),
                            icon: Icon(Icons.book)),
                        Text("Regimento")
                      ],
                    ),
                    SizedBox(width: 21),
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para cadastro"),
                            icon: Icon(Icons.group_add)),
                        Text("Cadastro")
                      ],
                    ),
                    SizedBox(width: 21),
                    Column(
                      children: [
                        IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.azulEscuro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9)),
                              foregroundColor: Paleta.lilas,
                            ),
                            onPressed: () => print("Foi para cadastro"),
                            icon: Icon(Icons.note_add)),
                        Text("NFE's")
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Text(
                      style: TextStyle(fontFamily: "Mukata", fontSize: 18),
                      "Calendário")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
