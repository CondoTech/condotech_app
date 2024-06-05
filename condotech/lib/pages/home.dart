import 'package:condotech/controllers/user_controller.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/full_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UserController userController = UserController();

  void updatedState() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    userController.getUserData();
    userController.updateState = updatedState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        title: FullAppBar(context),
        backgroundColor: Paleta.bgColor,
        centerTitle: true,
        automaticallyImplyLeading: false, // Remova o botão de voltar
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
                    child: const Icon(Icons.account_circle_outlined)),
                Text(
                  style: TextStyle(fontSize: 24, fontFamily: "Mukta"),
                  'Olá, ${userController.user['email']}',
                ),
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
                            padding: EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                const Text(
                                    style: TextStyle(
                                        fontFamily: "Mukta",
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    "Ver extrato"),
                                Spacer(), // use Spacer
                                Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: IconButton(
                                      color: Paleta.azulEscuro,
                                      onPressed: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/bank',
                                        );
                                      },
                                      icon: Icon(Icons.arrow_right_alt)),
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
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/employers',
                              );
                            },
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
                        Text("FAQ")
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
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/user-register',
                              );
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/nfe',
                              );
                            },
                            icon: Icon(Icons.note_add)),
                        Text("NFE's")
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
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/users',
                              );
                            },
                            icon: Icon(Icons.person_2)),
                        Text("Usuários")
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
