import 'package:condotech/controllers/login_controller.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';

import 'package:condotech/util/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginController = LoginController();
  bool passwordObscured = true;

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
                margin: const EdgeInsets.only(top: 35.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Paleta.lilas),
                width: 330,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30), // Ajuste conforme necessário
                          child: Text(
                            "Email:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Negrito
                              fontSize: 16.0, // Tamanho da fonte
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        margin: const EdgeInsets.only(top: 8.5),
                        child: TextFormField(
                          controller: _loginController.controllerEmail,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.0,
                              top: 20.0), // Espaçamento ajustado aqui
                          child: Text(
                            "Senha:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Negrito
                              fontSize: 16.0, // Tamanho da fonte
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        margin: const EdgeInsets.only(
                            top: 8.5), // Margem superior adicionada aqui
                        child: TextFormField(
                          controller: _loginController.controllerPassword,
                          obscureText: passwordObscured,
                          onTapOutside: (tap) =>
                              FocusScope.of(context).unfocus(),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: const Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(
                                  passwordObscured
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.deepPurple),
                              onPressed: () {
                                setState(
                                    () => passwordObscured = !passwordObscured);
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 35.0), // Espaçamento ajustado aqui
                          child: Text(
                            "Esqueci minha senha",
                            style: TextStyle(
                              fontSize: 14.0, // Tamanho da fonte
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
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
                          onPressed: () => _loginController.login(context),
                          child: const Text("Entrar")),
                      const SizedBox(height: 21),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "Se ainda não for cadastrado entre em contato com seu síndico.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
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
