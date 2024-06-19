import 'package:condotech/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class CadastroUser extends StatelessWidget {
  CadastroUser({Key? key}) : super(key: key);
  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Paleta.azulEscuro,
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.question_mark),
            color: Paleta.bgColor,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/home', (Route<dynamic> route) => false),
          icon: const Icon(Icons.arrow_back),
          color: Paleta.bgColor,
        ),
        title: const Text(
          'Cadastro de Usuários',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.people,
              size: 64,
              color: Paleta.azulEscuro,
            ),
            const SizedBox(height: 8),
            Text(
              'Cadastro de Usuário',
              style: TextStyle(fontSize: 18, color: Paleta.azulEscuro),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: userController.controllerUsername,
              decoration: const InputDecoration(
                labelText: 'Nome de usuário',
                hintText: 'Digite seu nome',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: userController.controllerEmail,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu e-mail',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: userController.controllerCpf,
              decoration: const InputDecoration(
                labelText: 'CPF',
                hintText: 'Digite seu CPF',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userController.registerUser(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Paleta.azulEscuro,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                'Cadastrar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Paleta.azulEscuro,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '©️ 2023 CondoTech',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
