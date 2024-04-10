import 'package:condotech/util/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:condotech/util/color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text("Login", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
              child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Paleta.lilas),
                width: 330,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.only(top: 66.0),
                  child: Column(
                    children: [
                      Text("Email:"),
                      SizedBox(height: 8.5),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Senha:"),
                      SizedBox(height: 8.5),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Text("Esqueci minha senha."),
                      SizedBox(height: 48),
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
                          child: Text("Entrar")),
                      SizedBox(height: 21),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "Se ainda não for cadastrado entre em contato com seu síndico.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              )
            ],
          )),
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
