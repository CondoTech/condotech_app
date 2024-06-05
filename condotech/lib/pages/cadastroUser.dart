import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class CadastroUser extends StatelessWidget {
  const CadastroUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text(
          'Cadastro de Usuário',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              // Adicione aqui a lógica para a ajuda
            },
          ),
        ],
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
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu e-mail',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Adicione aqui a lógica para cadastrar o usuário
              },
              child: const Text('Cadastrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Paleta.azulEscuro,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Paleta.azulEscuro,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
