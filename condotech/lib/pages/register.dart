import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text(style: TextStyle(color: Colors.white), "Primeiro acesso"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Paleta.lilas),
              width: 330,
              height: 497,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Nome"),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Paleta.lilasClaro),
                    width: 260.0,
                    height: 38.0,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("CPF"),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Paleta.lilasClaro),
                    width: 260.0,
                    height: 38.0,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(textAlign: TextAlign.left, "Digite sua nova senha"),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Paleta.lilasClaro),
                    width: 260.0,
                    height: 38.0,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Digite sua senha novamente"),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Paleta.lilasClaro),
                    width: 260.0,
                    height: 38.0,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Paleta.lilasClaro,
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            side: const BorderSide(
                                color: Colors.black, width: 1)),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () => print("clicou"),
                      child: Text("Cadastrar"))
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
