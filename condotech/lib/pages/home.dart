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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 14, top: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      style: TextStyle(
                                          fontFamily: "Mukta",
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                      "Saldo do condomínio"),
                                  Text(
                                      style: TextStyle(
                                          fontFamily: "Mukta",
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      "R\$1000,00"),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                                color: Paleta.azulEscuro,
                                onPressed: () => print("VIU A CONTA"),
                                icon: Icon(Icons.remove_red_eye)),
                          ],
                        ),
                        SizedBox(height: 19),
                        Container(
                          height: 29,
                          width: 182,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Paleta.lilasClaro,
                          ),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 12, top: 7, bottom: 7),
                            child: Row(
                              children: [
                                Text(
                                    style: TextStyle(
                                        fontFamily: "Mukta",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    "Ver extrato"),
                                SizedBox(width: 60),
                                IconButton(
                                    color: Paleta.azulEscuro,
                                    onPressed: () => print("Foi pra extrato"),
                                    icon: Icon(Icons.arrow_right_alt)),
                              ],
                            ),
                          ),
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
