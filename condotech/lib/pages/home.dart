import 'package:condotech/util/color.dart';
import 'package:condotech/util/full_appbar.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        title: FullAppBar(),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
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
                      shape: const CircleBorder(),
                      foregroundColor: Paleta.lilas,
                    ),
                    onPressed: () => context.push("/profile"),
                    child: const Icon(Icons.account_circle_outlined)),
                const Text(
                    style: TextStyle(fontSize: 24, fontFamily: "Mukta"),
                    "Olá, Usuário"),
              ],
            ),
            const SizedBox(
              height: 23,
            ),

            //Dados condominio
            Container(
              margin: const EdgeInsets.only(left: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
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
                              margin: const EdgeInsets.only(left: 14, top: 14),
                              child: const Column(
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
                            const SizedBox(width: 10),
                            IconButton(
                                color: Paleta.azulEscuro,
                                onPressed: () => print("VIU A CONTA"),
                                icon: const Icon(Icons.remove_red_eye)),
                          ],
                        ),
                        const SizedBox(height: 19),
                        Container(
                          height: 29,
                          width: 182,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Paleta.lilasClaro,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                const Text(
                                    style: TextStyle(
                                        fontFamily: "Mukta",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    "Ver extrato"),
                                const Spacer(), // use Spacer
                                Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: IconButton(
                                      color: Paleta.azulEscuro,
                                      onPressed: () => print("Foi pra extrato"),
                                      icon: const Icon(Icons.arrow_right_alt)),
                                ),
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
            const SizedBox(
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
                            icon: const Icon(Icons.attach_money_outlined)),
                        const Text("Pagar")
                      ],
                    ),
                    const SizedBox(width: 21),
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
                            icon: const Icon(Icons.handshake_outlined)),
                        const Text("Reservar")
                      ],
                    ),
                    const SizedBox(width: 21),
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
                            onPressed: () => context.push("/employer/list"),
                            icon: const Icon(Icons.assignment_ind)),
                        const Text("Funcionário")
                      ],
                    ),
                    const SizedBox(width: 21),
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
                            icon: const Icon(Icons.chat)),
                        const Text("Fórum")
                      ],
                    ),
                  ],
                ),
                const SizedBox(
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
                            icon: const Icon(Icons.book)),
                        const Text("Regimento")
                      ],
                    ),
                    const SizedBox(width: 21),
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
                            icon: const Icon(Icons.group_add)),
                        const Text("Cadastro")
                      ],
                    ),
                    const SizedBox(width: 21),
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
                            icon: const Icon(Icons.note_add)),
                        const Text("NFE's")
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 39,
            ),

            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [mediumText("Calendário")],
                  ),
                ),
                Container(
                  child: TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(2023, 01, 01),
                      lastDay: DateTime.utc(2050, 01, 01)),
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
